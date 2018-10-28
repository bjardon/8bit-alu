-------------------------------------------------------------------------------
--	 ___   _   __    _  _____   __    _     __   _      __    ___   __  
--	| | \ | | / /`_ | |  | |   / /\  | |   ( (` | |_|  / /\  | |_) ( (` 
--	|_|_/ |_| \_\_/ |_|  |_|  /_/--\ |_|__ _)_) |_| | /_/--\ |_|_) _)_) 
--
--	8-Bit Async Arithmetic Logic Unit
--
--	double_dabble.vhd
--		Double dabble algorithm
--
--	Designed and built with </> and <3 by @digitalshabs.
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY DoubleDabble IS
	PORT(
		clk: 		IN	std_logic;
		bcd: 		IN	std_logic_vector(8 DOWNTO 0);
		digit0: 	OUT std_logic_vector(3 DOWNTO 0);
		digit1: 	OUT std_logic_vector(3 DOWNTO 0);
		digit2: 	OUT std_logic_vector(3 DOWNTO 0)
	);
END DoubleDabble;

ARCHITECTURE Behavior OF DoubleDabble IS
	SIGNAL wah: std_logic_vector(7 DOWNTO 0) := (OTHERS => '0');
BEGIN

	wah(3 DOWNTO 0) <= bcd(3 DOWNTO 0);
	
	double_dabble: PROCESS (clk, bcd) 
		VARIABLE i:			integer := 0;
		VARIABLE bcd_tmp: 	std_logic_vector(11 DOWNTO 0) := (OTHERS => '0');
		VARIABLE bcd_orig:	std_logic_vector(7 DOWNTO 0) := wah;
	BEGIN
		IF rising_edge(clk) THEN
			
			i := 0;
			bcd_tmp := (OTHERS => '0');
			bcd_orig := wah;
			
			FOR i IN 0 TO 8 LOOP
				-- Desplazar la variable temporal (resultado BCD) 1 bit a la izquierda.
				bcd_tmp(11 DOWNTO 1) := bcd_tmp(10 DOWNTO 0);

				-- Insertamos un nuevo bit de la entrada original.
				bcd_tmp(0) := bcd_orig(7 - i);

				-- Para cada 4 bits de la variable temporal (resultante) comprobamos que el valor sea menor o igual a cuatro,
				-- de lo contrario se le suma 3.
				IF(i < 7 and bcd_tmp(3 DOWNTO 0) > "0100") THEN
					bcd_tmp(3 DOWNTO 0) := std_logic_vector(unsigned(bcd_tmp(3 downto 0)) + 3);
				END IF;

				IF(i < 7 and bcd_tmp(7 DOWNTO 4) > "0100") THEN
					bcd_tmp(7 DOWNTO 4) := std_logic_vector(unsigned(bcd_tmp(7 DOWNTO 4)) + 3);
				END IF;

				IF(i < 7 and bcd_tmp(11 DOWNTO 8) > "0100") THEN
					bcd_tmp(11 DOWNTO 8) := std_logic_vector(unsigned(bcd_tmp(11 DOWNTO 8)) + 3);
				END IF;
			END LOOP;
		
			digit0 <= bcd_tmp( 3 DOWNTO 0);
			digit1 <= bcd_tmp( 7 DOWNTO 4);
			digit2 <= bcd_tmp(11 DOWNTO 8);
			
		END IF;
	END PROCESS double_dabble;

END Behavior;