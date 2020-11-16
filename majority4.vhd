------------------------------------------------
-- Module Name: majority4 
------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity majority4 is
    port( a: in STD_LOGIC; --input
          b: in STD_LOGIC; --input
          c: in std_logic; --input
          d: in std_logic ; --input
          m: out std_logic); --output
end majority4;

architecture majority4 of majority4 is
begin
    m <= ((b and c and d) or (a and c and d) or (a and b and c) or (a and b and d)); --output result of kmap  
end majority4;