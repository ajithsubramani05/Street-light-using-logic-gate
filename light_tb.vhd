library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity light_tb is
end light_tb;

architecture sim of light_tb is

    signal LDR_input  : std_logic := '0';
    signal Light_out  : std_logic;

    component street_light
        Port (
            LDR_input : in std_logic;
            Light_out : out std_logic
        );
    end component;

begin
    uut: street_light
        port map (
            LDR_input => LDR_input,
            Light_out => Light_out
        );

    -- Simulate changing light condition
    process
    begin
        LDR_input <= '1';  -- Daytime: Light OFF
        wait for 10 ns;
        LDR_input <= '0';  -- Nighttime: Light ON
        wait for 10 ns;
        LDR_input <= '1';  -- Day again
        wait for 10 ns;
        LDR_input <= '0';  -- Night again
        wait;
    end process;

end sim;
