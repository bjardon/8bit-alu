-------------------------------------------------------------------------------
--	 ___   _   __    _  _____   __    _     __   _      __    ___   __  
--	| | \ | | / /`_ | |  | |   / /\  | |   ( (` | |_|  / /\  | |_) ( (` 
--	|_|_/ |_| \_\_/ |_|  |_|  /_/--\ |_|__ _)_) |_| | /_/--\ |_|_) _)_) 
--
--	8-Bit Async Arithmetic Logic Unit
--
--	logic_unit.vhd
--		8-Bit logic unit
--
--	Designed and built with </> and <3 by @digitalshabs.
-------------------------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY LogicUnit IS
	PORT (
		clk:		IN	std_logic;
		enable:		IN 	std_logic;
		x:			IN	std_logic_vector(7 DOWNTO 0);
		y:			IN	std_logic_vector(7 DOWNTO 0);
		selector: 	IN	std_logic_vector(2 DOWNTO 0);
		trigger:	IN 	std_logic;
		z:			OUT std_logic_vector(7 DOWNTO 0)
	);
END LogicUnit;

ARCHITECTURE Behavior OF LogicUnit IS

	CONSTANT operation_and:		std_logic_vector(3 DOWNTO 0) := "0001";
	CONSTANT operation_or: 		std_logic_vector(3 DOWNTO 0) := "0010";
	CONSTANT operation_not: 	std_logic_vector(3 DOWNTO 0) := "0011";
	CONSTANT operation_c2:	 	std_logic_vector(3 DOWNTO 0) := "0100";
	CONSTANT operation_lsr: 	std_logic_vector(3 DOWNTO 0) := "0101";
	CONSTANT operation_asr: 	std_logic_vector(3 DOWNTO 0) := "0110";
	
	SIGNAL and_result:			std_logic_vector(7 DOWNTO 0);
	SIGNAL or_result:			std_logic_vector(7 DOWNTO 0);
	SIGNAL not_result:			std_logic_vector(8 DOWNTO 0);
	SIGNAL c2_result:			std_logic_vector(7 DOWNTO 0);
	
	SIGNAL logic_shift_hold:	std_logic_vector(7 DOWNTO 0) := "ZZZZZZZZ";
	SIGNAL arith_shift_hold:	std_logic_vector(7 DOWNTO 0) := "ZZZZZZZZ";
	SIGNAL not_mux:				std_logic := '0';
	
	SIGNAL input_hold: 			std_logic_vector(7 DOWNTO 0);
	
BEGIN
	
	negating: PROCESS (trigger)
	BEGIN
		IF falling_edge(trigger) THEN
			IF not_mux = '0' THEN
				not_result <= NOT ('0' & x);
			ELSE
				not_result <= NOT ('0' & y);
			END IF;
			not_mux <= NOT not_mux;
		END IF;
	END PROCESS negating;
	
	shifting: PROCESS (trigger)
	BEGIN
		IF falling_edge(trigger) THEN
			IF logic_shift_hold = "ZZZZZZZZ" THEN
				logic_shift_hold <= x;
			ELSE
				logic_shift_hold <= std_logic_vector(shift_right(unsigned(logic_shift_hold), 1));
			END IF;
			
			IF arith_shift_hold = "ZZZZZZZZ" THEN
				arith_shift_hold <= x;
			ELSE
				arith_shift_hold <= std_logic_vector(shift_right(signed(arith_shift_hold), 1));
			END IF;
		END IF;
	END PROCESS shifting;

	and_result <= x AND y;
	or_result <= x OR y;
	c2_result <= std_logic_vector(signed(not_result) + 1);
	
	WITH (enable & selector) SELECT z <=
		and_result 				WHEN operation_and,
		or_result				WHEN operation_or,
		not_result(7 DOWNTO 0)	WHEN operation_not,
		c2_result	 			WHEN operation_c2,
		logic_shift_hold 		WHEN operation_lsr,
		arith_shift_hold 		WHEN operation_asr,
		"ZZZZZZZZ" 				WHEN OTHERS;
		
END Behavior;
