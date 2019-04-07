----------------------------------------------------------------------------------
----------------------------CRYPTO HW2 QUESTION 1---------------------------------
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

entity MASTER is
    Port ( 
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
           K5_cand : in STD_LOGIC_VECTOR (3 downto 0));
end MASTER;

architecture Behavioral of MASTER is

	COMPONENT TOP
    PORT ( P : in STD_LOGIC_VECTOR (15 downto 0);
           K : in STD_LOGIC_VECTOR (15 downto 0);
           C : out STD_LOGIC_VECTOR (15 downto 0);
           K5_cand: in STD_LOGIC_VECTOR (3 downto 0);
           MATCH : out STD_LOGIC);
	END COMPONENT;

begin

	TOP1 : TOP PORT MAP( P => P1 , K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH1 );
	TOP2 : TOP PORT MAP( P => P2 , K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH2 );
	TOP3 : TOP PORT MAP( P => P3 , K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH3 );
	TOP4 : TOP PORT MAP( P => P4 , K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH4 );
	TOP5 : TOP PORT MAP( P => P5 , K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH5 );
	TOP6 : TOP PORT MAP( P => P6 , K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH6 );
	TOP7 : TOP PORT MAP( P => P7 , K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH7 );
	TOP8 : TOP PORT MAP( P => P8 , K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH8 );
	TOP9 : TOP PORT MAP( P => P9 , K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH9 );
	TOP10: TOP PORT MAP( P => P10, K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH10);
	TOP11: TOP PORT MAP( P => P11, K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH11);
	TOP12: TOP PORT MAP( P => P12, K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH12);
	TOP13: TOP PORT MAP( P => P13, K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH13);
	TOP14: TOP PORT MAP( P => P14, K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH14);
	TOP15: TOP PORT MAP( P => P15, K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH15);
	TOP16: TOP PORT MAP( P => P16, K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH16);
	TOP17: TOP PORT MAP( P => P17, K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH17);
	TOP18: TOP PORT MAP( P => P18, K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH18);
	TOP19: TOP PORT MAP( P => P19, K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH19);
	TOP20: TOP PORT MAP( P => P20, K => K, C => OPEN, K5_cand => K5_cand, MATCH => MATCH20);



end Behavioral;
