-------------------------------------------------------------------------------
--	 ___   _   __    _  _____   __    _     __   _      __    ___   __  
--	| | \ | | / /`_ | |  | |   / /\  | |   ( (` | |_|  / /\  | |_) ( (` 
--	|_|_/ |_| \_\_/ |_|  |_|  /_/--\ |_|__ _)_) |_| | /_/--\ |_|_) _)_) 
--
--	8-Bit Async Arithmetic Logic Unit
--
--	decoder_7seg.vhd
--		BCD to 7 segment decoder
--
--	Designed and built with </> and <3 by @digitalshabs.
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY DisplayDecoder IS
	PORT(
		bcd: 		IN 	std_logic_vector(3 DOWNTO 0);
		sign: 		IN 	std_logic;
		segments: 	OUT std_logic_vector(7 DOWNTO 0)
	);
END DisplayDecoder;

ARCHITECTURE Behavior OF DisplayDecoder IS

	CONSTANT digit0: std_logic_vector(7 DOWNTO 0) := "11111100";
	CONSTANT digit1: std_logic_vector(7 DOWNTO 0) := "01100000";
	CONSTANT digit2: std_logic_vector(7 DOWNTO 0) := "11011010";
	CONSTANT digit3: std_logic_vector(7 DOWNTO 0) := "11110010";
	CONSTANT digit4: std_logic_vector(7 DOWNTO 0) := "01100110";
	CONSTANT digit5: std_logic_vector(7 DOWNTO 0) := "10110110";
	CONSTANT digit6: std_logic_vector(7 DOWNTO 0) := "10111110";
	CONSTANT digit7: std_logic_vector(7 DOWNTO 0) := "11100000";
	CONSTANT digit8: std_logic_vector(7 DOWNTO 0) := "11111110";
	CONSTANT digit9: std_logic_vector(7 DOWNTO 0) := "11100110";
	CONSTANT digitA: std_logic_vector(7 DOWNTO 0) := "11101110";
	CONSTANT digitB: std_logic_vector(7 DOWNTO 0) := "00111110";
	CONSTANT digitC: std_logic_vector(7 DOWNTO 0) := "10011100";
	CONSTANT digitD: std_logic_vector(7 DOWNTO 0) := "01111010";
	CONSTANT digitE: std_logic_vector(7 DOWNTO 0) := "10011110";
	CONSTANT digitF: std_logic_vector(7 DOWNTO 0) := "10001110";
	CONSTANT digitMinus: std_logic_vector(7 DOWNTO 0) := "00000010";
	
	SIGNAL segments_tmp: std_logic_vector(7 DOWNTO 0);
	
BEGIN

	WITH bcd SELECT
		segments <=	digit0 WHEN x"0",
					digit1 WHEN x"1",
					digit2 WHEN x"2",
					digit3 WHEN x"3",
					digit4 WHEN x"4",
					digit5 WHEN x"5",
					digit6 WHEN x"6",
					digit7 WHEN x"7",
					digit8 WHEN x"8",
					digit9 WHEN x"9",
					digitA WHEN x"A",
					digitB WHEN x"B",
					digitC WHEN x"C",
					digitD WHEN x"D",
					digitE WHEN x"E",
					digitF WHEN OTHERS;
						
	segments <= segments_tmp WHEN sign = '0' ELSE digitMinus;

END Behavior;