-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Sun Apr 12 18:52:49 2026
-- Host        : talha running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/talha/Desktop/github-repos/zynqmp-tsu-linux-project/vivado-project/hw-design/zynqmp-hw-timestamp-unit.gen/sources_1/bd/block_design/ip/block_design_axi_tsu_64bit_0_0/block_design_axi_tsu_64bit_0_0_sim_netlist.vhdl
-- Design      : block_design_axi_tsu_64bit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_axi_tsu_64bit_0_0_axi_tsu_64bit_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    irq : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_axi_tsu_64bit_0_0_axi_tsu_64bit_v1_0_S00_AXI : entity is "axi_tsu_64bit_v1_0_S00_AXI";
end block_design_axi_tsu_64bit_0_0_axi_tsu_64bit_v1_0_S00_AXI;

architecture STRUCTURE of block_design_axi_tsu_64bit_0_0_axi_tsu_64bit_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^irq\ : STD_LOGIC;
  signal irq_status_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg0[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  signal \tsu_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal tsu_counter_reg : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \tsu_counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \tsu_counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \tsu_counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \tsu_counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \tsu_counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \tsu_counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \tsu_counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \tsu_counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \tsu_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \tsu_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \tsu_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \tsu_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \tsu_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \tsu_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \tsu_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \tsu_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \tsu_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \tsu_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \tsu_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \tsu_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \tsu_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \tsu_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \tsu_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \tsu_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \tsu_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \tsu_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \tsu_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \tsu_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \tsu_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \tsu_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \tsu_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \tsu_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \tsu_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \tsu_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \tsu_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \tsu_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \tsu_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \tsu_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \tsu_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \tsu_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \tsu_counter_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \tsu_counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \tsu_counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \tsu_counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \tsu_counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \tsu_counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \tsu_counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \tsu_counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \tsu_counter_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \tsu_counter_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \tsu_counter_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \tsu_counter_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \tsu_counter_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \tsu_counter_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \tsu_counter_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \tsu_counter_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \tsu_counter_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \tsu_counter_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \tsu_counter_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \tsu_counter_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \tsu_counter_reg[36]_i_1_n_4\ : STD_LOGIC;
  signal \tsu_counter_reg[36]_i_1_n_5\ : STD_LOGIC;
  signal \tsu_counter_reg[36]_i_1_n_6\ : STD_LOGIC;
  signal \tsu_counter_reg[36]_i_1_n_7\ : STD_LOGIC;
  signal \tsu_counter_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \tsu_counter_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \tsu_counter_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \tsu_counter_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \tsu_counter_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \tsu_counter_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \tsu_counter_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \tsu_counter_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \tsu_counter_reg[44]_i_1_n_0\ : STD_LOGIC;
  signal \tsu_counter_reg[44]_i_1_n_1\ : STD_LOGIC;
  signal \tsu_counter_reg[44]_i_1_n_2\ : STD_LOGIC;
  signal \tsu_counter_reg[44]_i_1_n_3\ : STD_LOGIC;
  signal \tsu_counter_reg[44]_i_1_n_4\ : STD_LOGIC;
  signal \tsu_counter_reg[44]_i_1_n_5\ : STD_LOGIC;
  signal \tsu_counter_reg[44]_i_1_n_6\ : STD_LOGIC;
  signal \tsu_counter_reg[44]_i_1_n_7\ : STD_LOGIC;
  signal \tsu_counter_reg[48]_i_1_n_0\ : STD_LOGIC;
  signal \tsu_counter_reg[48]_i_1_n_1\ : STD_LOGIC;
  signal \tsu_counter_reg[48]_i_1_n_2\ : STD_LOGIC;
  signal \tsu_counter_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \tsu_counter_reg[48]_i_1_n_4\ : STD_LOGIC;
  signal \tsu_counter_reg[48]_i_1_n_5\ : STD_LOGIC;
  signal \tsu_counter_reg[48]_i_1_n_6\ : STD_LOGIC;
  signal \tsu_counter_reg[48]_i_1_n_7\ : STD_LOGIC;
  signal \tsu_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \tsu_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \tsu_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \tsu_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \tsu_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \tsu_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \tsu_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \tsu_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \tsu_counter_reg[52]_i_1_n_0\ : STD_LOGIC;
  signal \tsu_counter_reg[52]_i_1_n_1\ : STD_LOGIC;
  signal \tsu_counter_reg[52]_i_1_n_2\ : STD_LOGIC;
  signal \tsu_counter_reg[52]_i_1_n_3\ : STD_LOGIC;
  signal \tsu_counter_reg[52]_i_1_n_4\ : STD_LOGIC;
  signal \tsu_counter_reg[52]_i_1_n_5\ : STD_LOGIC;
  signal \tsu_counter_reg[52]_i_1_n_6\ : STD_LOGIC;
  signal \tsu_counter_reg[52]_i_1_n_7\ : STD_LOGIC;
  signal \tsu_counter_reg[56]_i_1_n_0\ : STD_LOGIC;
  signal \tsu_counter_reg[56]_i_1_n_1\ : STD_LOGIC;
  signal \tsu_counter_reg[56]_i_1_n_2\ : STD_LOGIC;
  signal \tsu_counter_reg[56]_i_1_n_3\ : STD_LOGIC;
  signal \tsu_counter_reg[56]_i_1_n_4\ : STD_LOGIC;
  signal \tsu_counter_reg[56]_i_1_n_5\ : STD_LOGIC;
  signal \tsu_counter_reg[56]_i_1_n_6\ : STD_LOGIC;
  signal \tsu_counter_reg[56]_i_1_n_7\ : STD_LOGIC;
  signal \tsu_counter_reg[60]_i_1_n_1\ : STD_LOGIC;
  signal \tsu_counter_reg[60]_i_1_n_2\ : STD_LOGIC;
  signal \tsu_counter_reg[60]_i_1_n_3\ : STD_LOGIC;
  signal \tsu_counter_reg[60]_i_1_n_4\ : STD_LOGIC;
  signal \tsu_counter_reg[60]_i_1_n_5\ : STD_LOGIC;
  signal \tsu_counter_reg[60]_i_1_n_6\ : STD_LOGIC;
  signal \tsu_counter_reg[60]_i_1_n_7\ : STD_LOGIC;
  signal \tsu_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \tsu_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \tsu_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \tsu_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \tsu_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \tsu_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \tsu_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \tsu_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_tsu_counter_reg[60]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \tsu_counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tsu_counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tsu_counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tsu_counter_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tsu_counter_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tsu_counter_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tsu_counter_reg[32]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tsu_counter_reg[36]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tsu_counter_reg[40]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tsu_counter_reg[44]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tsu_counter_reg[48]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tsu_counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tsu_counter_reg[52]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tsu_counter_reg[56]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tsu_counter_reg[60]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tsu_counter_reg[8]_i_1\ : label is 11;
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  irq <= \^irq\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => clear
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => clear
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => clear
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => clear
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => clear
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => clear
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => clear
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => clear
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => tsu_counter_reg(0),
      I2 => axi_araddr(2),
      I3 => tsu_counter_reg(32),
      I4 => axi_araddr(3),
      I5 => slv_reg0(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => tsu_counter_reg(10),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(42),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => tsu_counter_reg(11),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(43),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => tsu_counter_reg(12),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(44),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => tsu_counter_reg(13),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(45),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => tsu_counter_reg(14),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(46),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => tsu_counter_reg(15),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(47),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => tsu_counter_reg(16),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(48),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => tsu_counter_reg(17),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(49),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => tsu_counter_reg(18),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(50),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => tsu_counter_reg(19),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(51),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => tsu_counter_reg(1),
      I2 => axi_araddr(2),
      I3 => tsu_counter_reg(33),
      I4 => axi_araddr(3),
      I5 => slv_reg0(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => tsu_counter_reg(20),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(52),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => tsu_counter_reg(21),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(53),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => tsu_counter_reg(22),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(54),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => tsu_counter_reg(23),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(55),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => tsu_counter_reg(24),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(56),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => tsu_counter_reg(25),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(57),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => tsu_counter_reg(26),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(58),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => tsu_counter_reg(27),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(59),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => tsu_counter_reg(28),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(60),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => tsu_counter_reg(29),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(61),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => tsu_counter_reg(2),
      I2 => axi_araddr(2),
      I3 => tsu_counter_reg(34),
      I4 => axi_araddr(3),
      I5 => \^irq\,
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => tsu_counter_reg(30),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(62),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => tsu_counter_reg(31),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(63),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => tsu_counter_reg(3),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(35),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => tsu_counter_reg(4),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(36),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => tsu_counter_reg(5),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(37),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => tsu_counter_reg(6),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(38),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => tsu_counter_reg(7),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(39),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => tsu_counter_reg(8),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(40),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => tsu_counter_reg(9),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => tsu_counter_reg(41),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => clear
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => clear
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => clear
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => clear
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => clear
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => clear
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => clear
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => clear
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => clear
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => clear
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => clear
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => clear
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => clear
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => clear
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => clear
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => clear
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => clear
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => clear
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => clear
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => clear
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => clear
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => clear
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => clear
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => clear
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => clear
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => clear
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => clear
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => clear
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => clear
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => clear
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => clear
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => clear
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => clear
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => clear
    );
irq_status_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => clear
    );
irq_status_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF3F88000000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg_wren__2\,
      I2 => s00_axi_wdata(2),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \^irq\,
      O => irq_status_i_2_n_0
    );
irq_status_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
irq_status_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => irq_status_i_2_n_0,
      Q => \^irq\,
      R => clear
    );
\slv_reg0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg_wren__2\,
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => s00_axi_wstrb(0),
      I5 => slv_reg0(0),
      O => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \slv_reg_wren__2\,
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => s00_axi_wstrb(0),
      I5 => slv_reg0(1),
      O => \slv_reg0[1]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg0[0]_i_1_n_0\,
      Q => slv_reg0(0),
      R => clear
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg0[1]_i_1_n_0\,
      Q => slv_reg0(1),
      R => clear
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => clear
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => clear
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => clear
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => clear
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => clear
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => clear
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => clear
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => clear
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => clear
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => clear
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => clear
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => clear
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => clear
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => clear
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => clear
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => clear
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => clear
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => clear
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => clear
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => clear
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => clear
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => clear
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => clear
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => clear
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => clear
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => clear
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => clear
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => clear
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => clear
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => clear
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => clear
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => clear
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => \slv_reg_rden__0\
    );
\tsu_counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tsu_counter_reg(0),
      O => \tsu_counter[0]_i_2_n_0\
    );
\tsu_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[0]_i_1_n_7\,
      Q => tsu_counter_reg(0),
      R => clear
    );
\tsu_counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tsu_counter_reg[0]_i_1_n_0\,
      CO(2) => \tsu_counter_reg[0]_i_1_n_1\,
      CO(1) => \tsu_counter_reg[0]_i_1_n_2\,
      CO(0) => \tsu_counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \tsu_counter_reg[0]_i_1_n_4\,
      O(2) => \tsu_counter_reg[0]_i_1_n_5\,
      O(1) => \tsu_counter_reg[0]_i_1_n_6\,
      O(0) => \tsu_counter_reg[0]_i_1_n_7\,
      S(3 downto 1) => tsu_counter_reg(3 downto 1),
      S(0) => \tsu_counter[0]_i_2_n_0\
    );
\tsu_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[8]_i_1_n_5\,
      Q => tsu_counter_reg(10),
      R => clear
    );
\tsu_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[8]_i_1_n_4\,
      Q => tsu_counter_reg(11),
      R => clear
    );
\tsu_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[12]_i_1_n_7\,
      Q => tsu_counter_reg(12),
      R => clear
    );
\tsu_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsu_counter_reg[8]_i_1_n_0\,
      CO(3) => \tsu_counter_reg[12]_i_1_n_0\,
      CO(2) => \tsu_counter_reg[12]_i_1_n_1\,
      CO(1) => \tsu_counter_reg[12]_i_1_n_2\,
      CO(0) => \tsu_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsu_counter_reg[12]_i_1_n_4\,
      O(2) => \tsu_counter_reg[12]_i_1_n_5\,
      O(1) => \tsu_counter_reg[12]_i_1_n_6\,
      O(0) => \tsu_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => tsu_counter_reg(15 downto 12)
    );
\tsu_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[12]_i_1_n_6\,
      Q => tsu_counter_reg(13),
      R => clear
    );
\tsu_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[12]_i_1_n_5\,
      Q => tsu_counter_reg(14),
      R => clear
    );
\tsu_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[12]_i_1_n_4\,
      Q => tsu_counter_reg(15),
      R => clear
    );
\tsu_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[16]_i_1_n_7\,
      Q => tsu_counter_reg(16),
      R => clear
    );
\tsu_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsu_counter_reg[12]_i_1_n_0\,
      CO(3) => \tsu_counter_reg[16]_i_1_n_0\,
      CO(2) => \tsu_counter_reg[16]_i_1_n_1\,
      CO(1) => \tsu_counter_reg[16]_i_1_n_2\,
      CO(0) => \tsu_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsu_counter_reg[16]_i_1_n_4\,
      O(2) => \tsu_counter_reg[16]_i_1_n_5\,
      O(1) => \tsu_counter_reg[16]_i_1_n_6\,
      O(0) => \tsu_counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => tsu_counter_reg(19 downto 16)
    );
\tsu_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[16]_i_1_n_6\,
      Q => tsu_counter_reg(17),
      R => clear
    );
\tsu_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[16]_i_1_n_5\,
      Q => tsu_counter_reg(18),
      R => clear
    );
\tsu_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[16]_i_1_n_4\,
      Q => tsu_counter_reg(19),
      R => clear
    );
\tsu_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[0]_i_1_n_6\,
      Q => tsu_counter_reg(1),
      R => clear
    );
\tsu_counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[20]_i_1_n_7\,
      Q => tsu_counter_reg(20),
      R => clear
    );
\tsu_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsu_counter_reg[16]_i_1_n_0\,
      CO(3) => \tsu_counter_reg[20]_i_1_n_0\,
      CO(2) => \tsu_counter_reg[20]_i_1_n_1\,
      CO(1) => \tsu_counter_reg[20]_i_1_n_2\,
      CO(0) => \tsu_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsu_counter_reg[20]_i_1_n_4\,
      O(2) => \tsu_counter_reg[20]_i_1_n_5\,
      O(1) => \tsu_counter_reg[20]_i_1_n_6\,
      O(0) => \tsu_counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => tsu_counter_reg(23 downto 20)
    );
\tsu_counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[20]_i_1_n_6\,
      Q => tsu_counter_reg(21),
      R => clear
    );
\tsu_counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[20]_i_1_n_5\,
      Q => tsu_counter_reg(22),
      R => clear
    );
\tsu_counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[20]_i_1_n_4\,
      Q => tsu_counter_reg(23),
      R => clear
    );
\tsu_counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[24]_i_1_n_7\,
      Q => tsu_counter_reg(24),
      R => clear
    );
\tsu_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsu_counter_reg[20]_i_1_n_0\,
      CO(3) => \tsu_counter_reg[24]_i_1_n_0\,
      CO(2) => \tsu_counter_reg[24]_i_1_n_1\,
      CO(1) => \tsu_counter_reg[24]_i_1_n_2\,
      CO(0) => \tsu_counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsu_counter_reg[24]_i_1_n_4\,
      O(2) => \tsu_counter_reg[24]_i_1_n_5\,
      O(1) => \tsu_counter_reg[24]_i_1_n_6\,
      O(0) => \tsu_counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => tsu_counter_reg(27 downto 24)
    );
\tsu_counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[24]_i_1_n_6\,
      Q => tsu_counter_reg(25),
      R => clear
    );
\tsu_counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[24]_i_1_n_5\,
      Q => tsu_counter_reg(26),
      R => clear
    );
\tsu_counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[24]_i_1_n_4\,
      Q => tsu_counter_reg(27),
      R => clear
    );
\tsu_counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[28]_i_1_n_7\,
      Q => tsu_counter_reg(28),
      R => clear
    );
\tsu_counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsu_counter_reg[24]_i_1_n_0\,
      CO(3) => \tsu_counter_reg[28]_i_1_n_0\,
      CO(2) => \tsu_counter_reg[28]_i_1_n_1\,
      CO(1) => \tsu_counter_reg[28]_i_1_n_2\,
      CO(0) => \tsu_counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsu_counter_reg[28]_i_1_n_4\,
      O(2) => \tsu_counter_reg[28]_i_1_n_5\,
      O(1) => \tsu_counter_reg[28]_i_1_n_6\,
      O(0) => \tsu_counter_reg[28]_i_1_n_7\,
      S(3 downto 0) => tsu_counter_reg(31 downto 28)
    );
\tsu_counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[28]_i_1_n_6\,
      Q => tsu_counter_reg(29),
      R => clear
    );
\tsu_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[0]_i_1_n_5\,
      Q => tsu_counter_reg(2),
      R => clear
    );
\tsu_counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[28]_i_1_n_5\,
      Q => tsu_counter_reg(30),
      R => clear
    );
\tsu_counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[28]_i_1_n_4\,
      Q => tsu_counter_reg(31),
      R => clear
    );
\tsu_counter_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[32]_i_1_n_7\,
      Q => tsu_counter_reg(32),
      R => clear
    );
\tsu_counter_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsu_counter_reg[28]_i_1_n_0\,
      CO(3) => \tsu_counter_reg[32]_i_1_n_0\,
      CO(2) => \tsu_counter_reg[32]_i_1_n_1\,
      CO(1) => \tsu_counter_reg[32]_i_1_n_2\,
      CO(0) => \tsu_counter_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsu_counter_reg[32]_i_1_n_4\,
      O(2) => \tsu_counter_reg[32]_i_1_n_5\,
      O(1) => \tsu_counter_reg[32]_i_1_n_6\,
      O(0) => \tsu_counter_reg[32]_i_1_n_7\,
      S(3 downto 0) => tsu_counter_reg(35 downto 32)
    );
\tsu_counter_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[32]_i_1_n_6\,
      Q => tsu_counter_reg(33),
      R => clear
    );
\tsu_counter_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[32]_i_1_n_5\,
      Q => tsu_counter_reg(34),
      R => clear
    );
\tsu_counter_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[32]_i_1_n_4\,
      Q => tsu_counter_reg(35),
      R => clear
    );
\tsu_counter_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[36]_i_1_n_7\,
      Q => tsu_counter_reg(36),
      R => clear
    );
\tsu_counter_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsu_counter_reg[32]_i_1_n_0\,
      CO(3) => \tsu_counter_reg[36]_i_1_n_0\,
      CO(2) => \tsu_counter_reg[36]_i_1_n_1\,
      CO(1) => \tsu_counter_reg[36]_i_1_n_2\,
      CO(0) => \tsu_counter_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsu_counter_reg[36]_i_1_n_4\,
      O(2) => \tsu_counter_reg[36]_i_1_n_5\,
      O(1) => \tsu_counter_reg[36]_i_1_n_6\,
      O(0) => \tsu_counter_reg[36]_i_1_n_7\,
      S(3 downto 0) => tsu_counter_reg(39 downto 36)
    );
\tsu_counter_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[36]_i_1_n_6\,
      Q => tsu_counter_reg(37),
      R => clear
    );
\tsu_counter_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[36]_i_1_n_5\,
      Q => tsu_counter_reg(38),
      R => clear
    );
\tsu_counter_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[36]_i_1_n_4\,
      Q => tsu_counter_reg(39),
      R => clear
    );
\tsu_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[0]_i_1_n_4\,
      Q => tsu_counter_reg(3),
      R => clear
    );
\tsu_counter_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[40]_i_1_n_7\,
      Q => tsu_counter_reg(40),
      R => clear
    );
\tsu_counter_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsu_counter_reg[36]_i_1_n_0\,
      CO(3) => \tsu_counter_reg[40]_i_1_n_0\,
      CO(2) => \tsu_counter_reg[40]_i_1_n_1\,
      CO(1) => \tsu_counter_reg[40]_i_1_n_2\,
      CO(0) => \tsu_counter_reg[40]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsu_counter_reg[40]_i_1_n_4\,
      O(2) => \tsu_counter_reg[40]_i_1_n_5\,
      O(1) => \tsu_counter_reg[40]_i_1_n_6\,
      O(0) => \tsu_counter_reg[40]_i_1_n_7\,
      S(3 downto 0) => tsu_counter_reg(43 downto 40)
    );
\tsu_counter_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[40]_i_1_n_6\,
      Q => tsu_counter_reg(41),
      R => clear
    );
\tsu_counter_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[40]_i_1_n_5\,
      Q => tsu_counter_reg(42),
      R => clear
    );
\tsu_counter_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[40]_i_1_n_4\,
      Q => tsu_counter_reg(43),
      R => clear
    );
\tsu_counter_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[44]_i_1_n_7\,
      Q => tsu_counter_reg(44),
      R => clear
    );
\tsu_counter_reg[44]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsu_counter_reg[40]_i_1_n_0\,
      CO(3) => \tsu_counter_reg[44]_i_1_n_0\,
      CO(2) => \tsu_counter_reg[44]_i_1_n_1\,
      CO(1) => \tsu_counter_reg[44]_i_1_n_2\,
      CO(0) => \tsu_counter_reg[44]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsu_counter_reg[44]_i_1_n_4\,
      O(2) => \tsu_counter_reg[44]_i_1_n_5\,
      O(1) => \tsu_counter_reg[44]_i_1_n_6\,
      O(0) => \tsu_counter_reg[44]_i_1_n_7\,
      S(3 downto 0) => tsu_counter_reg(47 downto 44)
    );
\tsu_counter_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[44]_i_1_n_6\,
      Q => tsu_counter_reg(45),
      R => clear
    );
\tsu_counter_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[44]_i_1_n_5\,
      Q => tsu_counter_reg(46),
      R => clear
    );
\tsu_counter_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[44]_i_1_n_4\,
      Q => tsu_counter_reg(47),
      R => clear
    );
\tsu_counter_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[48]_i_1_n_7\,
      Q => tsu_counter_reg(48),
      R => clear
    );
\tsu_counter_reg[48]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsu_counter_reg[44]_i_1_n_0\,
      CO(3) => \tsu_counter_reg[48]_i_1_n_0\,
      CO(2) => \tsu_counter_reg[48]_i_1_n_1\,
      CO(1) => \tsu_counter_reg[48]_i_1_n_2\,
      CO(0) => \tsu_counter_reg[48]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsu_counter_reg[48]_i_1_n_4\,
      O(2) => \tsu_counter_reg[48]_i_1_n_5\,
      O(1) => \tsu_counter_reg[48]_i_1_n_6\,
      O(0) => \tsu_counter_reg[48]_i_1_n_7\,
      S(3 downto 0) => tsu_counter_reg(51 downto 48)
    );
\tsu_counter_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[48]_i_1_n_6\,
      Q => tsu_counter_reg(49),
      R => clear
    );
\tsu_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[4]_i_1_n_7\,
      Q => tsu_counter_reg(4),
      R => clear
    );
\tsu_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsu_counter_reg[0]_i_1_n_0\,
      CO(3) => \tsu_counter_reg[4]_i_1_n_0\,
      CO(2) => \tsu_counter_reg[4]_i_1_n_1\,
      CO(1) => \tsu_counter_reg[4]_i_1_n_2\,
      CO(0) => \tsu_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsu_counter_reg[4]_i_1_n_4\,
      O(2) => \tsu_counter_reg[4]_i_1_n_5\,
      O(1) => \tsu_counter_reg[4]_i_1_n_6\,
      O(0) => \tsu_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => tsu_counter_reg(7 downto 4)
    );
\tsu_counter_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[48]_i_1_n_5\,
      Q => tsu_counter_reg(50),
      R => clear
    );
\tsu_counter_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[48]_i_1_n_4\,
      Q => tsu_counter_reg(51),
      R => clear
    );
\tsu_counter_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[52]_i_1_n_7\,
      Q => tsu_counter_reg(52),
      R => clear
    );
\tsu_counter_reg[52]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsu_counter_reg[48]_i_1_n_0\,
      CO(3) => \tsu_counter_reg[52]_i_1_n_0\,
      CO(2) => \tsu_counter_reg[52]_i_1_n_1\,
      CO(1) => \tsu_counter_reg[52]_i_1_n_2\,
      CO(0) => \tsu_counter_reg[52]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsu_counter_reg[52]_i_1_n_4\,
      O(2) => \tsu_counter_reg[52]_i_1_n_5\,
      O(1) => \tsu_counter_reg[52]_i_1_n_6\,
      O(0) => \tsu_counter_reg[52]_i_1_n_7\,
      S(3 downto 0) => tsu_counter_reg(55 downto 52)
    );
\tsu_counter_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[52]_i_1_n_6\,
      Q => tsu_counter_reg(53),
      R => clear
    );
\tsu_counter_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[52]_i_1_n_5\,
      Q => tsu_counter_reg(54),
      R => clear
    );
\tsu_counter_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[52]_i_1_n_4\,
      Q => tsu_counter_reg(55),
      R => clear
    );
\tsu_counter_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[56]_i_1_n_7\,
      Q => tsu_counter_reg(56),
      R => clear
    );
\tsu_counter_reg[56]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsu_counter_reg[52]_i_1_n_0\,
      CO(3) => \tsu_counter_reg[56]_i_1_n_0\,
      CO(2) => \tsu_counter_reg[56]_i_1_n_1\,
      CO(1) => \tsu_counter_reg[56]_i_1_n_2\,
      CO(0) => \tsu_counter_reg[56]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsu_counter_reg[56]_i_1_n_4\,
      O(2) => \tsu_counter_reg[56]_i_1_n_5\,
      O(1) => \tsu_counter_reg[56]_i_1_n_6\,
      O(0) => \tsu_counter_reg[56]_i_1_n_7\,
      S(3 downto 0) => tsu_counter_reg(59 downto 56)
    );
\tsu_counter_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[56]_i_1_n_6\,
      Q => tsu_counter_reg(57),
      R => clear
    );
\tsu_counter_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[56]_i_1_n_5\,
      Q => tsu_counter_reg(58),
      R => clear
    );
\tsu_counter_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[56]_i_1_n_4\,
      Q => tsu_counter_reg(59),
      R => clear
    );
\tsu_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[4]_i_1_n_6\,
      Q => tsu_counter_reg(5),
      R => clear
    );
\tsu_counter_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[60]_i_1_n_7\,
      Q => tsu_counter_reg(60),
      R => clear
    );
\tsu_counter_reg[60]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsu_counter_reg[56]_i_1_n_0\,
      CO(3) => \NLW_tsu_counter_reg[60]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \tsu_counter_reg[60]_i_1_n_1\,
      CO(1) => \tsu_counter_reg[60]_i_1_n_2\,
      CO(0) => \tsu_counter_reg[60]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsu_counter_reg[60]_i_1_n_4\,
      O(2) => \tsu_counter_reg[60]_i_1_n_5\,
      O(1) => \tsu_counter_reg[60]_i_1_n_6\,
      O(0) => \tsu_counter_reg[60]_i_1_n_7\,
      S(3 downto 0) => tsu_counter_reg(63 downto 60)
    );
\tsu_counter_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[60]_i_1_n_6\,
      Q => tsu_counter_reg(61),
      R => clear
    );
\tsu_counter_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[60]_i_1_n_5\,
      Q => tsu_counter_reg(62),
      R => clear
    );
\tsu_counter_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[60]_i_1_n_4\,
      Q => tsu_counter_reg(63),
      R => clear
    );
\tsu_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[4]_i_1_n_5\,
      Q => tsu_counter_reg(6),
      R => clear
    );
\tsu_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[4]_i_1_n_4\,
      Q => tsu_counter_reg(7),
      R => clear
    );
\tsu_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[8]_i_1_n_7\,
      Q => tsu_counter_reg(8),
      R => clear
    );
\tsu_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tsu_counter_reg[4]_i_1_n_0\,
      CO(3) => \tsu_counter_reg[8]_i_1_n_0\,
      CO(2) => \tsu_counter_reg[8]_i_1_n_1\,
      CO(1) => \tsu_counter_reg[8]_i_1_n_2\,
      CO(0) => \tsu_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tsu_counter_reg[8]_i_1_n_4\,
      O(2) => \tsu_counter_reg[8]_i_1_n_5\,
      O(1) => \tsu_counter_reg[8]_i_1_n_6\,
      O(0) => \tsu_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => tsu_counter_reg(11 downto 8)
    );
\tsu_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0(0),
      D => \tsu_counter_reg[8]_i_1_n_6\,
      Q => tsu_counter_reg(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_axi_tsu_64bit_0_0_axi_tsu_64bit_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    irq : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_design_axi_tsu_64bit_0_0_axi_tsu_64bit_v1_0 : entity is "axi_tsu_64bit_v1_0";
end block_design_axi_tsu_64bit_0_0_axi_tsu_64bit_v1_0;

architecture STRUCTURE of block_design_axi_tsu_64bit_0_0_axi_tsu_64bit_v1_0 is
begin
axi_tsu_64bit_v1_0_S00_AXI_inst: entity work.block_design_axi_tsu_64bit_0_0_axi_tsu_64bit_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      irq => irq,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_design_axi_tsu_64bit_0_0 is
  port (
    irq : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of block_design_axi_tsu_64bit_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of block_design_axi_tsu_64bit_0_0 : entity is "block_design_axi_tsu_64bit_0_0,axi_tsu_64bit_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of block_design_axi_tsu_64bit_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of block_design_axi_tsu_64bit_0_0 : entity is "axi_tsu_64bit_v1_0,Vivado 2022.2";
end block_design_axi_tsu_64bit_0_0;

architecture STRUCTURE of block_design_axi_tsu_64bit_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN block_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN block_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.block_design_axi_tsu_64bit_0_0_axi_tsu_64bit_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      irq => irq,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
