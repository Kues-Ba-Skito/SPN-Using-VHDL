
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity S_Box_Layer is
    Port ( SBoxes_I : in  STD_LOGIC_VECTOR (15 downto 0);
           SBoxes_O : out  STD_LOGIC_VECTOR (15 downto 0));
end S_Box_Layer;

architecture Behavioral of S_Box_Layer is

	COMPONENT S_Box
	PORT(
		SBox_I : IN std_logic_vector(3 downto 0);          
		SBox_O : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

begin

	genn: for i in 0 to 3 generate
   begin
		Inst_S_Box_Layer: S_Box PORT MAP(
			SBox_I(0) => SBoxes_I(4*i),
			SBox_I(1) => SBoxes_I(4*i + 1),
			SBox_I(2) => SBoxes_I(4*i + 2),
			SBox_I(3) => SBoxes_I(4*i + 3),
			SBox_O(0) => SBoxes_O(4*i),
			SBox_O(1) => SBoxes_O(4*i + 1),
			SBox_O(2) => SBoxes_O(4*i + 2),
			SBox_O(3) => SBoxes_O(4*i + 3)
		);
	
		
   end generate;

end Behavioral;

