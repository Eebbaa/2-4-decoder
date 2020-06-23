-- USN VHDL 101 course
-- 2 to 4 decoder with enable input
-- outputs are active high
-- dataflow description
-- author: josemmf@usn.no

library ieee;
use ieee.std_logic_1164.all;

entity dec2to4 is
    Port ( in1, in0, en: in STD_LOGIC;
           out3, out2, out1, out0: out STD_LOGIC
	 );
end dec2to4;

architecture darch of dec2to4 is
begin
	out3 <=      in1  AND      in0  AND en;
	out2 <=      in1  AND NOT (in0) AND en;
	out1 <= NOT (in1) AND      in0  AND en;
	out0 <= NOT (in1) AND NOT (in0) AND en;
end darch;
