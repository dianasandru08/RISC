----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/15/2020 06:46:11 PM
-- Design Name: 
-- Module Name: TB - Behavioral
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

entity tb is
  --Port ( );
end tb;

architecture Behavioral of tb is

signal rst, clk, ZF, CF: std_logic := '0';
signal AdrInstr, Instr, Data, RA, RB, F : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');

constant CLK_PERIOD : TIME := 20 ns; 
        
begin

gen_clk: process
    begin
         clk <= '0';
         wait for (CLK_PERIOD/2);
         clk <= '1';
         wait for (CLK_PERIOD/2);
end process gen_clk; 

proc: entity Work.proc_RISC 
    port map(
               Clk => Clk,
               Rst => Rst,
               AdrInstr => AdrInstr,
               Instr => Instr,
               Data => Data,
               Ra => Ra,
               Rb => Rb,
               F => F
            );
            
processReset: process
begin
rst <='1' after 10 ns;
rst <= '0' after 20 ns;
wait;
end process;




end Behavioral;
