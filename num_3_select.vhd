--Charles Owen
--Embbedded Systems
--HW 5
-- Number 3 Select Statement

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity num_3_select is

    Port(
    
    A_1, A_2    : in std_logic;
    B_1, B_2    : in std_logic;
    D_1         : in std_logic;
    E_out       : out std_logic
    
    );

end num_3_select;

architecture Behavioral of num_3_select is

signal ABD   : std_logic_vector(2 downto 0);
signal and_1 : std_logic;
signal and_2 : std_logic;
signal or_1  : std_logic;


begin

ABD <= and_1 & and_2 & or_1;

   And1: process(A_1, A_2)
    begin
    
    and_1 <= A_1 and A_2;
    
    end process;
    
   Or1: process(B_1, B_2)
    begin
    
    or_1 <= B_1 or B_2;
    
    end process;
    
   And2: process(B_2, D_1)
    begin
    
    and_2 <= B_2 and D_1;
    
    end process;

with ABD select E_out <=

    '1' when "001",
    '1' when "010",
    '1' when "011", 
    '1' when "100",
    '1' when "101",
    '1' when "110",
    '1' when "111",
    '0' when others;

end Behavioral;
