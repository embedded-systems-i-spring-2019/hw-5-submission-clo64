--Charles Owen
--Embbedded Systems
--HW 5
-- Number 2 Case Statement

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity num_2_case is

    Port(
    
   and_inputs   : in std_logic_vector(7 downto 0);
   and_out      : out std_logic
    
    );

end num_2_case;

architecture Behavioral of num_2_case is

begin

Big_And: process (and_inputs)
         begin
         
         if (and_intputs = "11111111") then and_out <= '1';
         else and_out <= '0';
         
         end process;

end Behavioral;
