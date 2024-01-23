----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2021 17:36:58
-- Design Name: 
-- Module Name: AND_GATE - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AND_GATE is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC;
           CLK_IN : in STD_LOGIC;
           rst : in STD_LOGIC);
--    attribute loc : string;
--    attribute loc of a: signal is "M19";
--    attribute loc of b: signal is "M20";
--    attribute loc of c: signal is "M14";
--    attribute loc of rst: signal is "D19";
--    attribute loc of CLK_IN: signal is "H16";
    
end AND_GATE;

architecture RTL of AND_GATE is
signal a1: STD_LOGIC;
signal b1: STD_LOGIC;
signal c1: STD_LOGIC;

begin
process(CLK_IN, rst, a, b, a1, b1)
begin


if rst = '1' then
    c <= '0';
    a1 <= '0';
    b1 <= '0';
elsif CLK_IN'event and CLK_IN ='1' then
    a1 <= a;
    b1 <= b;
    c <= a1 AND b1;
end if;
end process;    

end RTL;
