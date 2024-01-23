----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2021 17:41:19
-- Design Name: 
-- Module Name: AND_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity AND_GATE_tb is
end;

architecture bench of AND_GATE_tb is


  component AND_GATE
      Port ( a : in STD_LOGIC;
             b : in STD_LOGIC;
             c : out STD_LOGIC;
           CLK_IN : in STD_LOGIC;
           rst : in STD_LOGIC);
  end component;

  constant clk_hz : integer := 100e6;
  constant clk_period : time := 1 sec / clk_hz;
 
  signal a: STD_LOGIC := '0';
  signal b: STD_LOGIC := '0';
  signal c: STD_LOGIC;
  
  signal CLK_IN : std_logic := '0';
  signal rst : std_logic := '1';
 
  signal int1, int2, int3, int4 : integer := 0;

begin


CLK_PROC : process
begin
  wait for clk_period / 2;
  if CLK_IN = '1' then
    CLK_IN <= '0';
  else
    CLK_IN <= '1';
  end if;
end process;

RST_PROC : process
begin
  if rst = '1' then
      wait for clk_period / 4 ;
      rst <= '0';
  end if;
  wait;
end process;

  uut: AND_GATE port map ( a => a,
                           b => b,
                           c => c,
                           CLK_IN => CLK_IN,
                           rst => rst );

  stimulus: process
  begin
  
    -- Put initialisation code here
    
    -- Put test bench stimulus code here

    a <= '0';
    b <= '0';
    wait for 12 ns;

    a <= '1';
    b <= '0';
    wait for 10 ns;

    a <= '0';
    b <= '1';
    wait for 10 ns;

    a <= '1';
    b <= '1';
    wait for 10 ns;

    
    wait;
  end process;


end;