-- REG1

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity REG5 is

	port
	(
		clk	: in std_logic;
		cl		: in std_logic;
		i		: in std_logic_vector(4 downto 0);
		ld		: in std_logic;
		cin 	: in std_logic;
		inc	: in std_logic;
		ein	: in std_logic;
		dec	: in std_logic;
		ir		: in std_logic;
		shr	: in std_logic;
		il		: in std_logic;
		shl	: in std_logic;
		
		cout	: out std_logic;
		eout	: out std_logic;
		q		: out std_logic_vector(4 downto 0)
	);

end entity;

architecture reg5 of REG5 is
	signal state		:	std_logic_vector(4 downto 0)	:=	('0', '0', '0', '0', '0');
	signal coutVector	:	std_logic_vector(3 downto 0)	:=	('0', '0', '0', '0');
	signal eoutVector	: 	std_logic_vector(3 downto 0)	:=	('0', '0', '0', '0');
begin
	q <= state;
	
	reg10 : entity work.reg1 port map(
		--input signals
		clk	=> clk,
		cl 	=> cl,
		i 		=> i(0),
		ld		=> ld,
		cin 	=> cin,
		inc	=> inc,
		ein 	=> ein,
		dec 	=> dec,
		ir 	=> state(1),
		shr 	=> shr,
		il 	=> il,
		shl 	=> shl,
		
		--output signals
		cout 	=> coutVector(0),
		eout 	=> eoutVector(0),
		q 		=> state(0)
	);
	
	reg11 : entity work.reg1 port map(
		--input signals
		clk	=> clk,
		cl 	=> cl,
		i 		=> i(1),
		ld		=> ld,
		cin 	=> coutVector(0),
		inc	=> inc,
		ein 	=> eoutVector(0),
		dec 	=> dec,
		ir 	=> state(2),
		shr 	=> shr,
		il 	=> state(0),
		shl 	=> shl,
		
		--output signals
		cout 	=> coutVector(1),
		eout 	=> eoutVector(1),
		q 		=> state(1)
	);
	
	reg12 : entity work.reg1 port map(
		--input signals
		clk	=> clk,
		cl 	=> cl,
		i 		=> i(2),
		ld		=> ld,
		cin 	=> coutVector(1),
		inc	=> inc,
		ein 	=> eoutVector(1),
		dec 	=> dec,
		ir 	=> state(3),
		shr 	=> shr,
		il 	=> state(1),
		shl 	=> shl,
		
		--output signals
		cout 	=> coutVector(2),
		eout 	=> eoutVector(2),
		q 		=> state(2)
	);
	
	reg13 : entity work.reg1 port map(
		--input signals
		clk	=> clk,
		cl 	=> cl,
		i 		=> i(3),
		ld		=> ld,
		cin 	=> coutVector(2),
		inc	=> inc,
		ein 	=> eoutVector(2),
		dec 	=> dec,
		ir 	=> state(4),
		shr 	=> shr,
		il 	=> state(2),
		shl 	=> shl,
		
		--output signals
		cout 	=> coutVector(3),
		eout 	=> eoutVector(3),
		q 		=> state(3)
	);
	
	reg14 : entity work.reg1 port map(
		--input signals
		clk	=> clk,
		cl 	=> cl,
		i 		=> i(4),
		ld		=> ld,
		cin 	=> coutVector(3),
		inc	=> inc,
		ein 	=> eoutVector(3),
		dec 	=> dec,
		ir 	=> ir,
		shr 	=> shr,
		il 	=> state(3),
		shl 	=> shl,
		
		--output signals
		cout 	=> cout,
		eout 	=> eout,
		q 		=> state(4)
	);

end reg5;