--Charles Owen
--Embbedded Systems
--HW 5
-- Number 6 Case Statement

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity num_6_case is

    Port(
    
   D_in     : in std_logic_vector(7 downto 0);
   MUX_out  : out std_logic;
   SEL      : in std_logic_vector(3 downto 0)
    
    );

end num_6_case;

architecture Behavioral of num_6_case is

begin

Dec_ac_lo: process (SEL)
           begin
         
           case (SEL) is
           when "000" => MUX_out <= D_in(0);
           when "001" => MUX_out <= D_in(1);
           when "010" => MUX_out <= D_in(2);
           when "011" => MUX_out <= D_in(3);
           when "100" => MUX_out <= D_in(4);
           when "101" => MUX_out <= D_in(5);
           when "110" => MUX_out <= D_in(6);
           when "111" => MUX_out <= D_in(7);
           end case;
         
           end process;

end Behavioral;
