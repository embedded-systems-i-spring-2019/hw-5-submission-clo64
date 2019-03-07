--Charles Owen
--Embbedded Systems
--HW 5
-- Number 5 OR

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity num_5_OR is

    Port(
    
   and_inputs   : in std_logic_vector(7 downto 0);
   and_out      : out std_logic
    
    );

end num_5_OR;

architecture Behavioral of num_5_OR is

begin

Big_And: process (and_inputs)
         begin
         
         if (and_intputs = "00000000") then and_out <= '0';
         else and_out <= '1';
         
         end process;

end Behavioral;
