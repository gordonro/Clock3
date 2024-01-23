-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
-- Date        : Mon Jan  8 15:48:34 2024
-- Host        : OXPS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/gordo/Dropbox/Xilinx/Projects/project_Clocked_AND_PZ2/project_Clocked_AND_PZ2.sim/sim_1/impl/func/xsim/AND_GATE_tb_func_impl.vhd
-- Design      : AND_GATE
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AND_GATE is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : out STD_LOGIC;
    CLK_IN : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of AND_GATE : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of AND_GATE : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of AND_GATE : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of AND_GATE : entity is "480b2a0c";
end AND_GATE;

architecture STRUCTURE of AND_GATE is
  signal CLK_IN_IBUF : STD_LOGIC;
  signal CLK_IN_IBUF_BUFG : STD_LOGIC;
  signal a_IBUF : STD_LOGIC;
  signal b_IBUF : STD_LOGIC;
  signal c_OBUF : STD_LOGIC;
  signal c_i_1_n_0 : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
begin
CLK_IN_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IN_IBUF,
      O => CLK_IN_IBUF_BUFG
    );
CLK_IN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK_IN,
      O => CLK_IN_IBUF
    );
a_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => a,
      O => a_IBUF
    );
b_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => b,
      O => b_IBUF
    );
c_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => c_OBUF,
      O => c
    );
c_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => a_IBUF,
      I1 => b_IBUF,
      O => c_i_1_n_0
    );
c_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IN_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => c_i_1_n_0,
      Q => c_OBUF
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
end STRUCTURE;
