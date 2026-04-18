/*  ttt-tsu-driver.c - The simplest kernel module.

* Copyright (C) 2013 - 2016 Xilinx, Inc
*
*   This program is free software; you can redistribute it and/or modify
*   it under the terms of the GNU General Public License as published by
*   the Free Software Foundation; either version 2 of the License, or
*   (at your option) any later version.

*   This program is distributed in the hope that it will be useful,
*   but WITHOUT ANY WARRANTY; without even the implied warranty of
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*   GNU General Public License for more details.
*
*   You should have received a copy of the GNU General Public License along
*   with this program. If not, see <http://www.gnu.org/licenses/>.

*/
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/io.h>
#include <linux/interrupt.h>
#include <linux/of_address.h>
#include <linux/of_device.h>
#include <linux/of_platform.h>
#include <linux/platform_device.h>
#include <linux/miscdevice.h>
#include <linux/fs.h>
#include <linux/uaccess.h>


/* --- Register Offsets (Matched with Vivado IP) --- */
#define TSU_REG0_CTRL_OFFSET  0x00
#define TSU_REG1_LOW_OFFSET   0x04
#define TSU_REG2_HIGH_OFFSET  0x08
#define TSU_REG3_IRQ_OFFSET   0x0C

/* --- Bit Masks --- */
#define TSU_CTRL_START_MASK   0x01 // Bit 0: Start/Stop counter
#define TSU_CTRL_IRQ_ACK_MASK 0x04 // Bit 2: Clear Interrupt
#define TSU_IRQ_TRIGGER_MASK  0x01 // Bit 0: Trigger Soft-IRQ

/* Standard module information, edit as appropriate */
MODULE_LICENSE("GPL");
MODULE_AUTHOR
	("Talha Turac");
MODULE_DESCRIPTION
	("ttt-tsu-driver - 64-bit AXI Hardware Timestamp Unit Driver with ftrace integration");

#define DRIVER_NAME "ttt-tsu-driver"

/* Simple example of how to receive command line parameters to your module.
   Delete if you don't need them */
unsigned myint = 0xdeadbeef;
char *mystr = "default";

module_param(myint, int, S_IRUGO);
module_param(mystr, charp, S_IRUGO);

struct ttt_tsu_driver_local {
	int irq;
	unsigned long mem_start;
	unsigned long mem_end;
	void __iomem *base_addr;
};

/* Global pointer to local structure for miscdevice file operations */
static struct ttt_tsu_driver_local *tsu_local_ptr = NULL;

/* --------------------------------------------------------------------------
 * INTERRUPT SERVICE ROUTINE (ISR) - The heart of ftrace integration
 * -------------------------------------------------------------------------- */

static irqreturn_t ttt_tsu_driver_irq(int irq, void *lp)
{
	 struct ttt_tsu_driver_local *local = (struct ttt_tsu_driver_local *)lp;
	 u32 tsu_low, tsu_high;
	 u64 full_timestamp;
 
	 /* 1. Read the 64-bit hardware timestamp from AXI registers */
	 tsu_low = ioread32(local->base_addr + TSU_REG1_LOW_OFFSET);
	 tsu_high = ioread32(local->base_addr + TSU_REG2_HIGH_OFFSET);
	 full_timestamp = ((u64)tsu_high << 32) | tsu_low;
 
	 /* 2. Log directly to kernel ftrace ring buffer. This is extremely fast! */
	 trace_printk("TSU_EVENT: Hardware IRQ triggered! Timestamp: %llu\n", full_timestamp);
 
	 /* 3. Acknowledge and clear the interrupt in the hardware IP core */
	 iowrite32(TSU_CTRL_IRQ_ACK_MASK, local->base_addr + TSU_REG0_CTRL_OFFSET);
 
	 return IRQ_HANDLED;
}

/* --------------------------------------------------------------------------
 * FILE OPERATIONS (User-Space Interface)
 * -------------------------------------------------------------------------- */

 /* Read the 64-bit counter value as a string (compatible with our previous C test code) */
static ssize_t tsu_dev_read(struct file *file, char __user *buf, size_t count, loff_t *ppos)
{
    u32 tsu_low, tsu_high;
    u64 full_timestamp;
    char kbuf[32];
    int len;

    if (!tsu_local_ptr || !tsu_local_ptr->base_addr)
        return -ENODEV;

    /* Read current hardware counter */
    tsu_low = ioread32(tsu_local_ptr->base_addr + TSU_REG1_LOW_OFFSET);
    tsu_high = ioread32(tsu_local_ptr->base_addr + TSU_REG2_HIGH_OFFSET);
    full_timestamp = ((u64)tsu_high << 32) | tsu_low;

    /* Convert integer to string for easy reading from user-space */
    len = snprintf(kbuf, sizeof(kbuf), "%llu\n", full_timestamp);

    if (*ppos >= len)
        return 0; /* EOF */

    /* Copy data from kernel space to user space */
    if (copy_to_user(buf, kbuf, len))
        return -EFAULT;

    *ppos += len;
    return len;
}

/* Write command to control the IP Core from user-space */
static ssize_t tsu_dev_write(struct file *file, const char __user *buf, size_t count, loff_t *ppos)
{
    char kbuf[2];

    if (!tsu_local_ptr || !tsu_local_ptr->base_addr)
        return -ENODEV;

    if (copy_from_user(kbuf, buf, 1))
        return -EFAULT;

    if (kbuf[0] == '1') {
        /* Start Counter */
        iowrite32(TSU_CTRL_START_MASK, tsu_local_ptr->base_addr + TSU_REG0_CTRL_OFFSET);
        pr_info("TSU: Hardware Counter Started.\n");
    } 
    else if (kbuf[0] == '0') {
        /* Stop Counter */
        iowrite32(0x00, tsu_local_ptr->base_addr + TSU_REG0_CTRL_OFFSET);
        pr_info("TSU: Hardware Counter Stopped.\n");
    }
    else if (kbuf[0] == 't' || kbuf[0] == 'T') {
        /* Trigger Soft-IRQ for testing ftrace */
        iowrite32(TSU_IRQ_TRIGGER_MASK, tsu_local_ptr->base_addr + TSU_REG3_IRQ_OFFSET);
        pr_info("TSU: Soft-IRQ Triggered from User Space.\n");
    }

    return count;
}

static const struct file_operations tsu_fops = {
    .owner   = THIS_MODULE,
    .read    = tsu_dev_read,
    .write   = tsu_dev_write,
};

static struct miscdevice tsu_misc_device = {
    .minor = MISC_DYNAMIC_MINOR,
    .name  = "ttt_tsu_device", /* Will appear as /dev/ttt_tsu_device */
    .fops  = &tsu_fops,
};


/* --------------------------------------------------------------------------
 * PROBE & REMOVE FUNCTIONS
 * -------------------------------------------------------------------------- */

 static int ttt_tsu_driver_probe(struct platform_device *pdev)
 {
	struct resource *r_irq;
	struct resource *r_mem;
	struct device *dev = &pdev->dev;
	struct ttt_tsu_driver_local *lp = NULL;
	int rc = 0;
 
	dev_info(dev, "Probing custom TSU driver...\n");
 
	/* 1. Allocate memory for device local structure */
	lp = devm_kmalloc(dev, sizeof(struct ttt_tsu_driver_local), GFP_KERNEL);
	if (!lp) return -ENOMEM;
	dev_set_drvdata(dev, lp);
 
	/* 2. Get and map I/O memory resources */
	r_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	lp->base_addr = devm_ioremap_resource(dev, r_mem);
	if (IS_ERR(lp->base_addr)) return PTR_ERR(lp->base_addr);
	 
	lp->mem_start = r_mem->start;
	lp->mem_end = r_mem->end;
 
	/* 3. Get IRQ resource and request interrupt */
	r_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
	if (!r_irq) {
		dev_err(dev, "No IRQ found in Device Tree!\n");
		return -ENODEV;
	}
	lp->irq = r_irq->start;
	rc = devm_request_irq(dev, lp->irq, ttt_tsu_driver_irq, 0, DRIVER_NAME, lp);
	if (rc) {
		dev_err(dev, "Could not allocate interrupt %d\n", lp->irq);
		return rc;
	}
 
	/* 4. Register Misc Device for user-space access */
	tsu_local_ptr = lp; // Save to global pointer for file ops
	rc = misc_register(&tsu_misc_device);
	if (rc) {
		dev_err(dev, "Failed to register misc device\n");
		return rc;
	}
 
	dev_info(dev, "TSU Driver Probed: mem=0x%08x, irq=%d, misc=/dev/%s\n",
		(unsigned int __force)lp->mem_start, lp->irq, tsu_misc_device.name);
 
	return 0;
 }

static int ttt_tsu_driver_remove(struct platform_device *pdev)
{
	/* Stop the hardware counter before removing module */
	if (tsu_local_ptr && tsu_local_ptr->base_addr) {
		iowrite32(0x00, tsu_local_ptr->base_addr + TSU_REG0_CTRL_OFFSET);
	}
 
	misc_deregister(&tsu_misc_device);
	tsu_local_ptr = NULL;
	dev_info(&pdev->dev, "TSU Driver Removed.\n");
	return 0;
}

/* Match the exact compatible string defined in system-user.dtsi */
#ifdef CONFIG_OF
static struct of_device_id ttt_tsu_driver_of_match[] = {
    { .compatible = "talha,ttt-tsu-driver", },
    { /* end of list */ },
};
MODULE_DEVICE_TABLE(of, ttt_tsu_driver_of_match);
#else
# define ttt_tsu_driver_of_match NULL
#endif


static struct platform_driver ttt_tsu_driver_driver = {
	.driver = {
		.name = DRIVER_NAME,
		.owner = THIS_MODULE,
		.of_match_table	= ttt_tsu_driver_of_match,
	},
	.probe		= ttt_tsu_driver_probe,
	.remove		= ttt_tsu_driver_remove,
};

/* --------------------------------------------------------------------------
 * MODULE INITIALIZATION & EXIT
 * -------------------------------------------------------------------------- */

/**
 * ttt_tsu_driver_init() - Module entry point.
 * * This function is executed when the kernel module is loaded (e.g., via insmod or 
 * automatically during boot). Its primary role is to register our custom driver 
 * with the Linux Platform Bus subsystem. 
 * * Once registered, the kernel will scan the Device Tree. If it finds a hardware 
 * node with a matching "compatible" string ("talha,ttt-tsu-driver"), it will 
 * automatically execute our probe() function.
 * * Return: 0 on successful registration, negative error code otherwise.
 */
 static int __init ttt_tsu_driver_init(void)
 {
	 pr_info("TSU: Loading 64-bit Hardware Timestamp Unit Driver...\n");
	 
	 /* Register the platform driver structure with the kernel */
	 return platform_driver_register(&ttt_tsu_driver_driver);
 }
 
 /**
  * ttt_tsu_driver_exit() - Module exit point.
  * * This function is executed when the kernel module is removed (e.g., via rmmod).
  * It unregisters the driver from the Platform Bus. This action automatically 
  * triggers our remove() function, ensuring that all allocated resources 
  * (I/O memory, IRQs, misc devices) are safely released before the driver 
  * is completely detached from the kernel.
  */
 static void __exit ttt_tsu_driver_exit(void)
 {
	 /* Unregister the platform driver to initiate cleanup */
	 platform_driver_unregister(&ttt_tsu_driver_driver);
	 
	 pr_info("TSU: 64-bit Hardware Timestamp Unit Driver unloaded safely.\n");
 }
 
 /* Macros that notify the kernel which functions to call at startup and shutdown */
 module_init(ttt_tsu_driver_init);
 module_exit(ttt_tsu_driver_exit);
