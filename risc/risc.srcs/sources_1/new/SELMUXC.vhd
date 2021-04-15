----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/15/2020 04:41:36 PM
-- Design Name: 
-- Module Name: SELMUXC - Behavioral
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

entity SELMUXC is
  Port ( CSalt : in std_logic;
         Ssalt: in std_logic_vector(1 downto 0);
         Z: in std_logic;
         MxC: out std_logic_vector(1 downto 0));
end SELMUXC;

architecture Behavioral of SELMUXC is

begin
process(CSalt, Ssalt, Z)
begin
    case SSalt is
        when "00" => MxC <= "00";
        when "01" =>
            if (CSalt = '0' and Z = '0' ) then 
                MxC <= "00";
            elsif (CSalt = '0' and Z = '1' ) then 
                MxC <= "01";
            elsif (CSalt = '1' and Z = '0' ) then 
                MxC <= "01";
            elsif (CSalt = '1' and Z = '1' ) then 
                MxC <= "00";
            end if;
         when "10" => MxC <= "10";
         when "11" =>
            if ( Csalt = '0')  then 
                MxC<= "01";
            elsif (Csalt ='1') then 
                MxC <= "11";
            end if;
         
         end case;
end process;

end Behavioral;
