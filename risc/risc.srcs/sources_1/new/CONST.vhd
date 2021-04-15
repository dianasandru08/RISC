----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/15/2020 04:31:59 PM
-- Design Name: 
-- Module Name: CONST - Behavioral
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

entity CONST is
  Port (DataIN:in std_logic_vector(15 downto 0);
        SelC: in std_logic;
        DataOUT: out std_logic_vector(31 downto 0)
   );
end CONST;

architecture Behavioral of CONST is
begin
process(SelC)
begin
if (SelC = '0') then 
    DataOUT <= "0000000000000000" & DataIN;
else 
    if (DataIN(15) = '0') then 
        DataOUT <= "0000000000000000" & DataIN;
    else
        DataOUT <= "1111111111111111" & DataIN;
    end if;
end if;  
end process;
end Behavioral;
