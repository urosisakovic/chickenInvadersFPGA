library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--Operacije ALU jedinice:
-- 	op		|		Rezultat		|
--		000	|		a and b		|
--		001	|		a or b		|
--		010	|		a xor b		|
--		011	|		not a			|
--		100	|		a + b + cin	|
--		101	|		a - b	- cin	|
--		110	|		a + 1			|
--		111	|		a - 1			|




entity ALU1 is
	port 
	(
		a	   : in std_logic;
		b	   : in std_logic;
		cin	: in std_logic;
		op		: in std_logic_vector(2 downto 0);
		result: out std_logic;
		cout	: out std_logic
	);

end entity;

architecture rtl of ALU1 is
begin

	process(a,b,cin,op) is 
	begin 
		case op is
			when "000" => result <= a and b; cout<='0';
			when "001" => result <= a or b; cout<='0';
			when "010" => result <= a xor b; cout<='0';
			when "011" => result <= not a; cout<='0';
			when "100" => result <= a xor b xor cin;
							  cout 	<= ((a xor b) and cin) or (a and b);
			
			when "101" => result <= a xor b xor cin;
							  cout 	<= ((not (a) xor b) and cin) or ((not a) and b);
			when "110" => result <= not a;
							  cout	<= a;
			when "111" => result <= not a;
							  cout	<= not a;
			end case;
		
	end process; 


	

end rtl;
