--Charles Owen
--Embbedded Systems
--HW 5
-- Number 2 If Statement

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity num_2_if is

    Port(
    
    A_1, A_2    : in std_logic;
    B_1, B_2    : in std_logic;
    D_1         : in std_logic;
    E_out       : out std_logic
    
    );

end num_2_if;

architecture Behavioral of num_2_if is

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

    process (ABD)
    begin
    
    if (ABD = "001")    then E_out <= '1';
    elsif (ABD = "010") then E_out <= '1';
    elsif (ABD = "011") then E_out <= '1';
    elsif (ABD = "100") then E_out <= '1';
    elsif (ABD = "101") then E_out <= '1';
    elsif (ABD = "110") then E_out <= '1';
    elsif (ABD = "111") then E_out <= '1';
    end if;
    
    end process;
           

end Behavioral;
