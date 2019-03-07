--Charles Owen
--Embbedded Systems
--HW 5
--Number 7 if Statement

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity num_7_if is

    Port(
    
   DEC_in   : in std_logic_vector(2 downto 0);
   DEC_out  : out std_logic_vector(7 downto 0)
    
    );

end num_7_if;

architecture Behavioral of num_7_if is

begin

Dec_ac_lo: process (DEC_in)
         begin
         
         if    (DEC_in = "000") then DEC_out <= "01111111";
         elsif (DEC_in = "001") then DEC_out <= "10111111";
         elsif (DEC_in = "010") then DEC_out <= "11011111";
         elsif (DEC_in = "011") then DEC_out <= "11101111";
         elsif (DEC_in = "100") then DEC_out <= "11110111";
         elsif (DEC_in = "101") then DEC_out <= "11111011";
         elsif (DEC_in = "110") then DEC_out <= "11111101";
         elsif (DEC_in = "111") then DEC_out <= "11111110";        
         end if;
         
         end process;

end Behavioral;
