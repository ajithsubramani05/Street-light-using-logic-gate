library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity light is
    Port (
        LDR_input  : in  STD_LOGIC;
        Light_out  : out STD_LOGIC
    );
end light;

architecture Behavioral of light is
begin
    Light_out <= not LDR_input;
end Behavioral;
