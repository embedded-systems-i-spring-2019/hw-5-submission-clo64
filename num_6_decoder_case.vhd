--Charles Owen
--Embbedded Systems
--HW 5
-- Number 7 Decoder Case

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity num_7_case is

    Port(
    
   DEC_in   : in std_logic_vector(2 downto 0);
   DEC_out  : out std_logic_vector(7 downto 0)
    
    );

end num_7_case;

architecture Behavioral of num_7_case is

begin

Big_And: process (and_inputs)
         begin
         
         case (DEC_in) is
         
         "000" => DEC_out <= "01111111";
         "001" => DEC_out <= "10111111";
         "010" => DEC_out <= "11011111";
         "011" => DEC_out <= "11101111";
         "100" => DEC_out <= "11110111"; 
         "101" => DEC_out <= "11111011";
         "110" => DEC_out <= "11111101";
         "111" => DEC_out <= "11111110";
         when others => DEC_out <= "00000000";
         
         end case;
         
         end process;

end Behavioral;
