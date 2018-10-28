-------------------------------------------------------------------------------
--	 ___   _   __    _  _____   __    _     __   _      __    ___   __  
--	| | \ | | / /`_ | |  | |   / /\  | |   ( (` | |_|  / /\  | |_) ( (` 
--	|_|_/ |_| \_\_/ |_|  |_|  /_/--\ |_|__ _)_) |_| | /_/--\ |_|_) _)_) 
--
--	8-Bit Async Arithmetic Logic Unit
--
--	debouncer.vhd
--		1-Bit push button debouncer
--
--	Designed and built with </> and <3 by @digitalshabs.
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY Debouncer IS

	PORT(
		clk: 		IN 	STD_LOGIC;
		button: 	IN 	STD_LOGIC;
		debounced: 	OUT STD_LOGIC
	);

END Debouncer;

ARCHITECTURE Behavior OF Debouncer IS

	CONSTANT count_max : INTEGER := (53_200_000/50) - 1; -- 53.2 MHz and 1/20 ms = 50 Hz
	
	SIGNAL inff: STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL count: INTEGER range 0 to count_max := 0;
	SIGNAL debounced_tmp: STD_LOGIC;
	
BEGIN

	debouncer: PROCESS(clk)
	BEGIN
		IF rising_edge(clk) THEN
			inff <= inff(0) & button;
			IF (inff(0) /= inff(1)) THEN 
				count <= 0;
			ELSIF (count < count_max) THEN
				count <= count + 1;
			ELSE
				debounced_tmp <= inff(1);
			END IF;
		END IF;
	END PROCESS debouncer;
	
	debounced <= debounced_tmp;

END Behavior;