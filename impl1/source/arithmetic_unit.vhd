-------------------------------------------------------------------------------
--	 ___   _   __    _  _____   __    _     __   _      __    ___   __  
--	| | \ | | / /`_ | |  | |   / /\  | |   ( (` | |_|  / /\  | |_) ( (` 
--	|_|_/ |_| \_\_/ |_|  |_|  /_/--\ |_|__ _)_) |_| | /_/--\ |_|_) _)_) 
--
--	8-Bit Async Arithmetic Logic Unit
--
--	arithmetic_unit.vhd
--		8-Bit arithmetic unit
--
--	Designed and built with </> and <3 by @digitalshabs.
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY ArithmeticUnit IS
	PORT (
		enable:		IN 	std_logic;
		x:			IN	std_logic_vector(7 DOWNTO 0);
		y:			IN	std_logic_vector(7 DOWNTO 0);
		selector: 	IN	std_logic_vector(1 DOWNTO 0);
		z:			OUT std_logic_vector(8 DOWNTO 0)
	);
END ArithmeticUnit;

ARCHITECTURE Behavior OF ArithmeticUnit IS

	CONSTANT operation_add: std_logic_vector(2 DOWNTO 0) := "101";
	CONSTANT operation_sub: std_logic_vector(2 DOWNTO 0) := "110";

	SIGNAL add_result: std_logic_vector(8 DOWNTO 0);
	SIGNAL sub_result: std_logic_vector(8 DOWNTO 0);

BEGIN

	add_result <= std_logic_vector(unsigned('0' & x) + unsigned('0' & y));
	sub_result <= std_logic_vector(signed('0' & x) - signed('0' & y));

	WITH (enable & selector) SELECT z <=
		add_result WHEN operation_add,
		sub_result WHEN operation_sub,
		"ZZZZZZZZZ" WHEN OTHERS;

END Behavior;
