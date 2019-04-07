----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.03.2019 19:04:19
-- Design Name: 
-- Module Name: TOP_tb - Behavioral
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

entity TOP_tb is
end TOP_tb;

architecture Behavioral of TOP_tb is

    COMPONENT MASTER
    PORT(
           P1 : in STD_LOGIC_VECTOR (15 downto 0);
           P2 : in STD_LOGIC_VECTOR (15 downto 0);
           P3 : in STD_LOGIC_VECTOR (15 downto 0);
           P4 : in STD_LOGIC_VECTOR (15 downto 0);
           P5 : in STD_LOGIC_VECTOR (15 downto 0);
           P6 : in STD_LOGIC_VECTOR (15 downto 0);
           P7 : in STD_LOGIC_VECTOR (15 downto 0);
           P8 : in STD_LOGIC_VECTOR (15 downto 0);
           P9 : in STD_LOGIC_VECTOR (15 downto 0);
           P10 : in STD_LOGIC_VECTOR (15 downto 0);
           P11 : in STD_LOGIC_VECTOR (15 downto 0);
           P12 : in STD_LOGIC_VECTOR (15 downto 0);
           P13 : in STD_LOGIC_VECTOR (15 downto 0);
           P14 : in STD_LOGIC_VECTOR (15 downto 0);
           P15 : in STD_LOGIC_VECTOR (15 downto 0);
           P16 : in STD_LOGIC_VECTOR (15 downto 0);
           P17 : in STD_LOGIC_VECTOR (15 downto 0);
           P18 : in STD_LOGIC_VECTOR (15 downto 0);
           P19 : in STD_LOGIC_VECTOR (15 downto 0);
           P20 : in STD_LOGIC_VECTOR (15 downto 0);
           MATCH1 : out STD_LOGIC;
           MATCH2 : out STD_LOGIC;
           MATCH3 : out STD_LOGIC;
           MATCH4 : out STD_LOGIC;
           MATCH5 : out STD_LOGIC;
           MATCH6 : out STD_LOGIC;
           MATCH7 : out STD_LOGIC;
           MATCH8 : out STD_LOGIC;
           MATCH9 : out STD_LOGIC;
           MATCH10: out STD_LOGIC;
           MATCH11: out STD_LOGIC;
           MATCH12: out STD_LOGIC;
           MATCH13: out STD_LOGIC;
           MATCH14: out STD_LOGIC;
           MATCH15: out STD_LOGIC;
           MATCH16: out STD_LOGIC;
           MATCH17: out STD_LOGIC;
           MATCH18: out STD_LOGIC;
           MATCH19: out STD_LOGIC;
           MATCH20: out STD_LOGIC;
           K : in STD_LOGIC_VECTOR (15 downto 0);
           K5_cand : in STD_LOGIC_VECTOR (3 downto 0)
        );
    END COMPONENT;

signal     P1 : STD_LOGIC_VECTOR (15 downto 0)  := X"0123";
signal     P2 : STD_LOGIC_VECTOR (15 downto 0)  := X"000D";
signal     P3 : STD_LOGIC_VECTOR (15 downto 0)  := X"082D";
signal     P4 : STD_LOGIC_VECTOR (15 downto 0)  := X"ABCD";
signal     P5 : STD_LOGIC_VECTOR (15 downto 0)  := X"1A2E";
signal     P6 : STD_LOGIC_VECTOR (15 downto 0)  := X"532D";
signal     P7 : STD_LOGIC_VECTOR (15 downto 0)  := X"152D";
signal     P8 : STD_LOGIC_VECTOR (15 downto 0)  := X"6543";
signal     P9 : STD_LOGIC_VECTOR (15 downto 0)  := X"5213";
signal     P10 : STD_LOGIC_VECTOR (15 downto 0) := X"BA48";
signal     P11 : STD_LOGIC_VECTOR (15 downto 0) := X"A1D3";
signal     P12 : STD_LOGIC_VECTOR (15 downto 0) := X"9053";
signal     P13 : STD_LOGIC_VECTOR (15 downto 0) := X"0123";
signal     P14 : STD_LOGIC_VECTOR (15 downto 0) := X"0163";
signal     P15 : STD_LOGIC_VECTOR (15 downto 0) := X"A139";
signal     P16 : STD_LOGIC_VECTOR (15 downto 0) := X"A32C";
signal     P17 : STD_LOGIC_VECTOR (15 downto 0) := X"0388";
signal     P18 : STD_LOGIC_VECTOR (15 downto 0) := X"2424";
signal     P19 : STD_LOGIC_VECTOR (15 downto 0) := X"1753";
signal     P20 : STD_LOGIC_VECTOR (15 downto 0) := X"F0F0";
signal     MATCH1 : STD_LOGIC;
signal     MATCH2 : STD_LOGIC;
signal     MATCH3 : STD_LOGIC;
signal     MATCH4 : STD_LOGIC;
signal     MATCH5 : STD_LOGIC;
signal     MATCH6 : STD_LOGIC;
signal     MATCH7 : STD_LOGIC;
signal     MATCH8 : STD_LOGIC;
signal     MATCH9 : STD_LOGIC;
signal     MATCH10: STD_LOGIC;
signal     MATCH11: STD_LOGIC;
signal     MATCH12: STD_LOGIC;
signal     MATCH13: STD_LOGIC;
signal     MATCH14: STD_LOGIC;
signal     MATCH15: STD_LOGIC;
signal     MATCH16: STD_LOGIC;
signal     MATCH17: STD_LOGIC;
signal     MATCH18: STD_LOGIC;
signal     MATCH19: STD_LOGIC;
signal     MATCH20: STD_LOGIC;
signal     K : STD_LOGIC_VECTOR (15 downto 0)   := X"1824";
signal     K5_cand : STD_LOGIC_VECTOR (3 downto 0);

begin

	UUT: MASTER PORT MAP(
		P1 => P1 ,
		P2 => P2 ,
		P3 => P3 ,
		P4 => P4 ,
		P5 => P5 ,
		P6 => P6 ,
		P7 => P7 ,
		P8 => P8 ,
		P9 => P9 ,
		P10=> P10,
		P11=> P11,
		P12=> P12,
		P13=> P13,
		P14=> P14,
		P15=> P15,
		P16=> P16,
		P17=> P17,
		P18=> P18,
		P19=> P19,
		P20=> P20,
		K  => K,
		K5_cand => K5_cand,
		MATCH1 => MATCH1 ,
		MATCH2 => MATCH2 ,
		MATCH3 => MATCH3 ,
		MATCH4 => MATCH4 ,
		MATCH5 => MATCH5 ,
		MATCH6 => MATCH6 ,
		MATCH7 => MATCH7 ,
		MATCH8 => MATCH8 ,
		MATCH9 => MATCH9 ,
		MATCH10=> MATCH10,
		MATCH11=> MATCH11,
		MATCH12=> MATCH12,
		MATCH13=> MATCH13,
		MATCH14=> MATCH14,
		MATCH15=> MATCH15,
		MATCH16=> MATCH16,
		MATCH17=> MATCH17,
		MATCH18=> MATCH18,
		MATCH19=> MATCH19,
		MATCH20=> MATCH20

	);

proc: process
begin
    K5_cand <= X"0";    wait for 50 ns;
    K5_cand <= X"1";    wait for 50 ns;
    K5_cand <= X"2";    wait for 50 ns;
    K5_cand <= X"3";    wait for 50 ns;
    K5_cand <= X"4";    wait for 50 ns;
    K5_cand <= X"5";    wait for 50 ns;
    K5_cand <= X"6";    wait for 50 ns;
    K5_cand <= X"7";    wait for 50 ns;
    K5_cand <= X"8";    wait for 50 ns;
    K5_cand <= X"9";    wait for 50 ns;
    K5_cand <= X"A";    wait for 50 ns;
    K5_cand <= X"B";    wait for 50 ns;
    K5_cand <= X"C";    wait for 50 ns;
    K5_cand <= X"D";    wait for 50 ns;
    K5_cand <= X"E";    wait for 50 ns;
    K5_cand <= X"F";    wait for 50 ns;
    
end process;


end Behavioral;
