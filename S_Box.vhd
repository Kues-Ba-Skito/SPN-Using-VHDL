----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.03.2019 18:16:42
-- Design Name: 
-- Module Name: S_Box - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity S_Box is
    Port ( SBox_I : in  STD_LOGIC_VECTOR (3 downto 0);
           SBox_O : out  STD_LOGIC_VECTOR (3 downto 0));
end S_Box;

architecture Behavioral of S_Box is

begin

PROCESS (SBox_I)
BEGIN
	CASE SBox_I IS
		WHEN "0000" => 
			SBox_O <= X"1";
		WHEN "0001" => 
			SBox_O <= X"9";
		WHEN "0010" => 
			SBox_O <= X"6"; 
		WHEN "0011" =>
			SBox_O <= X"D"; 
		WHEN "0100" => 
			SBox_O <= X"7";
		WHEN "0101" => 
			SBox_O <= X"3";
		WHEN "0110" => 
			SBox_O <= X"5"; 
		WHEN "0111" =>
			SBox_O <= X"F";
		WHEN "1000" => 
			SBox_O <= X"2";
		WHEN "1001" => 
			SBox_O <= X"C";
		WHEN "1010" => 
			SBox_O <= X"E"; 
		WHEN "1011" =>
			SBox_O <= X"A";
		WHEN "1100" => 
			SBox_O <= X"4";
		WHEN "1101" => 
			SBox_O <= X"B";
		WHEN "1110" => 
			SBox_O <= X"8"; 
		WHEN OTHERS =>
			SBox_O <= X"0";
	END CASE;
END PROCESS;		

end Behavioral;

