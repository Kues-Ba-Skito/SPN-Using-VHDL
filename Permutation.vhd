library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Round_Permutation is
    Port ( RoundP_I : in  STD_LOGIC_VECTOR (15 downto 0);
           RoundP_O : out  STD_LOGIC_VECTOR (15 downto 0));
end Round_Permutation;

architecture Behavioral of Round_Permutation is

begin

    RoundP_O( 0) <= RoundP_I( 0);
	RoundP_O( 1) <= RoundP_I( 4);
	RoundP_O( 2) <= RoundP_I( 8);
	RoundP_O( 3) <= RoundP_I(12);
	RoundP_O( 4) <= RoundP_I( 1);
	RoundP_O( 5) <= RoundP_I( 5);
    RoundP_O( 6) <= RoundP_I( 9);
    RoundP_O( 7) <= RoundP_I(13);
    RoundP_O( 8) <= RoundP_I( 2);
	RoundP_O( 9) <= RoundP_I( 6);
    RoundP_O(10) <= RoundP_I(10);
    RoundP_O(11) <= RoundP_I(14);
    RoundP_O(12) <= RoundP_I( 3);
	RoundP_O(13) <= RoundP_I( 7);
    RoundP_O(14) <= RoundP_I(11);
    RoundP_O(15) <= RoundP_I(15);

end Behavioral;