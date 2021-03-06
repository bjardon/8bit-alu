-------------------------------------------------------------------------------
--	 ___   _   __    _  _____   __    _     __   _      __    ___   __  
--	| | \ | | / /`_ | |  | |   / /\  | |   ( (` | |_|  / /\  | |_) ( (` 
--	|_|_/ |_| \_\_/ |_|  |_|  /_/--\ |_|__ _)_) |_| | /_/--\ |_|_) _)_) 
--
--	8-Bit Async Arithmetic Logic Unit
--
--	selector_unit.vhd
--		Operation selection unit (Top Level)
--
--	Designed and built with </> and <3 by @digitalshabs.
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

LIBRARY LATTICE;
USE LATTICE.components.all;

ENTITY Top IS
	PORT (
		 clk: 			INOUT std_logic;
		 trigger_ah: 	IN 	std_logic;
		 trigger_al: 	IN 	std_logic;
		 input: 		IN 	std_logic_vector(7 DOWNTO 0);
		 selector:		IN	std_logic_vector(2 DOWNTO 0);
		 
		 input_d:		OUT std_logic_vector(7 DOWNTO 0);
		 register_d:	OUT std_logic_vector(7 DOWNTO 0);
		 
		 bits:		 	OUT std_logic_vector(7 DOWNTO 0);
		 segments: 		OUT std_logic_vector(7 DOWNTO 0);
		 digits: 		OUT std_logic_vector(3 DOWNTO 0)
	);
END Top;

ARCHITECTURE Behavior OF Top IS
	
	COMPONENT OSCH
		GENERIC	( nom_freq: string := "53.20" );
		PORT (
			stdby: 	IN 	std_logic;
			osc: 	OUT std_logic
		);
	END COMPONENT;

	COMPONENT Debouncer
		PORT(
			clk: 		IN 	STD_LOGIC;
			button: 	IN 	STD_LOGIC;
			debounced: 	OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT DisplayDecoder
		PORT(
			bcd: 		IN 	std_logic_vector(3 DOWNTO 0);
			sign: 		IN 	std_logic;
			segments: 	OUT std_logic_vector(7 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT DisplayDriver
		PORT (
			clk:		IN 	std_logic;
			digit0: 	IN	std_logic_vector(7 DOWNTO 0);
			digit1: 	IN 	std_logic_vector(7 DOWNTO 0);
			digit2: 	IN 	std_logic_vector(7 DOWNTO 0);
			digit3: 	IN 	std_logic_vector(7 DOWNTO 0);
			segments: 	OUT std_logic_vector(7 DOWNTO 0);
			digits: 	OUT std_logic_vector(3 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT DoubleDabble
		PORT(
			clk: 		IN	std_logic;
			bcd: 		IN	std_logic_vector(8 DOWNTO 0);
			digit0: 	OUT std_logic_vector(3 DOWNTO 0);
			digit1: 	OUT std_logic_vector(3 DOWNTO 0);
			digit2: 	OUT std_logic_vector(3 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT ArithmeticUnit
		PORT (
			enable: 	IN 	std_logic;
			x:			IN	std_logic_vector(7 DOWNTO 0);
			y:			IN	std_logic_vector(7 DOWNTO 0);
			selector: 	IN	std_logic_vector(1 DOWNTO 0);
			z:			OUT std_logic_vector(8 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT LogicUnit
		PORT (
			clk:		IN	std_logic;
			enable:		IN 	std_logic;
			x:			IN	std_logic_vector(7 DOWNTO 0);
			y:			IN	std_logic_vector(7 DOWNTO 0);
			selector: 	IN	std_logic_vector(2 DOWNTO 0);
			trigger:	IN 	std_logic;
			z:			OUT std_logic_vector(7 DOWNTO 0)
		);
	END COMPONENT;
	
	CONSTANT logic_indicator0: std_logic_vector(7 DOWNTO 0) := "00011100";
	CONSTANT logic_indicator1: std_logic_vector(7 DOWNTO 0) := "00111010";
	CONSTANT logic_indicator2: std_logic_vector(7 DOWNTO 0) := "11110110";
	CONSTANT logic_indicator3: std_logic_vector(7 DOWNTO 0) := "00011011";
	
	CONSTANT arith_indicator0: std_logic_vector(7 DOWNTO 0) := "11101100";
	CONSTANT arith_indicator1: std_logic_vector(7 DOWNTO 0) := "00001010";
	CONSTANT arith_indicator2: std_logic_vector(7 DOWNTO 0) := "00001000";
	CONSTANT arith_indicator3: std_logic_vector(7 DOWNTO 0) := "00011111";

	SIGNAL input_register: std_logic_vector(7 DOWNTO 0);
	SIGNAL triggerh_db: std_logic;
	SIGNAL triggerl_db: std_logic;
	SIGNAL unit_mux: std_logic := '0';
	
	SIGNAL digit0: std_logic_vector(7 DOWNTO 0);
	SIGNAL digit1: std_logic_vector(7 DOWNTO 0);
	SIGNAL digit2: std_logic_vector(7 DOWNTO 0);
	SIGNAL digit3: std_logic_vector(7 DOWNTO 0);
	
	SIGNAL bcd0: std_logic_vector(3 DOWNTO 0);
	SIGNAL bcd1: std_logic_vector(3 DOWNTO 0);
	SIGNAL bcd2: std_logic_vector(3 DOWNTO 0);
	SIGNAL bcd3: std_logic_vector(3 DOWNTO 0);
	
	SIGNAL arith_output: std_logic_vector(8 DOWNTO 0);
	SIGNAL logic_output: std_logic_vector(7 DOWNTO 0);
	
BEGIN

	clock: OSCH PORT MAP ('0', clk);

	debouncing1: Debouncer PORT MAP (clk, trigger_ah, triggerh_db);
	debouncing2: Debouncer PORT MAP (clk, trigger_al, triggerl_db);
	
	unit_switching: PROCESS (triggerh_db)
	BEGIN
		IF rising_edge(triggerh_db) THEN
			unit_mux <= NOT unit_mux;
		END IF;
	END PROCESS unit_switching;
	
	logic: 			LogicUnit		PORT MAP (clk, unit_mux, input, input_register, selector, triggerl_db, logic_output);
	arith: 			ArithmeticUnit 	PORT MAP (unit_mux, input, input_register, selector(1 DOWNTO 0), arith_output);
	double_dabble: 	DoubleDabble	PORT MAP (clk, arith_output, bcd0, bcd1, bcd2);
	decoding0:		DisplayDecoder 	PORT MAP (bcd0, bcd0(3), digit0);
	decoding1:		DisplayDecoder 	PORT MAP (bcd1, bcd1(3), digit1);
	decoding2:		DisplayDecoder 	PORT MAP (bcd2, bcd2(3), digit2);
	decoding3:		DisplayDecoder 	PORT MAP (bcd3, bcd3(3), digit3);
	
	WITH (unit_mux & selector) SELECT digit0 <= logic_indicator0 WHEN "0000", arith_indicator0 WHEN "1000", digit0 WHEN OTHERS;
	WITH (unit_mux & selector) SELECT digit1 <= logic_indicator1 WHEN "0000", arith_indicator1 WHEN "1000", digit1 WHEN OTHERS;
	WITH (unit_mux & selector) SELECT digit2 <= logic_indicator2 WHEN "0000", arith_indicator2 WHEN "1000", digit2 WHEN OTHERS;
	WITH (unit_mux & selector) SELECT digit3 <= logic_indicator3 WHEN "0000", arith_indicator3 WHEN "1000", digit3 WHEN OTHERS;
	
	display_output: DisplayDriver PORT MAP (clk, digit0, digit1, digit2, digit3, segments, digits);
	bits <= logic_output;
	
END Behavior;
