----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/15/2020 05:36:40 PM
-- Design Name: 
-- Module Name: FDN - Behavioral
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
entity FDN is
  generic (n : natural);
  Port (D: in std_logic_vector(n-1 downto 0);
        CE: in std_logic;
        Clk: in std_logic;
        Rst: in std_logic;
        Q: out  std_logic_vector(n-1 downto 0)
        );
end FDN;

architecture Behavioral of FDN is

begin

    process(Clk)
    begin
        if(rising_edge(Clk)) then
            if(Rst = '1') then
                Q <= (others => '0');
            else 
                if (CE = '1') then
                    Q <= D;
                end if;
            end if;
       end if;
   end process;
            
end Behavioral;
