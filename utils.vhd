LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

PACKAGE utils IS
	FUNCTION to_std_logic(value : BOOLEAN) RETURN std_logic;

	TYPE data_cache_state_t IS (READY, LINEREQ, LINEREPL);
	TYPE inst_cache_state_t IS (READY, LINEREQ);
	TYPE store_buffer_state_t IS (READY, FLUSHING, FLUSHED);

	CONSTANT REG_EXC_CODE : STD_LOGIC_VECTOR := x"1E";
	CONSTANT REG_EXC_DATA : STD_LOGIC_VECTOR := x"1F";

	CONSTANT INST_TYPE_NOP : STD_LOGIC_VECTOR := "00";
	CONSTANT INST_TYPE_ALU : STD_LOGIC_VECTOR := "01";
	CONSTANT INST_TYPE_MEM : STD_LOGIC_VECTOR := "10";
	CONSTANT INST_TYPE_MUL : STD_LOGIC_VECTOR := "11";
END utils;

PACKAGE BODY utils IS
	FUNCTION to_std_logic(value : BOOLEAN) RETURN std_logic IS
	BEGIN
		IF value THEN
			RETURN('1');
		ELSE
			RETURN('0');
		END IF;
	END FUNCTION to_std_logic;
END utils;
