-------------------------------------------------------------------------
-- Module Name: sim_majority4 Test Bench Code
-------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_majority4 is
--  Port ( );           -- we don't need a port here!
end sim_majority4;

architecture Behavioral of sim_majority4 is

-- declare the majority4 component here
component majority4 is
    port( a : in std_logic;
          b : in std_logic;
          c : in std_logic;
          d : in std_logic;
          m: out std_logic);
end component;
-- define signal wires to drive the inputs of our majority4 module
    signal sim_a : std_logic := '0';  --declare wires for each input
    signal sim_b : std_logic := '0';  --declare wires for each input
    signal sim_c : std_logic := '0';  --declare wires for each input
    signal sim_d : std_logic := '0';  --declare wires for each input
-- define a signal wire for the output of our majority4 module
    signal sim_m : std_logic := '0';
begin
-- Define a majority4 hardware object and connect its inputs to our simulation signals
sim_unit : majority4 Port Map ( 
        a => sim_a,
        b => sim_b,
        c => sim_c,
        d => sim_d,
        m => sim_m
        );

process begin
    -- drive the input wires here 
    sim_a <= '0';       --this tests the all 0's case
    sim_b <= '0';
    sim_c <= '0';
    sim_d <= '0';
    wait for 10 ns;
    -- assert statement to check the outputs
    --if all abcd are 0 then m should be 0
    assert sim_m <= '0' report "a, b, c, d = 0 did not result in m = 0";
    -- look at the comp2bit example to get ideas on how to do this.
    sim_a <= '1';
    sim_b <= '1';
    sim_c <= '1';
    wait for 10 ns;
    --if 3 abcd are 0 then m should be 1
    assert sim_m <= '1' report "a, b, c= 1, d = 0 did not result in m = 0";
end process;


end Behavioral;
