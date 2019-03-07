--Charles Owen
--Embbedded Systems
--HW 5
-- Number 6 mux if Statement

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity num_6_if is

    Port(
    
   D_in     : in std_logic_vector(7 downto 0);
   MUX_out  : out std_logic;
   SEL      : in std_logic_vector(3 downto 0)
    
    );

end num_6_if;

architecture Behavioral of num_6_if is

begin

mux_6: process (SEL)
           begin
         
           if    (SEL <= "000") then MUX_out <= D_in(0);
           elsif (SEL <= "001") then MUX_out <= D_in(1);
           elsif (SEL <= "010") then MUX_out <= D_in(2);
           elsif (SEL <= "011") then MUX_out <= D_in(3);
           elsif (SEL <= "100") then MUX_out <= D_in(4);
           elsif (SEL <= "101") then MUX_out <= D_in(5);
           elsif (SEL <= "110") then MUX_out <= D_in(6);
           elsif (SEL <= "111") then MUX_out <= D_in(7);      
           end if;
         
           end process;

end Behavioral;
