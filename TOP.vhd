----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.03.2019 18:28:25
-- Design Name: 
-- Module Name: TOP - Behavioral
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

entity TOP is
    Port ( P : in STD_LOGIC_VECTOR (15 downto 0);
           K : in STD_LOGIC_VECTOR (15 downto 0);
           C : out STD_LOGIC_VECTOR (15 downto 0);
           K5_cand: in STD_LOGIC_VECTOR (3 downto 0);
           MATCH : out STD_LOGIC);
end TOP;

architecture Behavioral of TOP is

signal K1         : STD_LOGIC_VECTOR (15 downto 0);
signal K2         : STD_LOGIC_VECTOR (15 downto 0);
signal K3         : STD_LOGIC_VECTOR (15 downto 0);
signal K4         : STD_LOGIC_VECTOR (15 downto 0);
signal K5         : STD_LOGIC_VECTOR (15 downto 0);
signal U1         : STD_LOGIC_VECTOR (15 downto 0);
signal U2         : STD_LOGIC_VECTOR (15 downto 0);
signal U3         : STD_LOGIC_VECTOR (15 downto 0);
signal U4         : STD_LOGIC_VECTOR (15 downto 0);
signal V1         : STD_LOGIC_VECTOR (15 downto 0);
signal V2         : STD_LOGIC_VECTOR (15 downto 0);
signal V3         : STD_LOGIC_VECTOR (15 downto 0);
signal V4         : STD_LOGIC_VECTOR (15 downto 0);
signal P2         : STD_LOGIC_VECTOR (15 downto 0);
signal P3         : STD_LOGIC_VECTOR (15 downto 0);
signal P4         : STD_LOGIC_VECTOR (15 downto 0);
signal Csig       : STD_LOGIC_VECTOR (15 downto 0);
signal V4_trial   : STD_LOGIC_VECTOR (3 downto 0);
signal U4_trial   : STD_LOGIC_VECTOR (3 downto 0);

	COMPONENT S_Box_Layer
	PORT(
		SBoxes_I : IN std_logic_vector(15 downto 0);          
		SBoxes_O : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	COMPONENT Round_Permutation
	PORT(
		RoundP_I : IN std_logic_vector(15 downto 0);          
		RoundP_O : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	COMPONENT Inv_S_Box
	PORT(
		SBox_I : IN std_logic_vector(3 downto 0);          
		SBox_O : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

begin

K1 (14 downto 0) <= K(15 downto 1);
K1 (15)          <= K(0) xor K(2) xor K(4) xor K(5);

K2 (14 downto 0) <= K1(15 downto 1);
K2 (15)          <= K1(0) xor K1(2) xor K1(4) xor K1(5);

K3 (14 downto 0) <= K2(15 downto 1);
K3 (15)          <= K2(0) xor K2(2) xor K2(4) xor K2(5);

K4 (14 downto 0) <= K3(15 downto 1);
K4 (15)          <= K3(0) xor K3(2) xor K3(4) xor K3(5);

K5 (14 downto 0) <= K4(15 downto 1);
K5 (15)          <= K4(0) xor K4(2) xor K4(4) xor K4(5);


U1 <= P xor K1;

	S_Box_Layer_1: S_Box_Layer PORT MAP(
		SBoxes_I => U1,
		SBoxes_O => V1
	);

	Round_Permutation_1: Round_Permutation PORT MAP(
		RoundP_I => V1,
		RoundP_O => P2
	);

------------------------------------------------------------

U2 <= P2 xor K2;

	S_Box_Layer_2: S_Box_Layer PORT MAP(
		SBoxes_I => U2,
		SBoxes_O => V2
	);

	Round_Permutation_2: Round_Permutation PORT MAP(
		RoundP_I => V2,
		RoundP_O => P3
	);

------------------------------------------------------------

U3 <= P3 xor K3;

	S_Box_Layer_3: S_Box_Layer PORT MAP(
		SBoxes_I => U3,
		SBoxes_O => V3
	);

	Round_Permutation_3: Round_Permutation PORT MAP(
		RoundP_I => V3,
		RoundP_O => P4
	);

------------------------------------------------------------

U4 <= P4 xor K4;

	S_Box_Layer_4: S_Box_Layer PORT MAP(
		SBoxes_I => U4,
		SBoxes_O => V4
	);
	
Csig <= V4 xor K5;	
C    <= Csig;

V4_trial <= K5_cand XOR Csig(7 downto 4);	

U4 <= P4 xor K4;

	Inv_S_Box_1: Inv_S_Box PORT MAP(
		SBox_I => V4_trial,
		SBox_O => U4_trial
	);
	
MATCH <= U4_trial(1) XOR U4_trial(0) XOR P(9);
	
end Behavioral;
