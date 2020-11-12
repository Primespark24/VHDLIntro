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

-- define signal wires to drive the inputs of our majority4 module

-- define a signal wire for the output of our majority4 module

begin
-- Define a majority4 hardware object and connect its inputs to our simulation signals
sim_unit : majority4 Port Map ( 
        -- map the inputs / ouptut here
        );

process begin
    -- drive the input wires here 
    -- assert statement to check the outputs
    -- look at the comp2bit example to get ideas on how to do this.
end process;


end Behavioral;
