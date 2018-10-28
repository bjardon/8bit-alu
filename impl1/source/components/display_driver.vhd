-------------------------------------------------------------------------------
--	 ___   _   __    _  _____   __    _     __   _      __    ___   __  
--	| | \ | | / /`_ | |  | |   / /\  | |   ( (` | |_|  / /\  | |_) ( (` 
--	|_|_/ |_| \_\_/ |_|  |_|  /_/--\ |_|__ _)_) |_| | /_/--\ |_|_) _)_) 
--
--	8-Bit Async Arithmetic Logic Unit
--
--	display_driver.vhd
--		4-Digit 7-Segment display driver
--
--	Designed and built with </> and <3 by @digitalshabs.
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY DisplayDriver IS
	PORT (
		clk:		IN 	std_logic;
		digit0: 	IN	std_logic_vector(7 DOWNTO 0);
		digit1: 	IN 	std_logic_vector(7 DOWNTO 0);
		digit2: 	IN 	std_logic_vector(7 DOWNTO 0);
		digit3: 	IN 	std_logic_vector(7 DOWNTO 0);
		segments: 	OUT std_logic_vector(7 DOWNTO 0);
		digits: 	OUT std_logic_vector(3 DOWNTO 0)
	);
END DisplayDriver;

ARCHITECTURE Behavior of DisplayDriver IS
	
	SIGNAL digits_tmp: std_logic_vector(3 DOWNTO 0) := "0001";
	
BEGIN

	PROCESS(clk)
		VARIABLE count: INTEGER RANGE 0 TO 500_000 :=0;
	BEGIN
		IF rising_edge(clk) THEN
			IF count < (5_000) THEN
				count := count + 1;
			ELSE
				count := 0;
				digits_tmp <= std_logic_vector(rotate_left(unsigned(digits_tmp), 1));
			END IF;
		END IF;
	END PROCESS;
	
	WITH digits_tmp SELECT segments <=
		digit0 		WHEN "0001",
		digit1 		WHEN "0010",
		digit2 		WHEN "0100",
		digit3 		WHEN "1000",
		"ZZZZZZZZ" 	WHEN OTHERS;
	
	digits <= digits_tmp;

END Behavior;