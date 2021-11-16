-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/16/2021 10:43:18"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	coba_uart IS
    PORT (
	clock_y3 : IN std_logic;
	user_reset : IN std_logic;
	usb_rs232_rxd : IN std_logic;
	usb_rs232_txd : BUFFER std_logic
	);
END coba_uart;

-- Design Ports Information
-- usb_rs232_txd	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_y3	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_reset	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usb_rs232_rxd	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF coba_uart IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_y3 : std_logic;
SIGNAL ww_user_reset : std_logic;
SIGNAL ww_usb_rs232_rxd : std_logic;
SIGNAL ww_usb_rs232_txd : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \clock_y3~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \usb_rs232_txd~output_o\ : std_logic;
SIGNAL \clock_y3~input_o\ : std_logic;
SIGNAL \clock_y3~inputclkctrl_outclk\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[0]~11_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[5]~23\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[6]~24_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[6]~25\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[7]~26_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[7]~27\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[8]~28_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[8]~29\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[9]~30_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[9]~31\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[10]~32_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|Equal4~2_combout\ : std_logic;
SIGNAL \user_reset~input_o\ : std_logic;
SIGNAL \reset_sync~q\ : std_logic;
SIGNAL \reset~q\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|Equal4~0_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[3]~15_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[0]~12\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[1]~13_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[1]~14\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[2]~16_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[2]~17\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[3]~18_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[3]~19\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[4]~20_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[4]~21\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter[5]~22_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|Equal4~1_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_tick~0_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|tx_baud_tick~q\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_state~11_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_count~2_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_count[1]~1_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_count[1]~3_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_count~4_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_count~5_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|Add6~0_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_state~8_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_state~12_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_state~13_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_state.tx_send_stop_bit~q\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_state~9_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_state~10_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_state.tx_send_start_bit~q\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_count[1]~0_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_data_in_ack~q\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[0]~10_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|LessThan1~0_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|LessThan1~1_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[7]~27\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[8]~28_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_count~2_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_state~12_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_state.rx_get_data~q\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_count[2]~0_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_count~3_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_state~7_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_count~1_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_state~9_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_counter[0]~7_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_counter[6]~11_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_counter[0]~8\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_counter[1]~9_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_counter[1]~10\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_counter[2]~12_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_counter[2]~13\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_counter[3]~14_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|Equal0~0_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_counter[3]~15\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_counter[4]~16_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_counter[4]~17\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_counter[5]~18_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_counter[5]~19\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_counter[6]~20_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|Equal0~1_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_tick~0_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_tick~q\ : std_logic;
SIGNAL \usb_rs232_rxd~input_o\ : std_logic;
SIGNAL \rx_sync~feeder_combout\ : std_logic;
SIGNAL \rx_sync~q\ : std_logic;
SIGNAL \rx~feeder_combout\ : std_logic;
SIGNAL \rx~q\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_data_sr~1_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_bit~1_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_data_sr~0_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_filter~0_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_filter~1_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_filter~2_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_bit~0_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_bit~q\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_state~10_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_state~13_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_state.rx_get_start_bit~q\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_bit_spacing~3_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_bit_spacing~4_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|Add3~0_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_bit_spacing~2_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_bit_spacing~1_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_bit_tick~0_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_bit_tick~1_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_bit_tick~q\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_state~8_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_state~11_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_state.rx_get_stop_bit~q\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_data_out_stb~0_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_data_out_stb~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_data_out_stb~q\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~0_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~0_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~1\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~2_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~3\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~4_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~5\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~6_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Equal2~0_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~7\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~9\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~11\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~13\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~15\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~16_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~10_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~8_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~14_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~12_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Equal2~1_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Equal2~2_combout\ : std_logic;
SIGNAL \loopback_inst1|fifo_data_out_stb~0_combout\ : std_logic;
SIGNAL \loopback_inst1|fifo_data_out_stb~q\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~4_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|LessThan2~1_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|LessThan2~0_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|LessThan2~2_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~2_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~3_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~5_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~1\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~6_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~8_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~7\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~9_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~11_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~10\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~12_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~14_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~13\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~15_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~17_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~16\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~18_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~20_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~19\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~21_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~23_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~22\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~24_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~26_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~25\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~27_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~32_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~28\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~29_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add4~31_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~17\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Add1~18_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Equal1~0_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Equal1~1_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|Equal1~2_combout\ : std_logic;
SIGNAL \loopback_inst1|fifo_data_in_stb~0_combout\ : std_logic;
SIGNAL \loopback_inst1|fifo_data_in_stb~q\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[0]~13_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[8]~29\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[9]~30_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|LessThan1~2_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[0]~12_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[0]~11\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[1]~14_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[1]~15\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[2]~16_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[2]~17\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[3]~18_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[3]~19\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[4]~20_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[4]~21\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[5]~22_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[5]~23\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[6]~24_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[6]~25\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|write_pointer[7]~26_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|level[0]~3_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|level[0]~1_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|level[0]~0_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|level[0]~2_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|level[0]~4_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|level[0]~5_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|LessThan0~1_cout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|LessThan0~3_cout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|LessThan0~5_cout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|LessThan0~7_cout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|LessThan0~9_cout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|LessThan0~11_cout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|LessThan0~13_cout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|LessThan0~15_cout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|LessThan0~17_cout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|LessThan0~18_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|level[0]~6_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_data_in_stb~0_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_data_in_stb~q\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_data~0_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory~28_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory~19_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory~22_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory~21_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory~20_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory~23_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory~24_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory~25_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_data_vec~7_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_data_vec~6_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_data_vec~5_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_data_vec~4_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_data_vec~3_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_data_vec~2_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_data_vec~1_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_rx_data_vec~0_combout\ : std_logic;
SIGNAL \loopback_inst1|fifo_data_in[0]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory~26_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_data_in~0_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory~30_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[29]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory~31_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory~32_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[35]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory~34_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_data_vec~7_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[33]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory~33_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_data_vec~6_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_data_vec~5_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_data_vec~4_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_data_vec~3_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory~29_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_data_vec~2_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \loopback_inst1|receive_buffer|fifo_memory~27_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_data_vec~1_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_data_vec~0_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_data~1_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_data~2_combout\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|uart_tx_data~q\ : std_logic;
SIGNAL \usb_rs232_txd~0_combout\ : std_logic;
SIGNAL \usb_rs232_txd~reg0_q\ : std_logic;
SIGNAL \loopback_inst1|uart_inst|rx_baud_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \loopback_inst1|uart_inst|uart_tx_data_vec\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \loopback_inst1|receive_buffer|write_pointer\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \loopback_inst1|receive_buffer|read_pointer\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \loopback_inst1|uart_inst|tx_baud_counter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \loopback_inst1|uart_data_in\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \loopback_inst1|uart_inst|uart_rx_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \loopback_inst1|uart_inst|uart_tx_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\ : std_logic_vector(0 TO 36);
SIGNAL \loopback_inst1|fifo_data_in\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \loopback_inst1|uart_inst|uart_rx_data_vec\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \loopback_inst1|uart_inst|uart_rx_bit_spacing\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \loopback_inst1|uart_inst|uart_rx_filter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \loopback_inst1|uart_inst|uart_rx_data_sr\ : std_logic_vector(1 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock_y3 <= clock_y3;
ww_user_reset <= user_reset;
ww_usb_rs232_rxd <= usb_rs232_rxd;
usb_rs232_txd <= ww_usb_rs232_txd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & \loopback_inst1|fifo_data_in\(7) & \loopback_inst1|fifo_data_in\(6) & \loopback_inst1|fifo_data_in\(5) & \loopback_inst1|fifo_data_in\(4) & 
\loopback_inst1|fifo_data_in\(3) & \loopback_inst1|fifo_data_in\(2) & \loopback_inst1|fifo_data_in\(1) & \loopback_inst1|fifo_data_in\(0));

\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\loopback_inst1|receive_buffer|write_pointer\(9) & \loopback_inst1|receive_buffer|write_pointer\(8) & \loopback_inst1|receive_buffer|write_pointer\(7) & 
\loopback_inst1|receive_buffer|write_pointer\(6) & \loopback_inst1|receive_buffer|write_pointer\(5) & \loopback_inst1|receive_buffer|write_pointer\(4) & \loopback_inst1|receive_buffer|write_pointer\(3) & 
\loopback_inst1|receive_buffer|write_pointer\(2) & \loopback_inst1|receive_buffer|write_pointer\(1) & \loopback_inst1|receive_buffer|write_pointer\(0));

\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\loopback_inst1|receive_buffer|Add4~31_combout\ & \loopback_inst1|receive_buffer|Add4~32_combout\ & \loopback_inst1|receive_buffer|Add4~26_combout\ & 
\loopback_inst1|receive_buffer|Add4~23_combout\ & \loopback_inst1|receive_buffer|Add4~20_combout\ & \loopback_inst1|receive_buffer|Add4~17_combout\ & \loopback_inst1|receive_buffer|Add4~14_combout\ & \loopback_inst1|receive_buffer|Add4~11_combout\ & 
\loopback_inst1|receive_buffer|Add4~8_combout\ & \loopback_inst1|receive_buffer|Add4~5_combout\);

\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a1\ <= \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a2\ <= \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a3\ <= \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a4\ <= \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a5\ <= \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a6\ <= \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a7\ <= \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\clock_y3~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_y3~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N16
\usb_rs232_txd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \usb_rs232_txd~reg0_q\,
	devoe => ww_devoe,
	o => \usb_rs232_txd~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock_y3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_y3,
	o => \clock_y3~input_o\);

-- Location: CLKCTRL_G2
\clock_y3~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_y3~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_y3~inputclkctrl_outclk\);

-- Location: LCCOMB_X23_Y17_N2
\loopback_inst1|uart_inst|tx_baud_counter[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|tx_baud_counter[0]~11_combout\ = \loopback_inst1|uart_inst|tx_baud_counter\(0) $ (VCC)
-- \loopback_inst1|uart_inst|tx_baud_counter[0]~12\ = CARRY(\loopback_inst1|uart_inst|tx_baud_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|tx_baud_counter\(0),
	datad => VCC,
	combout => \loopback_inst1|uart_inst|tx_baud_counter[0]~11_combout\,
	cout => \loopback_inst1|uart_inst|tx_baud_counter[0]~12\);

-- Location: LCCOMB_X23_Y17_N12
\loopback_inst1|uart_inst|tx_baud_counter[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|tx_baud_counter[5]~22_combout\ = (\loopback_inst1|uart_inst|tx_baud_counter\(5) & (!\loopback_inst1|uart_inst|tx_baud_counter[4]~21\)) # (!\loopback_inst1|uart_inst|tx_baud_counter\(5) & 
-- ((\loopback_inst1|uart_inst|tx_baud_counter[4]~21\) # (GND)))
-- \loopback_inst1|uart_inst|tx_baud_counter[5]~23\ = CARRY((!\loopback_inst1|uart_inst|tx_baud_counter[4]~21\) # (!\loopback_inst1|uart_inst|tx_baud_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|tx_baud_counter\(5),
	datad => VCC,
	cin => \loopback_inst1|uart_inst|tx_baud_counter[4]~21\,
	combout => \loopback_inst1|uart_inst|tx_baud_counter[5]~22_combout\,
	cout => \loopback_inst1|uart_inst|tx_baud_counter[5]~23\);

-- Location: LCCOMB_X23_Y17_N14
\loopback_inst1|uart_inst|tx_baud_counter[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|tx_baud_counter[6]~24_combout\ = (\loopback_inst1|uart_inst|tx_baud_counter\(6) & (\loopback_inst1|uart_inst|tx_baud_counter[5]~23\ $ (GND))) # (!\loopback_inst1|uart_inst|tx_baud_counter\(6) & 
-- (!\loopback_inst1|uart_inst|tx_baud_counter[5]~23\ & VCC))
-- \loopback_inst1|uart_inst|tx_baud_counter[6]~25\ = CARRY((\loopback_inst1|uart_inst|tx_baud_counter\(6) & !\loopback_inst1|uart_inst|tx_baud_counter[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|tx_baud_counter\(6),
	datad => VCC,
	cin => \loopback_inst1|uart_inst|tx_baud_counter[5]~23\,
	combout => \loopback_inst1|uart_inst|tx_baud_counter[6]~24_combout\,
	cout => \loopback_inst1|uart_inst|tx_baud_counter[6]~25\);

-- Location: FF_X23_Y17_N15
\loopback_inst1|uart_inst|tx_baud_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|tx_baud_counter[6]~24_combout\,
	sclr => \loopback_inst1|uart_inst|tx_baud_counter[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|tx_baud_counter\(6));

-- Location: LCCOMB_X23_Y17_N16
\loopback_inst1|uart_inst|tx_baud_counter[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|tx_baud_counter[7]~26_combout\ = (\loopback_inst1|uart_inst|tx_baud_counter\(7) & (!\loopback_inst1|uart_inst|tx_baud_counter[6]~25\)) # (!\loopback_inst1|uart_inst|tx_baud_counter\(7) & 
-- ((\loopback_inst1|uart_inst|tx_baud_counter[6]~25\) # (GND)))
-- \loopback_inst1|uart_inst|tx_baud_counter[7]~27\ = CARRY((!\loopback_inst1|uart_inst|tx_baud_counter[6]~25\) # (!\loopback_inst1|uart_inst|tx_baud_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|tx_baud_counter\(7),
	datad => VCC,
	cin => \loopback_inst1|uart_inst|tx_baud_counter[6]~25\,
	combout => \loopback_inst1|uart_inst|tx_baud_counter[7]~26_combout\,
	cout => \loopback_inst1|uart_inst|tx_baud_counter[7]~27\);

-- Location: FF_X23_Y17_N17
\loopback_inst1|uart_inst|tx_baud_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|tx_baud_counter[7]~26_combout\,
	sclr => \loopback_inst1|uart_inst|tx_baud_counter[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|tx_baud_counter\(7));

-- Location: LCCOMB_X23_Y17_N18
\loopback_inst1|uart_inst|tx_baud_counter[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|tx_baud_counter[8]~28_combout\ = (\loopback_inst1|uart_inst|tx_baud_counter\(8) & (\loopback_inst1|uart_inst|tx_baud_counter[7]~27\ $ (GND))) # (!\loopback_inst1|uart_inst|tx_baud_counter\(8) & 
-- (!\loopback_inst1|uart_inst|tx_baud_counter[7]~27\ & VCC))
-- \loopback_inst1|uart_inst|tx_baud_counter[8]~29\ = CARRY((\loopback_inst1|uart_inst|tx_baud_counter\(8) & !\loopback_inst1|uart_inst|tx_baud_counter[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|tx_baud_counter\(8),
	datad => VCC,
	cin => \loopback_inst1|uart_inst|tx_baud_counter[7]~27\,
	combout => \loopback_inst1|uart_inst|tx_baud_counter[8]~28_combout\,
	cout => \loopback_inst1|uart_inst|tx_baud_counter[8]~29\);

-- Location: FF_X23_Y17_N19
\loopback_inst1|uart_inst|tx_baud_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|tx_baud_counter[8]~28_combout\,
	sclr => \loopback_inst1|uart_inst|tx_baud_counter[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|tx_baud_counter\(8));

-- Location: LCCOMB_X23_Y17_N20
\loopback_inst1|uart_inst|tx_baud_counter[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|tx_baud_counter[9]~30_combout\ = (\loopback_inst1|uart_inst|tx_baud_counter\(9) & (!\loopback_inst1|uart_inst|tx_baud_counter[8]~29\)) # (!\loopback_inst1|uart_inst|tx_baud_counter\(9) & 
-- ((\loopback_inst1|uart_inst|tx_baud_counter[8]~29\) # (GND)))
-- \loopback_inst1|uart_inst|tx_baud_counter[9]~31\ = CARRY((!\loopback_inst1|uart_inst|tx_baud_counter[8]~29\) # (!\loopback_inst1|uart_inst|tx_baud_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|tx_baud_counter\(9),
	datad => VCC,
	cin => \loopback_inst1|uart_inst|tx_baud_counter[8]~29\,
	combout => \loopback_inst1|uart_inst|tx_baud_counter[9]~30_combout\,
	cout => \loopback_inst1|uart_inst|tx_baud_counter[9]~31\);

-- Location: FF_X23_Y17_N21
\loopback_inst1|uart_inst|tx_baud_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|tx_baud_counter[9]~30_combout\,
	sclr => \loopback_inst1|uart_inst|tx_baud_counter[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|tx_baud_counter\(9));

-- Location: LCCOMB_X23_Y17_N22
\loopback_inst1|uart_inst|tx_baud_counter[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|tx_baud_counter[10]~32_combout\ = \loopback_inst1|uart_inst|tx_baud_counter\(10) $ (!\loopback_inst1|uart_inst|tx_baud_counter[9]~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|tx_baud_counter\(10),
	cin => \loopback_inst1|uart_inst|tx_baud_counter[9]~31\,
	combout => \loopback_inst1|uart_inst|tx_baud_counter[10]~32_combout\);

-- Location: FF_X23_Y17_N23
\loopback_inst1|uart_inst|tx_baud_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|tx_baud_counter[10]~32_combout\,
	sclr => \loopback_inst1|uart_inst|tx_baud_counter[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|tx_baud_counter\(10));

-- Location: LCCOMB_X23_Y17_N0
\loopback_inst1|uart_inst|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|Equal4~2_combout\ = (\loopback_inst1|uart_inst|tx_baud_counter\(8)) # ((\loopback_inst1|uart_inst|tx_baud_counter\(9)) # (!\loopback_inst1|uart_inst|tx_baud_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|tx_baud_counter\(8),
	datac => \loopback_inst1|uart_inst|tx_baud_counter\(10),
	datad => \loopback_inst1|uart_inst|tx_baud_counter\(9),
	combout => \loopback_inst1|uart_inst|Equal4~2_combout\);

-- Location: IOIBUF_X0_Y11_N22
\user_reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_user_reset,
	o => \user_reset~input_o\);

-- Location: FF_X22_Y16_N3
reset_sync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \user_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_sync~q\);

-- Location: FF_X22_Y16_N1
reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \reset_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset~q\);

-- Location: LCCOMB_X23_Y17_N28
\loopback_inst1|uart_inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|Equal4~0_combout\ = (\loopback_inst1|uart_inst|tx_baud_counter\(2)) # ((\loopback_inst1|uart_inst|tx_baud_counter\(1)) # ((\loopback_inst1|uart_inst|tx_baud_counter\(3)) # (!\loopback_inst1|uart_inst|tx_baud_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|tx_baud_counter\(2),
	datab => \loopback_inst1|uart_inst|tx_baud_counter\(1),
	datac => \loopback_inst1|uart_inst|tx_baud_counter\(3),
	datad => \loopback_inst1|uart_inst|tx_baud_counter\(0),
	combout => \loopback_inst1|uart_inst|Equal4~0_combout\);

-- Location: LCCOMB_X23_Y17_N30
\loopback_inst1|uart_inst|tx_baud_counter[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|tx_baud_counter[3]~15_combout\ = (\reset~q\) # ((!\loopback_inst1|uart_inst|Equal4~1_combout\ & (!\loopback_inst1|uart_inst|Equal4~2_combout\ & !\loopback_inst1|uart_inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|Equal4~1_combout\,
	datab => \loopback_inst1|uart_inst|Equal4~2_combout\,
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|Equal4~0_combout\,
	combout => \loopback_inst1|uart_inst|tx_baud_counter[3]~15_combout\);

-- Location: FF_X23_Y17_N3
\loopback_inst1|uart_inst|tx_baud_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|tx_baud_counter[0]~11_combout\,
	sclr => \loopback_inst1|uart_inst|tx_baud_counter[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|tx_baud_counter\(0));

-- Location: LCCOMB_X23_Y17_N4
\loopback_inst1|uart_inst|tx_baud_counter[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|tx_baud_counter[1]~13_combout\ = (\loopback_inst1|uart_inst|tx_baud_counter\(1) & (!\loopback_inst1|uart_inst|tx_baud_counter[0]~12\)) # (!\loopback_inst1|uart_inst|tx_baud_counter\(1) & 
-- ((\loopback_inst1|uart_inst|tx_baud_counter[0]~12\) # (GND)))
-- \loopback_inst1|uart_inst|tx_baud_counter[1]~14\ = CARRY((!\loopback_inst1|uart_inst|tx_baud_counter[0]~12\) # (!\loopback_inst1|uart_inst|tx_baud_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|tx_baud_counter\(1),
	datad => VCC,
	cin => \loopback_inst1|uart_inst|tx_baud_counter[0]~12\,
	combout => \loopback_inst1|uart_inst|tx_baud_counter[1]~13_combout\,
	cout => \loopback_inst1|uart_inst|tx_baud_counter[1]~14\);

-- Location: FF_X23_Y17_N5
\loopback_inst1|uart_inst|tx_baud_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|tx_baud_counter[1]~13_combout\,
	sclr => \loopback_inst1|uart_inst|tx_baud_counter[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|tx_baud_counter\(1));

-- Location: LCCOMB_X23_Y17_N6
\loopback_inst1|uart_inst|tx_baud_counter[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|tx_baud_counter[2]~16_combout\ = (\loopback_inst1|uart_inst|tx_baud_counter\(2) & (\loopback_inst1|uart_inst|tx_baud_counter[1]~14\ $ (GND))) # (!\loopback_inst1|uart_inst|tx_baud_counter\(2) & 
-- (!\loopback_inst1|uart_inst|tx_baud_counter[1]~14\ & VCC))
-- \loopback_inst1|uart_inst|tx_baud_counter[2]~17\ = CARRY((\loopback_inst1|uart_inst|tx_baud_counter\(2) & !\loopback_inst1|uart_inst|tx_baud_counter[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|tx_baud_counter\(2),
	datad => VCC,
	cin => \loopback_inst1|uart_inst|tx_baud_counter[1]~14\,
	combout => \loopback_inst1|uart_inst|tx_baud_counter[2]~16_combout\,
	cout => \loopback_inst1|uart_inst|tx_baud_counter[2]~17\);

-- Location: FF_X23_Y17_N7
\loopback_inst1|uart_inst|tx_baud_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|tx_baud_counter[2]~16_combout\,
	sclr => \loopback_inst1|uart_inst|tx_baud_counter[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|tx_baud_counter\(2));

-- Location: LCCOMB_X23_Y17_N8
\loopback_inst1|uart_inst|tx_baud_counter[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|tx_baud_counter[3]~18_combout\ = (\loopback_inst1|uart_inst|tx_baud_counter\(3) & (!\loopback_inst1|uart_inst|tx_baud_counter[2]~17\)) # (!\loopback_inst1|uart_inst|tx_baud_counter\(3) & 
-- ((\loopback_inst1|uart_inst|tx_baud_counter[2]~17\) # (GND)))
-- \loopback_inst1|uart_inst|tx_baud_counter[3]~19\ = CARRY((!\loopback_inst1|uart_inst|tx_baud_counter[2]~17\) # (!\loopback_inst1|uart_inst|tx_baud_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|tx_baud_counter\(3),
	datad => VCC,
	cin => \loopback_inst1|uart_inst|tx_baud_counter[2]~17\,
	combout => \loopback_inst1|uart_inst|tx_baud_counter[3]~18_combout\,
	cout => \loopback_inst1|uart_inst|tx_baud_counter[3]~19\);

-- Location: FF_X23_Y17_N9
\loopback_inst1|uart_inst|tx_baud_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|tx_baud_counter[3]~18_combout\,
	sclr => \loopback_inst1|uart_inst|tx_baud_counter[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|tx_baud_counter\(3));

-- Location: LCCOMB_X23_Y17_N10
\loopback_inst1|uart_inst|tx_baud_counter[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|tx_baud_counter[4]~20_combout\ = (\loopback_inst1|uart_inst|tx_baud_counter\(4) & (\loopback_inst1|uart_inst|tx_baud_counter[3]~19\ $ (GND))) # (!\loopback_inst1|uart_inst|tx_baud_counter\(4) & 
-- (!\loopback_inst1|uart_inst|tx_baud_counter[3]~19\ & VCC))
-- \loopback_inst1|uart_inst|tx_baud_counter[4]~21\ = CARRY((\loopback_inst1|uart_inst|tx_baud_counter\(4) & !\loopback_inst1|uart_inst|tx_baud_counter[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|tx_baud_counter\(4),
	datad => VCC,
	cin => \loopback_inst1|uart_inst|tx_baud_counter[3]~19\,
	combout => \loopback_inst1|uart_inst|tx_baud_counter[4]~20_combout\,
	cout => \loopback_inst1|uart_inst|tx_baud_counter[4]~21\);

-- Location: FF_X23_Y17_N11
\loopback_inst1|uart_inst|tx_baud_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|tx_baud_counter[4]~20_combout\,
	sclr => \loopback_inst1|uart_inst|tx_baud_counter[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|tx_baud_counter\(4));

-- Location: FF_X23_Y17_N13
\loopback_inst1|uart_inst|tx_baud_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|tx_baud_counter[5]~22_combout\,
	sclr => \loopback_inst1|uart_inst|tx_baud_counter[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|tx_baud_counter\(5));

-- Location: LCCOMB_X23_Y17_N26
\loopback_inst1|uart_inst|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|Equal4~1_combout\ = (\loopback_inst1|uart_inst|tx_baud_counter\(5)) # ((\loopback_inst1|uart_inst|tx_baud_counter\(7)) # ((\loopback_inst1|uart_inst|tx_baud_counter\(6)) # (!\loopback_inst1|uart_inst|tx_baud_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|tx_baud_counter\(5),
	datab => \loopback_inst1|uart_inst|tx_baud_counter\(7),
	datac => \loopback_inst1|uart_inst|tx_baud_counter\(6),
	datad => \loopback_inst1|uart_inst|tx_baud_counter\(4),
	combout => \loopback_inst1|uart_inst|Equal4~1_combout\);

-- Location: LCCOMB_X23_Y17_N24
\loopback_inst1|uart_inst|tx_baud_tick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|tx_baud_tick~0_combout\ = (!\loopback_inst1|uart_inst|Equal4~1_combout\ & (!\loopback_inst1|uart_inst|Equal4~2_combout\ & (!\reset~q\ & !\loopback_inst1|uart_inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|Equal4~1_combout\,
	datab => \loopback_inst1|uart_inst|Equal4~2_combout\,
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|Equal4~0_combout\,
	combout => \loopback_inst1|uart_inst|tx_baud_tick~0_combout\);

-- Location: FF_X23_Y17_N25
\loopback_inst1|uart_inst|tx_baud_tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|tx_baud_tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|tx_baud_tick~q\);

-- Location: LCCOMB_X26_Y18_N2
\loopback_inst1|uart_inst|uart_tx_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_state~11_combout\ = (\loopback_inst1|uart_inst|uart_tx_state~9_combout\ & (!\loopback_inst1|uart_inst|uart_tx_state~8_combout\ & ((\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\) # 
-- (\loopback_inst1|uart_inst|uart_tx_count[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_tx_state~9_combout\,
	datab => \loopback_inst1|uart_inst|uart_tx_state~8_combout\,
	datac => \loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\,
	datad => \loopback_inst1|uart_inst|uart_tx_count[1]~0_combout\,
	combout => \loopback_inst1|uart_inst|uart_tx_state~11_combout\);

-- Location: FF_X26_Y18_N3
\loopback_inst1|uart_inst|uart_tx_state.tx_send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_tx_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\);

-- Location: LCCOMB_X26_Y18_N16
\loopback_inst1|uart_inst|uart_tx_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_count~2_combout\ = (!\reset~q\ & (\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & (\loopback_inst1|uart_inst|uart_tx_count\(2) $ (\loopback_inst1|uart_inst|Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datab => \loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\,
	datac => \loopback_inst1|uart_inst|uart_tx_count\(2),
	datad => \loopback_inst1|uart_inst|Add6~0_combout\,
	combout => \loopback_inst1|uart_inst|uart_tx_count~2_combout\);

-- Location: LCCOMB_X26_Y18_N14
\loopback_inst1|uart_inst|uart_tx_count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_count[1]~1_combout\ = (\loopback_inst1|uart_inst|uart_tx_count[1]~0_combout\) # ((\reset~q\) # ((\loopback_inst1|uart_inst|tx_baud_tick~q\ & \loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|tx_baud_tick~q\,
	datab => \loopback_inst1|uart_inst|uart_tx_count[1]~0_combout\,
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\,
	combout => \loopback_inst1|uart_inst|uart_tx_count[1]~1_combout\);

-- Location: FF_X26_Y18_N17
\loopback_inst1|uart_inst|uart_tx_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_tx_count~2_combout\,
	ena => \loopback_inst1|uart_inst|uart_tx_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_tx_count\(2));

-- Location: LCCOMB_X26_Y18_N0
\loopback_inst1|uart_inst|uart_tx_count[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_count[1]~3_combout\ = (!\reset~q\ & (\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & ((!\loopback_inst1|uart_inst|uart_tx_count\(2)) # (!\loopback_inst1|uart_inst|Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|Add6~0_combout\,
	datab => \loopback_inst1|uart_inst|uart_tx_count\(2),
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\,
	combout => \loopback_inst1|uart_inst|uart_tx_count[1]~3_combout\);

-- Location: LCCOMB_X26_Y18_N26
\loopback_inst1|uart_inst|uart_tx_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_count~4_combout\ = (!\loopback_inst1|uart_inst|uart_tx_count\(0) & \loopback_inst1|uart_inst|uart_tx_count[1]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \loopback_inst1|uart_inst|uart_tx_count\(0),
	datad => \loopback_inst1|uart_inst|uart_tx_count[1]~3_combout\,
	combout => \loopback_inst1|uart_inst|uart_tx_count~4_combout\);

-- Location: FF_X26_Y18_N27
\loopback_inst1|uart_inst|uart_tx_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_tx_count~4_combout\,
	ena => \loopback_inst1|uart_inst|uart_tx_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_tx_count\(0));

-- Location: LCCOMB_X26_Y18_N24
\loopback_inst1|uart_inst|uart_tx_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_count~5_combout\ = (\loopback_inst1|uart_inst|uart_tx_count[1]~3_combout\ & (\loopback_inst1|uart_inst|uart_tx_count\(0) $ (\loopback_inst1|uart_inst|uart_tx_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_tx_count\(0),
	datac => \loopback_inst1|uart_inst|uart_tx_count\(1),
	datad => \loopback_inst1|uart_inst|uart_tx_count[1]~3_combout\,
	combout => \loopback_inst1|uart_inst|uart_tx_count~5_combout\);

-- Location: FF_X26_Y18_N25
\loopback_inst1|uart_inst|uart_tx_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_tx_count~5_combout\,
	ena => \loopback_inst1|uart_inst|uart_tx_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_tx_count\(1));

-- Location: LCCOMB_X26_Y18_N6
\loopback_inst1|uart_inst|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|Add6~0_combout\ = (\loopback_inst1|uart_inst|uart_tx_count\(0) & \loopback_inst1|uart_inst|uart_tx_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \loopback_inst1|uart_inst|uart_tx_count\(0),
	datad => \loopback_inst1|uart_inst|uart_tx_count\(1),
	combout => \loopback_inst1|uart_inst|Add6~0_combout\);

-- Location: LCCOMB_X26_Y18_N8
\loopback_inst1|uart_inst|uart_tx_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_state~8_combout\ = (\loopback_inst1|uart_inst|Add6~0_combout\ & (\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & (\loopback_inst1|uart_inst|uart_tx_count\(2) & \loopback_inst1|uart_inst|tx_baud_tick~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|Add6~0_combout\,
	datab => \loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\,
	datac => \loopback_inst1|uart_inst|uart_tx_count\(2),
	datad => \loopback_inst1|uart_inst|tx_baud_tick~q\,
	combout => \loopback_inst1|uart_inst|uart_tx_state~8_combout\);

-- Location: LCCOMB_X26_Y18_N10
\loopback_inst1|uart_inst|uart_tx_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_state~12_combout\ = (\loopback_inst1|uart_inst|uart_tx_state~9_combout\ & (\loopback_inst1|uart_inst|uart_tx_state.tx_send_stop_bit~q\ & (!\loopback_inst1|uart_inst|uart_tx_state~8_combout\ & 
-- !\loopback_inst1|uart_inst|uart_tx_count[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_tx_state~9_combout\,
	datab => \loopback_inst1|uart_inst|uart_tx_state.tx_send_stop_bit~q\,
	datac => \loopback_inst1|uart_inst|uart_tx_state~8_combout\,
	datad => \loopback_inst1|uart_inst|uart_tx_count[1]~0_combout\,
	combout => \loopback_inst1|uart_inst|uart_tx_state~12_combout\);

-- Location: LCCOMB_X26_Y18_N18
\loopback_inst1|uart_inst|uart_tx_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_state~13_combout\ = (\loopback_inst1|uart_inst|uart_tx_state~12_combout\) # ((\loopback_inst1|uart_inst|uart_tx_state~8_combout\ & !\reset~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|uart_tx_state~8_combout\,
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|uart_tx_state~12_combout\,
	combout => \loopback_inst1|uart_inst|uart_tx_state~13_combout\);

-- Location: FF_X26_Y18_N19
\loopback_inst1|uart_inst|uart_tx_state.tx_send_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_tx_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_tx_state.tx_send_stop_bit~q\);

-- Location: LCCOMB_X26_Y18_N12
\loopback_inst1|uart_inst|uart_tx_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_state~9_combout\ = (!\reset~q\ & ((!\loopback_inst1|uart_inst|uart_tx_state.tx_send_stop_bit~q\) # (!\loopback_inst1|uart_inst|tx_baud_tick~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|tx_baud_tick~q\,
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|uart_tx_state.tx_send_stop_bit~q\,
	combout => \loopback_inst1|uart_inst|uart_tx_state~9_combout\);

-- Location: LCCOMB_X26_Y18_N20
\loopback_inst1|uart_inst|uart_tx_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_state~10_combout\ = (\loopback_inst1|uart_inst|uart_tx_state~9_combout\ & ((\loopback_inst1|uart_inst|uart_tx_state~8_combout\) # ((\loopback_inst1|uart_inst|uart_tx_state.tx_send_start_bit~q\) # 
-- (\loopback_inst1|uart_inst|uart_tx_count[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_tx_state~9_combout\,
	datab => \loopback_inst1|uart_inst|uart_tx_state~8_combout\,
	datac => \loopback_inst1|uart_inst|uart_tx_state.tx_send_start_bit~q\,
	datad => \loopback_inst1|uart_inst|uart_tx_count[1]~0_combout\,
	combout => \loopback_inst1|uart_inst|uart_tx_state~10_combout\);

-- Location: FF_X26_Y18_N21
\loopback_inst1|uart_inst|uart_tx_state.tx_send_start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_tx_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_tx_state.tx_send_start_bit~q\);

-- Location: LCCOMB_X26_Y17_N0
\loopback_inst1|uart_inst|uart_tx_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_count[1]~0_combout\ = (\loopback_inst1|uart_data_in_stb~q\ & (\loopback_inst1|uart_inst|tx_baud_tick~q\ & !\loopback_inst1|uart_inst|uart_tx_state.tx_send_start_bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_data_in_stb~q\,
	datac => \loopback_inst1|uart_inst|tx_baud_tick~q\,
	datad => \loopback_inst1|uart_inst|uart_tx_state.tx_send_start_bit~q\,
	combout => \loopback_inst1|uart_inst|uart_tx_count[1]~0_combout\);

-- Location: FF_X26_Y17_N1
\loopback_inst1|uart_inst|uart_rx_data_in_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_tx_count[1]~0_combout\,
	sclr => \reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_data_in_ack~q\);

-- Location: LCCOMB_X25_Y16_N8
\loopback_inst1|receive_buffer|write_pointer[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|write_pointer[0]~10_combout\ = \loopback_inst1|receive_buffer|write_pointer\(0) $ (VCC)
-- \loopback_inst1|receive_buffer|write_pointer[0]~11\ = CARRY(\loopback_inst1|receive_buffer|write_pointer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|receive_buffer|write_pointer\(0),
	datad => VCC,
	combout => \loopback_inst1|receive_buffer|write_pointer[0]~10_combout\,
	cout => \loopback_inst1|receive_buffer|write_pointer[0]~11\);

-- Location: LCCOMB_X24_Y16_N0
\loopback_inst1|receive_buffer|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|LessThan1~0_combout\ = (((!\loopback_inst1|receive_buffer|write_pointer\(2)) # (!\loopback_inst1|receive_buffer|write_pointer\(3))) # (!\loopback_inst1|receive_buffer|write_pointer\(1))) # 
-- (!\loopback_inst1|receive_buffer|write_pointer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(0),
	datab => \loopback_inst1|receive_buffer|write_pointer\(1),
	datac => \loopback_inst1|receive_buffer|write_pointer\(3),
	datad => \loopback_inst1|receive_buffer|write_pointer\(2),
	combout => \loopback_inst1|receive_buffer|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y16_N2
\loopback_inst1|receive_buffer|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|LessThan1~1_combout\ = (((!\loopback_inst1|receive_buffer|write_pointer\(7)) # (!\loopback_inst1|receive_buffer|write_pointer\(5))) # (!\loopback_inst1|receive_buffer|write_pointer\(4))) # 
-- (!\loopback_inst1|receive_buffer|write_pointer\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(6),
	datab => \loopback_inst1|receive_buffer|write_pointer\(4),
	datac => \loopback_inst1|receive_buffer|write_pointer\(5),
	datad => \loopback_inst1|receive_buffer|write_pointer\(7),
	combout => \loopback_inst1|receive_buffer|LessThan1~1_combout\);

-- Location: LCCOMB_X25_Y16_N22
\loopback_inst1|receive_buffer|write_pointer[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|write_pointer[7]~26_combout\ = (\loopback_inst1|receive_buffer|write_pointer\(7) & (!\loopback_inst1|receive_buffer|write_pointer[6]~25\)) # (!\loopback_inst1|receive_buffer|write_pointer\(7) & 
-- ((\loopback_inst1|receive_buffer|write_pointer[6]~25\) # (GND)))
-- \loopback_inst1|receive_buffer|write_pointer[7]~27\ = CARRY((!\loopback_inst1|receive_buffer|write_pointer[6]~25\) # (!\loopback_inst1|receive_buffer|write_pointer\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(7),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|write_pointer[6]~25\,
	combout => \loopback_inst1|receive_buffer|write_pointer[7]~26_combout\,
	cout => \loopback_inst1|receive_buffer|write_pointer[7]~27\);

-- Location: LCCOMB_X25_Y16_N24
\loopback_inst1|receive_buffer|write_pointer[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|write_pointer[8]~28_combout\ = (\loopback_inst1|receive_buffer|write_pointer\(8) & (\loopback_inst1|receive_buffer|write_pointer[7]~27\ $ (GND))) # (!\loopback_inst1|receive_buffer|write_pointer\(8) & 
-- (!\loopback_inst1|receive_buffer|write_pointer[7]~27\ & VCC))
-- \loopback_inst1|receive_buffer|write_pointer[8]~29\ = CARRY((\loopback_inst1|receive_buffer|write_pointer\(8) & !\loopback_inst1|receive_buffer|write_pointer[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|receive_buffer|write_pointer\(8),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|write_pointer[7]~27\,
	combout => \loopback_inst1|receive_buffer|write_pointer[8]~28_combout\,
	cout => \loopback_inst1|receive_buffer|write_pointer[8]~29\);

-- Location: LCCOMB_X25_Y15_N26
\loopback_inst1|uart_inst|uart_rx_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_count~2_combout\ = (!\reset~q\ & !\loopback_inst1|uart_inst|uart_rx_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datac => \loopback_inst1|uart_inst|uart_rx_count\(0),
	combout => \loopback_inst1|uart_inst|uart_rx_count~2_combout\);

-- Location: LCCOMB_X25_Y15_N16
\loopback_inst1|uart_inst|uart_rx_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_state~12_combout\ = (\loopback_inst1|uart_inst|uart_rx_state~10_combout\ & (\loopback_inst1|uart_inst|uart_rx_state~9_combout\)) # (!\loopback_inst1|uart_inst|uart_rx_state~10_combout\ & 
-- ((\loopback_inst1|uart_inst|uart_rx_state.rx_get_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_rx_state~9_combout\,
	datac => \loopback_inst1|uart_inst|uart_rx_state.rx_get_data~q\,
	datad => \loopback_inst1|uart_inst|uart_rx_state~10_combout\,
	combout => \loopback_inst1|uart_inst|uart_rx_state~12_combout\);

-- Location: FF_X25_Y15_N17
\loopback_inst1|uart_inst|uart_rx_state.rx_get_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_state.rx_get_data~q\);

-- Location: LCCOMB_X25_Y15_N14
\loopback_inst1|uart_inst|uart_rx_count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_count[2]~0_combout\ = (\reset~q\) # ((\loopback_inst1|uart_inst|uart_rx_state.rx_get_data~q\ & \loopback_inst1|uart_inst|uart_rx_bit_tick~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|uart_rx_state.rx_get_data~q\,
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|uart_rx_bit_tick~q\,
	combout => \loopback_inst1|uart_inst|uart_rx_count[2]~0_combout\);

-- Location: FF_X25_Y15_N27
\loopback_inst1|uart_inst|uart_rx_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_count~2_combout\,
	ena => \loopback_inst1|uart_inst|uart_rx_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_count\(0));

-- Location: LCCOMB_X25_Y15_N8
\loopback_inst1|uart_inst|uart_rx_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_count~3_combout\ = \loopback_inst1|uart_inst|uart_rx_count\(0) $ (\loopback_inst1|uart_inst|uart_rx_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_rx_count\(0),
	datac => \loopback_inst1|uart_inst|uart_rx_count\(1),
	combout => \loopback_inst1|uart_inst|uart_rx_count~3_combout\);

-- Location: FF_X25_Y15_N9
\loopback_inst1|uart_inst|uart_rx_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_count~3_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_inst|uart_rx_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_count\(1));

-- Location: LCCOMB_X25_Y15_N20
\loopback_inst1|uart_inst|uart_rx_state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_state~7_combout\ = (\loopback_inst1|uart_inst|uart_rx_count\(0) & (\loopback_inst1|uart_inst|uart_rx_state.rx_get_data~q\ & (\loopback_inst1|uart_inst|uart_rx_count\(1) & \loopback_inst1|uart_inst|uart_rx_bit_tick~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_rx_count\(0),
	datab => \loopback_inst1|uart_inst|uart_rx_state.rx_get_data~q\,
	datac => \loopback_inst1|uart_inst|uart_rx_count\(1),
	datad => \loopback_inst1|uart_inst|uart_rx_bit_tick~q\,
	combout => \loopback_inst1|uart_inst|uart_rx_state~7_combout\);

-- Location: LCCOMB_X25_Y15_N6
\loopback_inst1|uart_inst|uart_rx_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_count~1_combout\ = \loopback_inst1|uart_inst|uart_rx_count\(2) $ (((\loopback_inst1|uart_inst|uart_rx_count\(0) & \loopback_inst1|uart_inst|uart_rx_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_rx_count\(0),
	datab => \loopback_inst1|uart_inst|uart_rx_count\(1),
	datac => \loopback_inst1|uart_inst|uart_rx_count\(2),
	combout => \loopback_inst1|uart_inst|uart_rx_count~1_combout\);

-- Location: FF_X25_Y15_N7
\loopback_inst1|uart_inst|uart_rx_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_count~1_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_inst|uart_rx_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_count\(2));

-- Location: LCCOMB_X25_Y15_N30
\loopback_inst1|uart_inst|uart_rx_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_state~9_combout\ = (!\loopback_inst1|uart_inst|uart_rx_data_out_stb~0_combout\ & (!\reset~q\ & ((!\loopback_inst1|uart_inst|uart_rx_count\(2)) # (!\loopback_inst1|uart_inst|uart_rx_state~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_rx_data_out_stb~0_combout\,
	datab => \loopback_inst1|uart_inst|uart_rx_state~7_combout\,
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|uart_rx_count\(2),
	combout => \loopback_inst1|uart_inst|uart_rx_state~9_combout\);

-- Location: LCCOMB_X28_Y17_N10
\loopback_inst1|uart_inst|rx_baud_counter[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|rx_baud_counter[0]~7_combout\ = \loopback_inst1|uart_inst|rx_baud_counter\(0) $ (VCC)
-- \loopback_inst1|uart_inst|rx_baud_counter[0]~8\ = CARRY(\loopback_inst1|uart_inst|rx_baud_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|rx_baud_counter\(0),
	datad => VCC,
	combout => \loopback_inst1|uart_inst|rx_baud_counter[0]~7_combout\,
	cout => \loopback_inst1|uart_inst|rx_baud_counter[0]~8\);

-- Location: LCCOMB_X28_Y17_N26
\loopback_inst1|uart_inst|rx_baud_counter[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|rx_baud_counter[6]~11_combout\ = (\reset~q\) # (!\loopback_inst1|uart_inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|Equal0~1_combout\,
	combout => \loopback_inst1|uart_inst|rx_baud_counter[6]~11_combout\);

-- Location: FF_X28_Y17_N11
\loopback_inst1|uart_inst|rx_baud_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|rx_baud_counter[0]~7_combout\,
	sclr => \loopback_inst1|uart_inst|rx_baud_counter[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|rx_baud_counter\(0));

-- Location: LCCOMB_X28_Y17_N12
\loopback_inst1|uart_inst|rx_baud_counter[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|rx_baud_counter[1]~9_combout\ = (\loopback_inst1|uart_inst|rx_baud_counter\(1) & (!\loopback_inst1|uart_inst|rx_baud_counter[0]~8\)) # (!\loopback_inst1|uart_inst|rx_baud_counter\(1) & 
-- ((\loopback_inst1|uart_inst|rx_baud_counter[0]~8\) # (GND)))
-- \loopback_inst1|uart_inst|rx_baud_counter[1]~10\ = CARRY((!\loopback_inst1|uart_inst|rx_baud_counter[0]~8\) # (!\loopback_inst1|uart_inst|rx_baud_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|rx_baud_counter\(1),
	datad => VCC,
	cin => \loopback_inst1|uart_inst|rx_baud_counter[0]~8\,
	combout => \loopback_inst1|uart_inst|rx_baud_counter[1]~9_combout\,
	cout => \loopback_inst1|uart_inst|rx_baud_counter[1]~10\);

-- Location: FF_X28_Y17_N13
\loopback_inst1|uart_inst|rx_baud_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|rx_baud_counter[1]~9_combout\,
	sclr => \loopback_inst1|uart_inst|rx_baud_counter[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|rx_baud_counter\(1));

-- Location: LCCOMB_X28_Y17_N14
\loopback_inst1|uart_inst|rx_baud_counter[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|rx_baud_counter[2]~12_combout\ = (\loopback_inst1|uart_inst|rx_baud_counter\(2) & (\loopback_inst1|uart_inst|rx_baud_counter[1]~10\ $ (GND))) # (!\loopback_inst1|uart_inst|rx_baud_counter\(2) & 
-- (!\loopback_inst1|uart_inst|rx_baud_counter[1]~10\ & VCC))
-- \loopback_inst1|uart_inst|rx_baud_counter[2]~13\ = CARRY((\loopback_inst1|uart_inst|rx_baud_counter\(2) & !\loopback_inst1|uart_inst|rx_baud_counter[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|rx_baud_counter\(2),
	datad => VCC,
	cin => \loopback_inst1|uart_inst|rx_baud_counter[1]~10\,
	combout => \loopback_inst1|uart_inst|rx_baud_counter[2]~12_combout\,
	cout => \loopback_inst1|uart_inst|rx_baud_counter[2]~13\);

-- Location: FF_X28_Y17_N15
\loopback_inst1|uart_inst|rx_baud_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|rx_baud_counter[2]~12_combout\,
	sclr => \loopback_inst1|uart_inst|rx_baud_counter[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|rx_baud_counter\(2));

-- Location: LCCOMB_X28_Y17_N16
\loopback_inst1|uart_inst|rx_baud_counter[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|rx_baud_counter[3]~14_combout\ = (\loopback_inst1|uart_inst|rx_baud_counter\(3) & (!\loopback_inst1|uart_inst|rx_baud_counter[2]~13\)) # (!\loopback_inst1|uart_inst|rx_baud_counter\(3) & 
-- ((\loopback_inst1|uart_inst|rx_baud_counter[2]~13\) # (GND)))
-- \loopback_inst1|uart_inst|rx_baud_counter[3]~15\ = CARRY((!\loopback_inst1|uart_inst|rx_baud_counter[2]~13\) # (!\loopback_inst1|uart_inst|rx_baud_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|rx_baud_counter\(3),
	datad => VCC,
	cin => \loopback_inst1|uart_inst|rx_baud_counter[2]~13\,
	combout => \loopback_inst1|uart_inst|rx_baud_counter[3]~14_combout\,
	cout => \loopback_inst1|uart_inst|rx_baud_counter[3]~15\);

-- Location: FF_X28_Y17_N17
\loopback_inst1|uart_inst|rx_baud_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|rx_baud_counter[3]~14_combout\,
	sclr => \loopback_inst1|uart_inst|rx_baud_counter[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|rx_baud_counter\(3));

-- Location: LCCOMB_X28_Y17_N30
\loopback_inst1|uart_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|Equal0~0_combout\ = (\loopback_inst1|uart_inst|rx_baud_counter\(1)) # ((\loopback_inst1|uart_inst|rx_baud_counter\(3)) # ((\loopback_inst1|uart_inst|rx_baud_counter\(2)) # (!\loopback_inst1|uart_inst|rx_baud_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|rx_baud_counter\(1),
	datab => \loopback_inst1|uart_inst|rx_baud_counter\(3),
	datac => \loopback_inst1|uart_inst|rx_baud_counter\(2),
	datad => \loopback_inst1|uart_inst|rx_baud_counter\(0),
	combout => \loopback_inst1|uart_inst|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y17_N18
\loopback_inst1|uart_inst|rx_baud_counter[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|rx_baud_counter[4]~16_combout\ = (\loopback_inst1|uart_inst|rx_baud_counter\(4) & (\loopback_inst1|uart_inst|rx_baud_counter[3]~15\ $ (GND))) # (!\loopback_inst1|uart_inst|rx_baud_counter\(4) & 
-- (!\loopback_inst1|uart_inst|rx_baud_counter[3]~15\ & VCC))
-- \loopback_inst1|uart_inst|rx_baud_counter[4]~17\ = CARRY((\loopback_inst1|uart_inst|rx_baud_counter\(4) & !\loopback_inst1|uart_inst|rx_baud_counter[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|rx_baud_counter\(4),
	datad => VCC,
	cin => \loopback_inst1|uart_inst|rx_baud_counter[3]~15\,
	combout => \loopback_inst1|uart_inst|rx_baud_counter[4]~16_combout\,
	cout => \loopback_inst1|uart_inst|rx_baud_counter[4]~17\);

-- Location: FF_X28_Y17_N19
\loopback_inst1|uart_inst|rx_baud_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|rx_baud_counter[4]~16_combout\,
	sclr => \loopback_inst1|uart_inst|rx_baud_counter[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|rx_baud_counter\(4));

-- Location: LCCOMB_X28_Y17_N20
\loopback_inst1|uart_inst|rx_baud_counter[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|rx_baud_counter[5]~18_combout\ = (\loopback_inst1|uart_inst|rx_baud_counter\(5) & (!\loopback_inst1|uart_inst|rx_baud_counter[4]~17\)) # (!\loopback_inst1|uart_inst|rx_baud_counter\(5) & 
-- ((\loopback_inst1|uart_inst|rx_baud_counter[4]~17\) # (GND)))
-- \loopback_inst1|uart_inst|rx_baud_counter[5]~19\ = CARRY((!\loopback_inst1|uart_inst|rx_baud_counter[4]~17\) # (!\loopback_inst1|uart_inst|rx_baud_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|rx_baud_counter\(5),
	datad => VCC,
	cin => \loopback_inst1|uart_inst|rx_baud_counter[4]~17\,
	combout => \loopback_inst1|uart_inst|rx_baud_counter[5]~18_combout\,
	cout => \loopback_inst1|uart_inst|rx_baud_counter[5]~19\);

-- Location: FF_X28_Y17_N21
\loopback_inst1|uart_inst|rx_baud_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|rx_baud_counter[5]~18_combout\,
	sclr => \loopback_inst1|uart_inst|rx_baud_counter[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|rx_baud_counter\(5));

-- Location: LCCOMB_X28_Y17_N22
\loopback_inst1|uart_inst|rx_baud_counter[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|rx_baud_counter[6]~20_combout\ = \loopback_inst1|uart_inst|rx_baud_counter\(6) $ (!\loopback_inst1|uart_inst|rx_baud_counter[5]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|rx_baud_counter\(6),
	cin => \loopback_inst1|uart_inst|rx_baud_counter[5]~19\,
	combout => \loopback_inst1|uart_inst|rx_baud_counter[6]~20_combout\);

-- Location: FF_X28_Y17_N23
\loopback_inst1|uart_inst|rx_baud_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|rx_baud_counter[6]~20_combout\,
	sclr => \loopback_inst1|uart_inst|rx_baud_counter[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|rx_baud_counter\(6));

-- Location: LCCOMB_X28_Y17_N28
\loopback_inst1|uart_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|Equal0~1_combout\ = (\loopback_inst1|uart_inst|Equal0~0_combout\) # ((\loopback_inst1|uart_inst|rx_baud_counter\(5)) # ((\loopback_inst1|uart_inst|rx_baud_counter\(4)) # (!\loopback_inst1|uart_inst|rx_baud_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|Equal0~0_combout\,
	datab => \loopback_inst1|uart_inst|rx_baud_counter\(5),
	datac => \loopback_inst1|uart_inst|rx_baud_counter\(6),
	datad => \loopback_inst1|uart_inst|rx_baud_counter\(4),
	combout => \loopback_inst1|uart_inst|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y17_N8
\loopback_inst1|uart_inst|rx_baud_tick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|rx_baud_tick~0_combout\ = (!\reset~q\ & !\loopback_inst1|uart_inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|Equal0~1_combout\,
	combout => \loopback_inst1|uart_inst|rx_baud_tick~0_combout\);

-- Location: FF_X28_Y17_N9
\loopback_inst1|uart_inst|rx_baud_tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|rx_baud_tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|rx_baud_tick~q\);

-- Location: IOIBUF_X28_Y24_N22
\usb_rs232_rxd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_usb_rs232_rxd,
	o => \usb_rs232_rxd~input_o\);

-- Location: LCCOMB_X28_Y16_N28
\rx_sync~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_sync~feeder_combout\ = \usb_rs232_rxd~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \usb_rs232_rxd~input_o\,
	combout => \rx_sync~feeder_combout\);

-- Location: FF_X28_Y16_N29
rx_sync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \rx_sync~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_sync~q\);

-- Location: LCCOMB_X28_Y16_N22
\rx~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx~feeder_combout\ = \rx_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_sync~q\,
	combout => \rx~feeder_combout\);

-- Location: FF_X28_Y16_N23
rx : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \rx~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx~q\);

-- Location: LCCOMB_X28_Y16_N12
\loopback_inst1|uart_inst|uart_rx_data_sr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_data_sr~1_combout\ = (!\reset~q\ & !\rx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~q\,
	datac => \rx~q\,
	combout => \loopback_inst1|uart_inst|uart_rx_data_sr~1_combout\);

-- Location: LCCOMB_X28_Y16_N10
\loopback_inst1|uart_inst|uart_rx_bit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_bit~1_combout\ = (\reset~q\) # (\loopback_inst1|uart_inst|rx_baud_tick~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|rx_baud_tick~q\,
	combout => \loopback_inst1|uart_inst|uart_rx_bit~1_combout\);

-- Location: FF_X28_Y16_N13
\loopback_inst1|uart_inst|uart_rx_data_sr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_data_sr~1_combout\,
	ena => \loopback_inst1|uart_inst|uart_rx_bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_data_sr\(0));

-- Location: LCCOMB_X28_Y16_N4
\loopback_inst1|uart_inst|uart_rx_data_sr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_data_sr~0_combout\ = (!\reset~q\ & \loopback_inst1|uart_inst|uart_rx_data_sr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|uart_rx_data_sr\(0),
	combout => \loopback_inst1|uart_inst|uart_rx_data_sr~0_combout\);

-- Location: FF_X28_Y16_N5
\loopback_inst1|uart_inst|uart_rx_data_sr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_data_sr~0_combout\,
	ena => \loopback_inst1|uart_inst|uart_rx_bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_data_sr\(1));

-- Location: LCCOMB_X28_Y16_N18
\loopback_inst1|uart_inst|uart_rx_filter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_filter~0_combout\ = (\loopback_inst1|uart_inst|uart_rx_filter\(0) & (\loopback_inst1|uart_inst|rx_baud_tick~q\ & ((!\loopback_inst1|uart_inst|uart_rx_data_sr\(1)) # (!\loopback_inst1|uart_inst|uart_rx_filter\(1))))) # 
-- (!\loopback_inst1|uart_inst|uart_rx_filter\(0) & (((!\loopback_inst1|uart_inst|uart_rx_filter\(1) & !\loopback_inst1|uart_inst|uart_rx_data_sr\(1))) # (!\loopback_inst1|uart_inst|rx_baud_tick~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_rx_filter\(0),
	datab => \loopback_inst1|uart_inst|uart_rx_filter\(1),
	datac => \loopback_inst1|uart_inst|uart_rx_data_sr\(1),
	datad => \loopback_inst1|uart_inst|rx_baud_tick~q\,
	combout => \loopback_inst1|uart_inst|uart_rx_filter~0_combout\);

-- Location: LCCOMB_X28_Y16_N30
\loopback_inst1|uart_inst|uart_rx_filter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_filter~1_combout\ = (!\reset~q\ & !\loopback_inst1|uart_inst|uart_rx_filter~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|uart_rx_filter~0_combout\,
	combout => \loopback_inst1|uart_inst|uart_rx_filter~1_combout\);

-- Location: FF_X28_Y16_N31
\loopback_inst1|uart_inst|uart_rx_filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_filter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_filter\(0));

-- Location: LCCOMB_X28_Y16_N20
\loopback_inst1|uart_inst|uart_rx_filter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_filter~2_combout\ = (!\reset~q\ & ((\loopback_inst1|uart_inst|uart_rx_data_sr\(1) & ((\loopback_inst1|uart_inst|uart_rx_filter\(1)) # (\loopback_inst1|uart_inst|uart_rx_filter\(0)))) # 
-- (!\loopback_inst1|uart_inst|uart_rx_data_sr\(1) & (\loopback_inst1|uart_inst|uart_rx_filter\(1) & \loopback_inst1|uart_inst|uart_rx_filter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datab => \loopback_inst1|uart_inst|uart_rx_data_sr\(1),
	datac => \loopback_inst1|uart_inst|uart_rx_filter\(1),
	datad => \loopback_inst1|uart_inst|uart_rx_filter\(0),
	combout => \loopback_inst1|uart_inst|uart_rx_filter~2_combout\);

-- Location: FF_X28_Y16_N21
\loopback_inst1|uart_inst|uart_rx_filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_filter~2_combout\,
	ena => \loopback_inst1|uart_inst|uart_rx_bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_filter\(1));

-- Location: LCCOMB_X28_Y16_N8
\loopback_inst1|uart_inst|uart_rx_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_bit~0_combout\ = (!\reset~q\ & ((\loopback_inst1|uart_inst|uart_rx_filter\(1) & ((\loopback_inst1|uart_inst|uart_rx_bit~q\) # (\loopback_inst1|uart_inst|uart_rx_filter\(0)))) # 
-- (!\loopback_inst1|uart_inst|uart_rx_filter\(1) & (\loopback_inst1|uart_inst|uart_rx_bit~q\ & \loopback_inst1|uart_inst|uart_rx_filter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datab => \loopback_inst1|uart_inst|uart_rx_filter\(1),
	datac => \loopback_inst1|uart_inst|uart_rx_bit~q\,
	datad => \loopback_inst1|uart_inst|uart_rx_filter\(0),
	combout => \loopback_inst1|uart_inst|uart_rx_bit~0_combout\);

-- Location: FF_X28_Y16_N9
\loopback_inst1|uart_inst|uart_rx_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_bit~0_combout\,
	ena => \loopback_inst1|uart_inst|uart_rx_bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_bit~q\);

-- Location: LCCOMB_X25_Y15_N28
\loopback_inst1|uart_inst|uart_rx_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_state~10_combout\ = ((!\loopback_inst1|uart_inst|uart_rx_state.rx_get_start_bit~q\ & (\loopback_inst1|uart_inst|rx_baud_tick~q\ & \loopback_inst1|uart_inst|uart_rx_bit~q\))) # 
-- (!\loopback_inst1|uart_inst|uart_rx_state~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_rx_state~9_combout\,
	datab => \loopback_inst1|uart_inst|uart_rx_state.rx_get_start_bit~q\,
	datac => \loopback_inst1|uart_inst|rx_baud_tick~q\,
	datad => \loopback_inst1|uart_inst|uart_rx_bit~q\,
	combout => \loopback_inst1|uart_inst|uart_rx_state~10_combout\);

-- Location: LCCOMB_X25_Y15_N24
\loopback_inst1|uart_inst|uart_rx_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_state~13_combout\ = (\loopback_inst1|uart_inst|uart_rx_state~10_combout\ & (!\loopback_inst1|uart_inst|uart_rx_data_out_stb~0_combout\ & (!\reset~q\))) # (!\loopback_inst1|uart_inst|uart_rx_state~10_combout\ & 
-- (((\loopback_inst1|uart_inst|uart_rx_state.rx_get_start_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_rx_data_out_stb~0_combout\,
	datab => \reset~q\,
	datac => \loopback_inst1|uart_inst|uart_rx_state.rx_get_start_bit~q\,
	datad => \loopback_inst1|uart_inst|uart_rx_state~10_combout\,
	combout => \loopback_inst1|uart_inst|uart_rx_state~13_combout\);

-- Location: FF_X25_Y15_N25
\loopback_inst1|uart_inst|uart_rx_state.rx_get_start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_state.rx_get_start_bit~q\);

-- Location: LCCOMB_X26_Y15_N12
\loopback_inst1|uart_inst|uart_rx_bit_spacing~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_bit_spacing~3_combout\ = (!\loopback_inst1|uart_inst|uart_rx_bit_spacing\(0) & \loopback_inst1|uart_inst|uart_rx_state.rx_get_start_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \loopback_inst1|uart_inst|uart_rx_bit_spacing\(0),
	datad => \loopback_inst1|uart_inst|uart_rx_state.rx_get_start_bit~q\,
	combout => \loopback_inst1|uart_inst|uart_rx_bit_spacing~3_combout\);

-- Location: FF_X26_Y15_N13
\loopback_inst1|uart_inst|uart_rx_bit_spacing[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_bit_spacing~3_combout\,
	ena => \loopback_inst1|uart_inst|rx_baud_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_bit_spacing\(0));

-- Location: LCCOMB_X26_Y15_N26
\loopback_inst1|uart_inst|uart_rx_bit_spacing~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_bit_spacing~4_combout\ = (\loopback_inst1|uart_inst|uart_rx_state.rx_get_start_bit~q\ & (!\loopback_inst1|uart_inst|uart_rx_bit_tick~0_combout\ & (\loopback_inst1|uart_inst|uart_rx_bit_spacing\(0) $ 
-- (\loopback_inst1|uart_inst|uart_rx_bit_spacing\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_rx_bit_spacing\(0),
	datab => \loopback_inst1|uart_inst|uart_rx_state.rx_get_start_bit~q\,
	datac => \loopback_inst1|uart_inst|uart_rx_bit_spacing\(1),
	datad => \loopback_inst1|uart_inst|uart_rx_bit_tick~0_combout\,
	combout => \loopback_inst1|uart_inst|uart_rx_bit_spacing~4_combout\);

-- Location: FF_X26_Y15_N27
\loopback_inst1|uart_inst|uart_rx_bit_spacing[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_bit_spacing~4_combout\,
	ena => \loopback_inst1|uart_inst|rx_baud_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_bit_spacing\(1));

-- Location: LCCOMB_X26_Y15_N10
\loopback_inst1|uart_inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|Add3~0_combout\ = (\loopback_inst1|uart_inst|uart_rx_bit_spacing\(1) & \loopback_inst1|uart_inst|uart_rx_bit_spacing\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \loopback_inst1|uart_inst|uart_rx_bit_spacing\(1),
	datad => \loopback_inst1|uart_inst|uart_rx_bit_spacing\(0),
	combout => \loopback_inst1|uart_inst|Add3~0_combout\);

-- Location: LCCOMB_X26_Y15_N6
\loopback_inst1|uart_inst|uart_rx_bit_spacing~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_bit_spacing~2_combout\ = (\loopback_inst1|uart_inst|uart_rx_state.rx_get_start_bit~q\ & (!\loopback_inst1|uart_inst|uart_rx_bit_tick~0_combout\ & (\loopback_inst1|uart_inst|Add3~0_combout\ $ 
-- (\loopback_inst1|uart_inst|uart_rx_bit_spacing\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|Add3~0_combout\,
	datab => \loopback_inst1|uart_inst|uart_rx_state.rx_get_start_bit~q\,
	datac => \loopback_inst1|uart_inst|uart_rx_bit_spacing\(2),
	datad => \loopback_inst1|uart_inst|uart_rx_bit_tick~0_combout\,
	combout => \loopback_inst1|uart_inst|uart_rx_bit_spacing~2_combout\);

-- Location: FF_X26_Y15_N7
\loopback_inst1|uart_inst|uart_rx_bit_spacing[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_bit_spacing~2_combout\,
	ena => \loopback_inst1|uart_inst|rx_baud_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_bit_spacing\(2));

-- Location: LCCOMB_X26_Y15_N20
\loopback_inst1|uart_inst|uart_rx_bit_spacing~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_bit_spacing~1_combout\ = (\loopback_inst1|uart_inst|uart_rx_state.rx_get_start_bit~q\ & (\loopback_inst1|uart_inst|uart_rx_bit_spacing\(3) $ (((\loopback_inst1|uart_inst|Add3~0_combout\ & 
-- \loopback_inst1|uart_inst|uart_rx_bit_spacing\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|Add3~0_combout\,
	datab => \loopback_inst1|uart_inst|uart_rx_state.rx_get_start_bit~q\,
	datac => \loopback_inst1|uart_inst|uart_rx_bit_spacing\(3),
	datad => \loopback_inst1|uart_inst|uart_rx_bit_spacing\(2),
	combout => \loopback_inst1|uart_inst|uart_rx_bit_spacing~1_combout\);

-- Location: FF_X26_Y15_N21
\loopback_inst1|uart_inst|uart_rx_bit_spacing[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_bit_spacing~1_combout\,
	ena => \loopback_inst1|uart_inst|rx_baud_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_bit_spacing\(3));

-- Location: LCCOMB_X26_Y15_N28
\loopback_inst1|uart_inst|uart_rx_bit_tick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_bit_tick~0_combout\ = (\loopback_inst1|uart_inst|uart_rx_bit_spacing\(2) & (\loopback_inst1|uart_inst|uart_rx_bit_spacing\(3) & (\loopback_inst1|uart_inst|uart_rx_bit_spacing\(1) & 
-- \loopback_inst1|uart_inst|uart_rx_bit_spacing\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_rx_bit_spacing\(2),
	datab => \loopback_inst1|uart_inst|uart_rx_bit_spacing\(3),
	datac => \loopback_inst1|uart_inst|uart_rx_bit_spacing\(1),
	datad => \loopback_inst1|uart_inst|uart_rx_bit_spacing\(0),
	combout => \loopback_inst1|uart_inst|uart_rx_bit_tick~0_combout\);

-- Location: LCCOMB_X25_Y15_N18
\loopback_inst1|uart_inst|uart_rx_bit_tick~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_bit_tick~1_combout\ = (\loopback_inst1|uart_inst|uart_rx_bit_tick~0_combout\ & \loopback_inst1|uart_inst|rx_baud_tick~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|uart_rx_bit_tick~0_combout\,
	datac => \loopback_inst1|uart_inst|rx_baud_tick~q\,
	combout => \loopback_inst1|uart_inst|uart_rx_bit_tick~1_combout\);

-- Location: FF_X25_Y15_N19
\loopback_inst1|uart_inst|uart_rx_bit_tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_bit_tick~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_bit_tick~q\);

-- Location: LCCOMB_X25_Y15_N10
\loopback_inst1|uart_inst|uart_rx_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_state~8_combout\ = (\loopback_inst1|uart_inst|uart_rx_state~7_combout\ & \loopback_inst1|uart_inst|uart_rx_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|uart_rx_state~7_combout\,
	datad => \loopback_inst1|uart_inst|uart_rx_count\(2),
	combout => \loopback_inst1|uart_inst|uart_rx_state~8_combout\);

-- Location: LCCOMB_X25_Y15_N4
\loopback_inst1|uart_inst|uart_rx_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_state~11_combout\ = (\loopback_inst1|uart_inst|uart_rx_state~8_combout\ & (((\loopback_inst1|uart_inst|uart_rx_state.rx_get_stop_bit~q\ & !\loopback_inst1|uart_inst|uart_rx_state~10_combout\)) # (!\reset~q\))) # 
-- (!\loopback_inst1|uart_inst|uart_rx_state~8_combout\ & (((\loopback_inst1|uart_inst|uart_rx_state.rx_get_stop_bit~q\ & !\loopback_inst1|uart_inst|uart_rx_state~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_rx_state~8_combout\,
	datab => \reset~q\,
	datac => \loopback_inst1|uart_inst|uart_rx_state.rx_get_stop_bit~q\,
	datad => \loopback_inst1|uart_inst|uart_rx_state~10_combout\,
	combout => \loopback_inst1|uart_inst|uart_rx_state~11_combout\);

-- Location: FF_X25_Y15_N5
\loopback_inst1|uart_inst|uart_rx_state.rx_get_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_state.rx_get_stop_bit~q\);

-- Location: LCCOMB_X25_Y15_N22
\loopback_inst1|uart_inst|uart_rx_data_out_stb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_data_out_stb~0_combout\ = (\loopback_inst1|uart_inst|uart_rx_bit_tick~q\ & (\loopback_inst1|uart_inst|uart_rx_state.rx_get_stop_bit~q\ & !\loopback_inst1|uart_inst|uart_rx_bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|uart_rx_bit_tick~q\,
	datac => \loopback_inst1|uart_inst|uart_rx_state.rx_get_stop_bit~q\,
	datad => \loopback_inst1|uart_inst|uart_rx_bit~q\,
	combout => \loopback_inst1|uart_inst|uart_rx_data_out_stb~0_combout\);

-- Location: LCCOMB_X25_Y15_N0
\loopback_inst1|uart_inst|uart_rx_data_out_stb~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_data_out_stb~feeder_combout\ = \loopback_inst1|uart_inst|uart_rx_data_out_stb~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \loopback_inst1|uart_inst|uart_rx_data_out_stb~0_combout\,
	combout => \loopback_inst1|uart_inst|uart_rx_data_out_stb~feeder_combout\);

-- Location: FF_X25_Y15_N1
\loopback_inst1|uart_inst|uart_rx_data_out_stb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_data_out_stb~feeder_combout\,
	sclr => \reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_data_out_stb~q\);

-- Location: LCCOMB_X22_Y16_N8
\loopback_inst1|receive_buffer|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~0_combout\ = \loopback_inst1|receive_buffer|read_pointer\(0) $ (VCC)
-- \loopback_inst1|receive_buffer|Add4~1\ = CARRY(\loopback_inst1|receive_buffer|read_pointer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(0),
	datad => VCC,
	combout => \loopback_inst1|receive_buffer|Add4~0_combout\,
	cout => \loopback_inst1|receive_buffer|Add4~1\);

-- Location: LCCOMB_X26_Y16_N0
\loopback_inst1|receive_buffer|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add1~0_combout\ = (\loopback_inst1|receive_buffer|write_pointer\(0) & ((GND) # (!\loopback_inst1|receive_buffer|read_pointer\(0)))) # (!\loopback_inst1|receive_buffer|write_pointer\(0) & 
-- (\loopback_inst1|receive_buffer|read_pointer\(0) $ (GND)))
-- \loopback_inst1|receive_buffer|Add1~1\ = CARRY((\loopback_inst1|receive_buffer|write_pointer\(0)) # (!\loopback_inst1|receive_buffer|read_pointer\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(0),
	datab => \loopback_inst1|receive_buffer|read_pointer\(0),
	datad => VCC,
	combout => \loopback_inst1|receive_buffer|Add1~0_combout\,
	cout => \loopback_inst1|receive_buffer|Add1~1\);

-- Location: LCCOMB_X26_Y16_N2
\loopback_inst1|receive_buffer|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add1~2_combout\ = (\loopback_inst1|receive_buffer|write_pointer\(1) & ((\loopback_inst1|receive_buffer|read_pointer\(1) & (!\loopback_inst1|receive_buffer|Add1~1\)) # (!\loopback_inst1|receive_buffer|read_pointer\(1) & 
-- (\loopback_inst1|receive_buffer|Add1~1\ & VCC)))) # (!\loopback_inst1|receive_buffer|write_pointer\(1) & ((\loopback_inst1|receive_buffer|read_pointer\(1) & ((\loopback_inst1|receive_buffer|Add1~1\) # (GND))) # 
-- (!\loopback_inst1|receive_buffer|read_pointer\(1) & (!\loopback_inst1|receive_buffer|Add1~1\))))
-- \loopback_inst1|receive_buffer|Add1~3\ = CARRY((\loopback_inst1|receive_buffer|write_pointer\(1) & (\loopback_inst1|receive_buffer|read_pointer\(1) & !\loopback_inst1|receive_buffer|Add1~1\)) # (!\loopback_inst1|receive_buffer|write_pointer\(1) & 
-- ((\loopback_inst1|receive_buffer|read_pointer\(1)) # (!\loopback_inst1|receive_buffer|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(1),
	datab => \loopback_inst1|receive_buffer|read_pointer\(1),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|Add1~1\,
	combout => \loopback_inst1|receive_buffer|Add1~2_combout\,
	cout => \loopback_inst1|receive_buffer|Add1~3\);

-- Location: LCCOMB_X26_Y16_N4
\loopback_inst1|receive_buffer|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add1~4_combout\ = ((\loopback_inst1|receive_buffer|write_pointer\(2) $ (\loopback_inst1|receive_buffer|read_pointer\(2) $ (\loopback_inst1|receive_buffer|Add1~3\)))) # (GND)
-- \loopback_inst1|receive_buffer|Add1~5\ = CARRY((\loopback_inst1|receive_buffer|write_pointer\(2) & ((!\loopback_inst1|receive_buffer|Add1~3\) # (!\loopback_inst1|receive_buffer|read_pointer\(2)))) # (!\loopback_inst1|receive_buffer|write_pointer\(2) & 
-- (!\loopback_inst1|receive_buffer|read_pointer\(2) & !\loopback_inst1|receive_buffer|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(2),
	datab => \loopback_inst1|receive_buffer|read_pointer\(2),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|Add1~3\,
	combout => \loopback_inst1|receive_buffer|Add1~4_combout\,
	cout => \loopback_inst1|receive_buffer|Add1~5\);

-- Location: LCCOMB_X26_Y16_N6
\loopback_inst1|receive_buffer|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add1~6_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(3) & ((\loopback_inst1|receive_buffer|write_pointer\(3) & (!\loopback_inst1|receive_buffer|Add1~5\)) # (!\loopback_inst1|receive_buffer|write_pointer\(3) & 
-- ((\loopback_inst1|receive_buffer|Add1~5\) # (GND))))) # (!\loopback_inst1|receive_buffer|read_pointer\(3) & ((\loopback_inst1|receive_buffer|write_pointer\(3) & (\loopback_inst1|receive_buffer|Add1~5\ & VCC)) # 
-- (!\loopback_inst1|receive_buffer|write_pointer\(3) & (!\loopback_inst1|receive_buffer|Add1~5\))))
-- \loopback_inst1|receive_buffer|Add1~7\ = CARRY((\loopback_inst1|receive_buffer|read_pointer\(3) & ((!\loopback_inst1|receive_buffer|Add1~5\) # (!\loopback_inst1|receive_buffer|write_pointer\(3)))) # (!\loopback_inst1|receive_buffer|read_pointer\(3) & 
-- (!\loopback_inst1|receive_buffer|write_pointer\(3) & !\loopback_inst1|receive_buffer|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(3),
	datab => \loopback_inst1|receive_buffer|write_pointer\(3),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|Add1~5\,
	combout => \loopback_inst1|receive_buffer|Add1~6_combout\,
	cout => \loopback_inst1|receive_buffer|Add1~7\);

-- Location: LCCOMB_X26_Y16_N28
\loopback_inst1|receive_buffer|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Equal2~0_combout\ = (\loopback_inst1|receive_buffer|Add1~0_combout\) # ((\loopback_inst1|receive_buffer|Add1~2_combout\) # ((\loopback_inst1|receive_buffer|Add1~4_combout\) # 
-- (\loopback_inst1|receive_buffer|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|Add1~0_combout\,
	datab => \loopback_inst1|receive_buffer|Add1~2_combout\,
	datac => \loopback_inst1|receive_buffer|Add1~4_combout\,
	datad => \loopback_inst1|receive_buffer|Add1~6_combout\,
	combout => \loopback_inst1|receive_buffer|Equal2~0_combout\);

-- Location: LCCOMB_X26_Y16_N8
\loopback_inst1|receive_buffer|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add1~8_combout\ = ((\loopback_inst1|receive_buffer|read_pointer\(4) $ (\loopback_inst1|receive_buffer|write_pointer\(4) $ (\loopback_inst1|receive_buffer|Add1~7\)))) # (GND)
-- \loopback_inst1|receive_buffer|Add1~9\ = CARRY((\loopback_inst1|receive_buffer|read_pointer\(4) & (\loopback_inst1|receive_buffer|write_pointer\(4) & !\loopback_inst1|receive_buffer|Add1~7\)) # (!\loopback_inst1|receive_buffer|read_pointer\(4) & 
-- ((\loopback_inst1|receive_buffer|write_pointer\(4)) # (!\loopback_inst1|receive_buffer|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(4),
	datab => \loopback_inst1|receive_buffer|write_pointer\(4),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|Add1~7\,
	combout => \loopback_inst1|receive_buffer|Add1~8_combout\,
	cout => \loopback_inst1|receive_buffer|Add1~9\);

-- Location: LCCOMB_X26_Y16_N10
\loopback_inst1|receive_buffer|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add1~10_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(5) & ((\loopback_inst1|receive_buffer|write_pointer\(5) & (!\loopback_inst1|receive_buffer|Add1~9\)) # (!\loopback_inst1|receive_buffer|write_pointer\(5) & 
-- ((\loopback_inst1|receive_buffer|Add1~9\) # (GND))))) # (!\loopback_inst1|receive_buffer|read_pointer\(5) & ((\loopback_inst1|receive_buffer|write_pointer\(5) & (\loopback_inst1|receive_buffer|Add1~9\ & VCC)) # 
-- (!\loopback_inst1|receive_buffer|write_pointer\(5) & (!\loopback_inst1|receive_buffer|Add1~9\))))
-- \loopback_inst1|receive_buffer|Add1~11\ = CARRY((\loopback_inst1|receive_buffer|read_pointer\(5) & ((!\loopback_inst1|receive_buffer|Add1~9\) # (!\loopback_inst1|receive_buffer|write_pointer\(5)))) # (!\loopback_inst1|receive_buffer|read_pointer\(5) & 
-- (!\loopback_inst1|receive_buffer|write_pointer\(5) & !\loopback_inst1|receive_buffer|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(5),
	datab => \loopback_inst1|receive_buffer|write_pointer\(5),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|Add1~9\,
	combout => \loopback_inst1|receive_buffer|Add1~10_combout\,
	cout => \loopback_inst1|receive_buffer|Add1~11\);

-- Location: LCCOMB_X26_Y16_N12
\loopback_inst1|receive_buffer|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add1~12_combout\ = ((\loopback_inst1|receive_buffer|write_pointer\(6) $ (\loopback_inst1|receive_buffer|read_pointer\(6) $ (\loopback_inst1|receive_buffer|Add1~11\)))) # (GND)
-- \loopback_inst1|receive_buffer|Add1~13\ = CARRY((\loopback_inst1|receive_buffer|write_pointer\(6) & ((!\loopback_inst1|receive_buffer|Add1~11\) # (!\loopback_inst1|receive_buffer|read_pointer\(6)))) # (!\loopback_inst1|receive_buffer|write_pointer\(6) & 
-- (!\loopback_inst1|receive_buffer|read_pointer\(6) & !\loopback_inst1|receive_buffer|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(6),
	datab => \loopback_inst1|receive_buffer|read_pointer\(6),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|Add1~11\,
	combout => \loopback_inst1|receive_buffer|Add1~12_combout\,
	cout => \loopback_inst1|receive_buffer|Add1~13\);

-- Location: LCCOMB_X26_Y16_N14
\loopback_inst1|receive_buffer|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add1~14_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(7) & ((\loopback_inst1|receive_buffer|write_pointer\(7) & (!\loopback_inst1|receive_buffer|Add1~13\)) # (!\loopback_inst1|receive_buffer|write_pointer\(7) & 
-- ((\loopback_inst1|receive_buffer|Add1~13\) # (GND))))) # (!\loopback_inst1|receive_buffer|read_pointer\(7) & ((\loopback_inst1|receive_buffer|write_pointer\(7) & (\loopback_inst1|receive_buffer|Add1~13\ & VCC)) # 
-- (!\loopback_inst1|receive_buffer|write_pointer\(7) & (!\loopback_inst1|receive_buffer|Add1~13\))))
-- \loopback_inst1|receive_buffer|Add1~15\ = CARRY((\loopback_inst1|receive_buffer|read_pointer\(7) & ((!\loopback_inst1|receive_buffer|Add1~13\) # (!\loopback_inst1|receive_buffer|write_pointer\(7)))) # (!\loopback_inst1|receive_buffer|read_pointer\(7) & 
-- (!\loopback_inst1|receive_buffer|write_pointer\(7) & !\loopback_inst1|receive_buffer|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(7),
	datab => \loopback_inst1|receive_buffer|write_pointer\(7),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|Add1~13\,
	combout => \loopback_inst1|receive_buffer|Add1~14_combout\,
	cout => \loopback_inst1|receive_buffer|Add1~15\);

-- Location: LCCOMB_X26_Y16_N16
\loopback_inst1|receive_buffer|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add1~16_combout\ = ((\loopback_inst1|receive_buffer|read_pointer\(8) $ (\loopback_inst1|receive_buffer|write_pointer\(8) $ (\loopback_inst1|receive_buffer|Add1~15\)))) # (GND)
-- \loopback_inst1|receive_buffer|Add1~17\ = CARRY((\loopback_inst1|receive_buffer|read_pointer\(8) & (\loopback_inst1|receive_buffer|write_pointer\(8) & !\loopback_inst1|receive_buffer|Add1~15\)) # (!\loopback_inst1|receive_buffer|read_pointer\(8) & 
-- ((\loopback_inst1|receive_buffer|write_pointer\(8)) # (!\loopback_inst1|receive_buffer|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(8),
	datab => \loopback_inst1|receive_buffer|write_pointer\(8),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|Add1~15\,
	combout => \loopback_inst1|receive_buffer|Add1~16_combout\,
	cout => \loopback_inst1|receive_buffer|Add1~17\);

-- Location: LCCOMB_X26_Y16_N30
\loopback_inst1|receive_buffer|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Equal2~1_combout\ = (\loopback_inst1|receive_buffer|Add1~10_combout\) # ((\loopback_inst1|receive_buffer|Add1~8_combout\) # ((\loopback_inst1|receive_buffer|Add1~14_combout\) # 
-- (\loopback_inst1|receive_buffer|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|Add1~10_combout\,
	datab => \loopback_inst1|receive_buffer|Add1~8_combout\,
	datac => \loopback_inst1|receive_buffer|Add1~14_combout\,
	datad => \loopback_inst1|receive_buffer|Add1~12_combout\,
	combout => \loopback_inst1|receive_buffer|Equal2~1_combout\);

-- Location: LCCOMB_X26_Y16_N20
\loopback_inst1|receive_buffer|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Equal2~2_combout\ = (\loopback_inst1|receive_buffer|Equal2~0_combout\) # ((\loopback_inst1|receive_buffer|Add1~16_combout\) # ((\loopback_inst1|receive_buffer|Equal2~1_combout\) # 
-- (\loopback_inst1|receive_buffer|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|Equal2~0_combout\,
	datab => \loopback_inst1|receive_buffer|Add1~16_combout\,
	datac => \loopback_inst1|receive_buffer|Equal2~1_combout\,
	datad => \loopback_inst1|receive_buffer|Add1~18_combout\,
	combout => \loopback_inst1|receive_buffer|Equal2~2_combout\);

-- Location: LCCOMB_X25_Y17_N2
\loopback_inst1|fifo_data_out_stb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|fifo_data_out_stb~0_combout\ = (!\loopback_inst1|uart_data_in_stb~q\ & (\loopback_inst1|receive_buffer|level[0]~6_combout\ & \loopback_inst1|receive_buffer|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_data_in_stb~q\,
	datac => \loopback_inst1|receive_buffer|level[0]~6_combout\,
	datad => \loopback_inst1|receive_buffer|Equal2~2_combout\,
	combout => \loopback_inst1|fifo_data_out_stb~0_combout\);

-- Location: FF_X25_Y17_N3
\loopback_inst1|fifo_data_out_stb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|fifo_data_out_stb~0_combout\,
	sclr => \reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|fifo_data_out_stb~q\);

-- Location: LCCOMB_X23_Y16_N22
\loopback_inst1|receive_buffer|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~4_combout\ = (!\reset~q\ & (((!\loopback_inst1|receive_buffer|Equal2~2_combout\) # (!\loopback_inst1|receive_buffer|level[0]~6_combout\)) # (!\loopback_inst1|fifo_data_out_stb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|fifo_data_out_stb~q\,
	datab => \reset~q\,
	datac => \loopback_inst1|receive_buffer|level[0]~6_combout\,
	datad => \loopback_inst1|receive_buffer|Equal2~2_combout\,
	combout => \loopback_inst1|receive_buffer|Add4~4_combout\);

-- Location: LCCOMB_X22_Y16_N30
\loopback_inst1|receive_buffer|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|LessThan2~1_combout\ = (((!\loopback_inst1|receive_buffer|read_pointer\(7)) # (!\loopback_inst1|receive_buffer|read_pointer\(6))) # (!\loopback_inst1|receive_buffer|read_pointer\(0))) # 
-- (!\loopback_inst1|receive_buffer|read_pointer\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(5),
	datab => \loopback_inst1|receive_buffer|read_pointer\(0),
	datac => \loopback_inst1|receive_buffer|read_pointer\(6),
	datad => \loopback_inst1|receive_buffer|read_pointer\(7),
	combout => \loopback_inst1|receive_buffer|LessThan2~1_combout\);

-- Location: LCCOMB_X22_Y16_N4
\loopback_inst1|receive_buffer|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|LessThan2~0_combout\ = (((!\loopback_inst1|receive_buffer|read_pointer\(4)) # (!\loopback_inst1|receive_buffer|read_pointer\(1))) # (!\loopback_inst1|receive_buffer|read_pointer\(3))) # 
-- (!\loopback_inst1|receive_buffer|read_pointer\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(2),
	datab => \loopback_inst1|receive_buffer|read_pointer\(3),
	datac => \loopback_inst1|receive_buffer|read_pointer\(1),
	datad => \loopback_inst1|receive_buffer|read_pointer\(4),
	combout => \loopback_inst1|receive_buffer|LessThan2~0_combout\);

-- Location: LCCOMB_X22_Y16_N2
\loopback_inst1|receive_buffer|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|LessThan2~2_combout\ = (!\loopback_inst1|receive_buffer|read_pointer\(8)) # (!\loopback_inst1|receive_buffer|read_pointer\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|receive_buffer|read_pointer\(9),
	datad => \loopback_inst1|receive_buffer|read_pointer\(8),
	combout => \loopback_inst1|receive_buffer|LessThan2~2_combout\);

-- Location: LCCOMB_X22_Y16_N28
\loopback_inst1|receive_buffer|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~2_combout\ = (!\reset~q\ & ((\loopback_inst1|receive_buffer|LessThan2~1_combout\) # ((\loopback_inst1|receive_buffer|LessThan2~0_combout\) # (\loopback_inst1|receive_buffer|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|LessThan2~1_combout\,
	datab => \reset~q\,
	datac => \loopback_inst1|receive_buffer|LessThan2~0_combout\,
	datad => \loopback_inst1|receive_buffer|LessThan2~2_combout\,
	combout => \loopback_inst1|receive_buffer|Add4~2_combout\);

-- Location: LCCOMB_X23_Y16_N20
\loopback_inst1|receive_buffer|Add4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~3_combout\ = (\loopback_inst1|fifo_data_out_stb~q\ & (\loopback_inst1|receive_buffer|Add4~2_combout\ & (\loopback_inst1|receive_buffer|level[0]~6_combout\ & \loopback_inst1|receive_buffer|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|fifo_data_out_stb~q\,
	datab => \loopback_inst1|receive_buffer|Add4~2_combout\,
	datac => \loopback_inst1|receive_buffer|level[0]~6_combout\,
	datad => \loopback_inst1|receive_buffer|Equal2~2_combout\,
	combout => \loopback_inst1|receive_buffer|Add4~3_combout\);

-- Location: LCCOMB_X23_Y16_N8
\loopback_inst1|receive_buffer|Add4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~5_combout\ = (\loopback_inst1|receive_buffer|Add4~0_combout\ & ((\loopback_inst1|receive_buffer|Add4~3_combout\) # ((\loopback_inst1|receive_buffer|read_pointer\(0) & \loopback_inst1|receive_buffer|Add4~4_combout\)))) # 
-- (!\loopback_inst1|receive_buffer|Add4~0_combout\ & (\loopback_inst1|receive_buffer|read_pointer\(0) & (\loopback_inst1|receive_buffer|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|Add4~0_combout\,
	datab => \loopback_inst1|receive_buffer|read_pointer\(0),
	datac => \loopback_inst1|receive_buffer|Add4~4_combout\,
	datad => \loopback_inst1|receive_buffer|Add4~3_combout\,
	combout => \loopback_inst1|receive_buffer|Add4~5_combout\);

-- Location: FF_X26_Y16_N1
\loopback_inst1|receive_buffer|read_pointer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|Add4~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|read_pointer\(0));

-- Location: LCCOMB_X22_Y16_N10
\loopback_inst1|receive_buffer|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~6_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(1) & (!\loopback_inst1|receive_buffer|Add4~1\)) # (!\loopback_inst1|receive_buffer|read_pointer\(1) & ((\loopback_inst1|receive_buffer|Add4~1\) # (GND)))
-- \loopback_inst1|receive_buffer|Add4~7\ = CARRY((!\loopback_inst1|receive_buffer|Add4~1\) # (!\loopback_inst1|receive_buffer|read_pointer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|receive_buffer|read_pointer\(1),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|Add4~1\,
	combout => \loopback_inst1|receive_buffer|Add4~6_combout\,
	cout => \loopback_inst1|receive_buffer|Add4~7\);

-- Location: LCCOMB_X23_Y16_N26
\loopback_inst1|receive_buffer|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~8_combout\ = (\loopback_inst1|receive_buffer|Add4~6_combout\ & ((\loopback_inst1|receive_buffer|Add4~3_combout\) # ((\loopback_inst1|receive_buffer|read_pointer\(1) & \loopback_inst1|receive_buffer|Add4~4_combout\)))) # 
-- (!\loopback_inst1|receive_buffer|Add4~6_combout\ & (\loopback_inst1|receive_buffer|read_pointer\(1) & (\loopback_inst1|receive_buffer|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|Add4~6_combout\,
	datab => \loopback_inst1|receive_buffer|read_pointer\(1),
	datac => \loopback_inst1|receive_buffer|Add4~4_combout\,
	datad => \loopback_inst1|receive_buffer|Add4~3_combout\,
	combout => \loopback_inst1|receive_buffer|Add4~8_combout\);

-- Location: FF_X26_Y16_N3
\loopback_inst1|receive_buffer|read_pointer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|Add4~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|read_pointer\(1));

-- Location: LCCOMB_X22_Y16_N12
\loopback_inst1|receive_buffer|Add4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~9_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(2) & (\loopback_inst1|receive_buffer|Add4~7\ $ (GND))) # (!\loopback_inst1|receive_buffer|read_pointer\(2) & (!\loopback_inst1|receive_buffer|Add4~7\ & VCC))
-- \loopback_inst1|receive_buffer|Add4~10\ = CARRY((\loopback_inst1|receive_buffer|read_pointer\(2) & !\loopback_inst1|receive_buffer|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(2),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|Add4~7\,
	combout => \loopback_inst1|receive_buffer|Add4~9_combout\,
	cout => \loopback_inst1|receive_buffer|Add4~10\);

-- Location: LCCOMB_X22_Y16_N6
\loopback_inst1|receive_buffer|Add4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~11_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(2) & ((\loopback_inst1|receive_buffer|Add4~4_combout\) # ((\loopback_inst1|receive_buffer|Add4~9_combout\ & \loopback_inst1|receive_buffer|Add4~3_combout\)))) 
-- # (!\loopback_inst1|receive_buffer|read_pointer\(2) & (\loopback_inst1|receive_buffer|Add4~9_combout\ & (\loopback_inst1|receive_buffer|Add4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(2),
	datab => \loopback_inst1|receive_buffer|Add4~9_combout\,
	datac => \loopback_inst1|receive_buffer|Add4~3_combout\,
	datad => \loopback_inst1|receive_buffer|Add4~4_combout\,
	combout => \loopback_inst1|receive_buffer|Add4~11_combout\);

-- Location: FF_X26_Y16_N5
\loopback_inst1|receive_buffer|read_pointer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|Add4~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|read_pointer\(2));

-- Location: LCCOMB_X22_Y16_N14
\loopback_inst1|receive_buffer|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~12_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(3) & (!\loopback_inst1|receive_buffer|Add4~10\)) # (!\loopback_inst1|receive_buffer|read_pointer\(3) & ((\loopback_inst1|receive_buffer|Add4~10\) # (GND)))
-- \loopback_inst1|receive_buffer|Add4~13\ = CARRY((!\loopback_inst1|receive_buffer|Add4~10\) # (!\loopback_inst1|receive_buffer|read_pointer\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|receive_buffer|read_pointer\(3),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|Add4~10\,
	combout => \loopback_inst1|receive_buffer|Add4~12_combout\,
	cout => \loopback_inst1|receive_buffer|Add4~13\);

-- Location: LCCOMB_X23_Y16_N4
\loopback_inst1|receive_buffer|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~14_combout\ = (\loopback_inst1|receive_buffer|Add4~12_combout\ & ((\loopback_inst1|receive_buffer|Add4~3_combout\) # ((\loopback_inst1|receive_buffer|read_pointer\(3) & \loopback_inst1|receive_buffer|Add4~4_combout\)))) 
-- # (!\loopback_inst1|receive_buffer|Add4~12_combout\ & (\loopback_inst1|receive_buffer|read_pointer\(3) & (\loopback_inst1|receive_buffer|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|Add4~12_combout\,
	datab => \loopback_inst1|receive_buffer|read_pointer\(3),
	datac => \loopback_inst1|receive_buffer|Add4~4_combout\,
	datad => \loopback_inst1|receive_buffer|Add4~3_combout\,
	combout => \loopback_inst1|receive_buffer|Add4~14_combout\);

-- Location: FF_X26_Y16_N7
\loopback_inst1|receive_buffer|read_pointer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|Add4~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|read_pointer\(3));

-- Location: LCCOMB_X22_Y16_N16
\loopback_inst1|receive_buffer|Add4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~15_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(4) & (\loopback_inst1|receive_buffer|Add4~13\ $ (GND))) # (!\loopback_inst1|receive_buffer|read_pointer\(4) & (!\loopback_inst1|receive_buffer|Add4~13\ & VCC))
-- \loopback_inst1|receive_buffer|Add4~16\ = CARRY((\loopback_inst1|receive_buffer|read_pointer\(4) & !\loopback_inst1|receive_buffer|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|receive_buffer|read_pointer\(4),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|Add4~13\,
	combout => \loopback_inst1|receive_buffer|Add4~15_combout\,
	cout => \loopback_inst1|receive_buffer|Add4~16\);

-- Location: LCCOMB_X23_Y16_N18
\loopback_inst1|receive_buffer|Add4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~17_combout\ = (\loopback_inst1|receive_buffer|Add4~15_combout\ & ((\loopback_inst1|receive_buffer|Add4~3_combout\) # ((\loopback_inst1|receive_buffer|read_pointer\(4) & \loopback_inst1|receive_buffer|Add4~4_combout\)))) 
-- # (!\loopback_inst1|receive_buffer|Add4~15_combout\ & (\loopback_inst1|receive_buffer|read_pointer\(4) & (\loopback_inst1|receive_buffer|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|Add4~15_combout\,
	datab => \loopback_inst1|receive_buffer|read_pointer\(4),
	datac => \loopback_inst1|receive_buffer|Add4~4_combout\,
	datad => \loopback_inst1|receive_buffer|Add4~3_combout\,
	combout => \loopback_inst1|receive_buffer|Add4~17_combout\);

-- Location: FF_X26_Y16_N9
\loopback_inst1|receive_buffer|read_pointer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|Add4~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|read_pointer\(4));

-- Location: LCCOMB_X22_Y16_N18
\loopback_inst1|receive_buffer|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~18_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(5) & (!\loopback_inst1|receive_buffer|Add4~16\)) # (!\loopback_inst1|receive_buffer|read_pointer\(5) & ((\loopback_inst1|receive_buffer|Add4~16\) # (GND)))
-- \loopback_inst1|receive_buffer|Add4~19\ = CARRY((!\loopback_inst1|receive_buffer|Add4~16\) # (!\loopback_inst1|receive_buffer|read_pointer\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(5),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|Add4~16\,
	combout => \loopback_inst1|receive_buffer|Add4~18_combout\,
	cout => \loopback_inst1|receive_buffer|Add4~19\);

-- Location: LCCOMB_X23_Y16_N12
\loopback_inst1|receive_buffer|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~20_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(5) & ((\loopback_inst1|receive_buffer|Add4~4_combout\) # ((\loopback_inst1|receive_buffer|Add4~18_combout\ & \loopback_inst1|receive_buffer|Add4~3_combout\)))) 
-- # (!\loopback_inst1|receive_buffer|read_pointer\(5) & (\loopback_inst1|receive_buffer|Add4~18_combout\ & ((\loopback_inst1|receive_buffer|Add4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(5),
	datab => \loopback_inst1|receive_buffer|Add4~18_combout\,
	datac => \loopback_inst1|receive_buffer|Add4~4_combout\,
	datad => \loopback_inst1|receive_buffer|Add4~3_combout\,
	combout => \loopback_inst1|receive_buffer|Add4~20_combout\);

-- Location: FF_X26_Y16_N11
\loopback_inst1|receive_buffer|read_pointer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|Add4~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|read_pointer\(5));

-- Location: LCCOMB_X22_Y16_N20
\loopback_inst1|receive_buffer|Add4~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~21_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(6) & (\loopback_inst1|receive_buffer|Add4~19\ $ (GND))) # (!\loopback_inst1|receive_buffer|read_pointer\(6) & (!\loopback_inst1|receive_buffer|Add4~19\ & VCC))
-- \loopback_inst1|receive_buffer|Add4~22\ = CARRY((\loopback_inst1|receive_buffer|read_pointer\(6) & !\loopback_inst1|receive_buffer|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(6),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|Add4~19\,
	combout => \loopback_inst1|receive_buffer|Add4~21_combout\,
	cout => \loopback_inst1|receive_buffer|Add4~22\);

-- Location: LCCOMB_X23_Y16_N10
\loopback_inst1|receive_buffer|Add4~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~23_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(6) & ((\loopback_inst1|receive_buffer|Add4~4_combout\) # ((\loopback_inst1|receive_buffer|Add4~21_combout\ & \loopback_inst1|receive_buffer|Add4~3_combout\)))) 
-- # (!\loopback_inst1|receive_buffer|read_pointer\(6) & (\loopback_inst1|receive_buffer|Add4~21_combout\ & ((\loopback_inst1|receive_buffer|Add4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(6),
	datab => \loopback_inst1|receive_buffer|Add4~21_combout\,
	datac => \loopback_inst1|receive_buffer|Add4~4_combout\,
	datad => \loopback_inst1|receive_buffer|Add4~3_combout\,
	combout => \loopback_inst1|receive_buffer|Add4~23_combout\);

-- Location: FF_X26_Y16_N13
\loopback_inst1|receive_buffer|read_pointer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|Add4~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|read_pointer\(6));

-- Location: LCCOMB_X22_Y16_N22
\loopback_inst1|receive_buffer|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~24_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(7) & (!\loopback_inst1|receive_buffer|Add4~22\)) # (!\loopback_inst1|receive_buffer|read_pointer\(7) & ((\loopback_inst1|receive_buffer|Add4~22\) # (GND)))
-- \loopback_inst1|receive_buffer|Add4~25\ = CARRY((!\loopback_inst1|receive_buffer|Add4~22\) # (!\loopback_inst1|receive_buffer|read_pointer\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|receive_buffer|read_pointer\(7),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|Add4~22\,
	combout => \loopback_inst1|receive_buffer|Add4~24_combout\,
	cout => \loopback_inst1|receive_buffer|Add4~25\);

-- Location: LCCOMB_X23_Y16_N28
\loopback_inst1|receive_buffer|Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~26_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(7) & ((\loopback_inst1|receive_buffer|Add4~4_combout\) # ((\loopback_inst1|receive_buffer|Add4~24_combout\ & \loopback_inst1|receive_buffer|Add4~3_combout\)))) 
-- # (!\loopback_inst1|receive_buffer|read_pointer\(7) & (\loopback_inst1|receive_buffer|Add4~24_combout\ & ((\loopback_inst1|receive_buffer|Add4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(7),
	datab => \loopback_inst1|receive_buffer|Add4~24_combout\,
	datac => \loopback_inst1|receive_buffer|Add4~4_combout\,
	datad => \loopback_inst1|receive_buffer|Add4~3_combout\,
	combout => \loopback_inst1|receive_buffer|Add4~26_combout\);

-- Location: FF_X26_Y16_N15
\loopback_inst1|receive_buffer|read_pointer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|Add4~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|read_pointer\(7));

-- Location: LCCOMB_X22_Y16_N24
\loopback_inst1|receive_buffer|Add4~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~27_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(8) & (\loopback_inst1|receive_buffer|Add4~25\ $ (GND))) # (!\loopback_inst1|receive_buffer|read_pointer\(8) & (!\loopback_inst1|receive_buffer|Add4~25\ & VCC))
-- \loopback_inst1|receive_buffer|Add4~28\ = CARRY((\loopback_inst1|receive_buffer|read_pointer\(8) & !\loopback_inst1|receive_buffer|Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(8),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|Add4~25\,
	combout => \loopback_inst1|receive_buffer|Add4~27_combout\,
	cout => \loopback_inst1|receive_buffer|Add4~28\);

-- Location: LCCOMB_X23_Y16_N24
\loopback_inst1|receive_buffer|Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~32_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(8) & ((\loopback_inst1|receive_buffer|Add4~4_combout\) # ((\loopback_inst1|receive_buffer|Add4~27_combout\ & \loopback_inst1|receive_buffer|Add4~3_combout\)))) 
-- # (!\loopback_inst1|receive_buffer|read_pointer\(8) & (\loopback_inst1|receive_buffer|Add4~27_combout\ & ((\loopback_inst1|receive_buffer|Add4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(8),
	datab => \loopback_inst1|receive_buffer|Add4~27_combout\,
	datac => \loopback_inst1|receive_buffer|Add4~4_combout\,
	datad => \loopback_inst1|receive_buffer|Add4~3_combout\,
	combout => \loopback_inst1|receive_buffer|Add4~32_combout\);

-- Location: FF_X26_Y16_N17
\loopback_inst1|receive_buffer|read_pointer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|Add4~32_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|read_pointer\(8));

-- Location: LCCOMB_X22_Y16_N26
\loopback_inst1|receive_buffer|Add4~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~29_combout\ = \loopback_inst1|receive_buffer|read_pointer\(9) $ (\loopback_inst1|receive_buffer|Add4~28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|receive_buffer|read_pointer\(9),
	cin => \loopback_inst1|receive_buffer|Add4~28\,
	combout => \loopback_inst1|receive_buffer|Add4~29_combout\);

-- Location: LCCOMB_X23_Y16_N6
\loopback_inst1|receive_buffer|Add4~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add4~31_combout\ = (\loopback_inst1|receive_buffer|Add4~29_combout\ & ((\loopback_inst1|receive_buffer|Add4~3_combout\) # ((\loopback_inst1|receive_buffer|read_pointer\(9) & \loopback_inst1|receive_buffer|Add4~4_combout\)))) 
-- # (!\loopback_inst1|receive_buffer|Add4~29_combout\ & (\loopback_inst1|receive_buffer|read_pointer\(9) & (\loopback_inst1|receive_buffer|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|Add4~29_combout\,
	datab => \loopback_inst1|receive_buffer|read_pointer\(9),
	datac => \loopback_inst1|receive_buffer|Add4~4_combout\,
	datad => \loopback_inst1|receive_buffer|Add4~3_combout\,
	combout => \loopback_inst1|receive_buffer|Add4~31_combout\);

-- Location: FF_X24_Y16_N9
\loopback_inst1|receive_buffer|read_pointer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|Add4~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|read_pointer\(9));

-- Location: LCCOMB_X26_Y16_N18
\loopback_inst1|receive_buffer|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Add1~18_combout\ = \loopback_inst1|receive_buffer|read_pointer\(9) $ (\loopback_inst1|receive_buffer|Add1~17\ $ (!\loopback_inst1|receive_buffer|write_pointer\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|receive_buffer|read_pointer\(9),
	datad => \loopback_inst1|receive_buffer|write_pointer\(9),
	cin => \loopback_inst1|receive_buffer|Add1~17\,
	combout => \loopback_inst1|receive_buffer|Add1~18_combout\);

-- Location: LCCOMB_X26_Y16_N26
\loopback_inst1|receive_buffer|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Equal1~0_combout\ = (\loopback_inst1|receive_buffer|Add1~0_combout\ & (\loopback_inst1|receive_buffer|Add1~2_combout\ & (\loopback_inst1|receive_buffer|Add1~4_combout\ & \loopback_inst1|receive_buffer|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|Add1~0_combout\,
	datab => \loopback_inst1|receive_buffer|Add1~2_combout\,
	datac => \loopback_inst1|receive_buffer|Add1~4_combout\,
	datad => \loopback_inst1|receive_buffer|Add1~6_combout\,
	combout => \loopback_inst1|receive_buffer|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y16_N24
\loopback_inst1|receive_buffer|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Equal1~1_combout\ = (\loopback_inst1|receive_buffer|Add1~10_combout\ & (\loopback_inst1|receive_buffer|Add1~8_combout\ & (\loopback_inst1|receive_buffer|Add1~14_combout\ & \loopback_inst1|receive_buffer|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|Add1~10_combout\,
	datab => \loopback_inst1|receive_buffer|Add1~8_combout\,
	datac => \loopback_inst1|receive_buffer|Add1~14_combout\,
	datad => \loopback_inst1|receive_buffer|Add1~12_combout\,
	combout => \loopback_inst1|receive_buffer|Equal1~1_combout\);

-- Location: LCCOMB_X26_Y16_N22
\loopback_inst1|receive_buffer|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|Equal1~2_combout\ = (\loopback_inst1|receive_buffer|Add1~18_combout\ & (\loopback_inst1|receive_buffer|Add1~16_combout\ & (\loopback_inst1|receive_buffer|Equal1~0_combout\ & 
-- \loopback_inst1|receive_buffer|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|Add1~18_combout\,
	datab => \loopback_inst1|receive_buffer|Add1~16_combout\,
	datac => \loopback_inst1|receive_buffer|Equal1~0_combout\,
	datad => \loopback_inst1|receive_buffer|Equal1~1_combout\,
	combout => \loopback_inst1|receive_buffer|Equal1~2_combout\);

-- Location: LCCOMB_X25_Y16_N6
\loopback_inst1|fifo_data_in_stb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|fifo_data_in_stb~0_combout\ = (!\reset~q\ & (\loopback_inst1|uart_inst|uart_rx_data_out_stb~q\ & ((!\loopback_inst1|receive_buffer|Equal1~2_combout\) # (!\loopback_inst1|receive_buffer|level[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datab => \loopback_inst1|uart_inst|uart_rx_data_out_stb~q\,
	datac => \loopback_inst1|receive_buffer|level[0]~6_combout\,
	datad => \loopback_inst1|receive_buffer|Equal1~2_combout\,
	combout => \loopback_inst1|fifo_data_in_stb~0_combout\);

-- Location: FF_X25_Y16_N7
\loopback_inst1|fifo_data_in_stb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|fifo_data_in_stb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|fifo_data_in_stb~q\);

-- Location: LCCOMB_X25_Y16_N0
\loopback_inst1|receive_buffer|write_pointer[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|write_pointer[0]~13_combout\ = (\reset~q\) # ((\loopback_inst1|fifo_data_in_stb~q\ & ((!\loopback_inst1|receive_buffer|Equal1~2_combout\) # (!\loopback_inst1|receive_buffer|level[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|fifo_data_in_stb~q\,
	datab => \reset~q\,
	datac => \loopback_inst1|receive_buffer|level[0]~6_combout\,
	datad => \loopback_inst1|receive_buffer|Equal1~2_combout\,
	combout => \loopback_inst1|receive_buffer|write_pointer[0]~13_combout\);

-- Location: FF_X25_Y16_N25
\loopback_inst1|receive_buffer|write_pointer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|write_pointer[8]~28_combout\,
	sclr => \loopback_inst1|receive_buffer|write_pointer[0]~12_combout\,
	ena => \loopback_inst1|receive_buffer|write_pointer[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|write_pointer\(8));

-- Location: LCCOMB_X25_Y16_N26
\loopback_inst1|receive_buffer|write_pointer[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|write_pointer[9]~30_combout\ = \loopback_inst1|receive_buffer|write_pointer\(9) $ (\loopback_inst1|receive_buffer|write_pointer[8]~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(9),
	cin => \loopback_inst1|receive_buffer|write_pointer[8]~29\,
	combout => \loopback_inst1|receive_buffer|write_pointer[9]~30_combout\);

-- Location: FF_X25_Y16_N27
\loopback_inst1|receive_buffer|write_pointer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|write_pointer[9]~30_combout\,
	sclr => \loopback_inst1|receive_buffer|write_pointer[0]~12_combout\,
	ena => \loopback_inst1|receive_buffer|write_pointer[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|write_pointer\(9));

-- Location: LCCOMB_X24_Y17_N28
\loopback_inst1|receive_buffer|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|LessThan1~2_combout\ = (!\loopback_inst1|receive_buffer|write_pointer\(8)) # (!\loopback_inst1|receive_buffer|write_pointer\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|receive_buffer|write_pointer\(9),
	datac => \loopback_inst1|receive_buffer|write_pointer\(8),
	combout => \loopback_inst1|receive_buffer|LessThan1~2_combout\);

-- Location: LCCOMB_X24_Y17_N6
\loopback_inst1|receive_buffer|write_pointer[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|write_pointer[0]~12_combout\ = (\reset~q\) # ((!\loopback_inst1|receive_buffer|LessThan1~0_combout\ & (!\loopback_inst1|receive_buffer|LessThan1~1_combout\ & !\loopback_inst1|receive_buffer|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~q\,
	datab => \loopback_inst1|receive_buffer|LessThan1~0_combout\,
	datac => \loopback_inst1|receive_buffer|LessThan1~1_combout\,
	datad => \loopback_inst1|receive_buffer|LessThan1~2_combout\,
	combout => \loopback_inst1|receive_buffer|write_pointer[0]~12_combout\);

-- Location: FF_X25_Y16_N9
\loopback_inst1|receive_buffer|write_pointer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|write_pointer[0]~10_combout\,
	sclr => \loopback_inst1|receive_buffer|write_pointer[0]~12_combout\,
	ena => \loopback_inst1|receive_buffer|write_pointer[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|write_pointer\(0));

-- Location: LCCOMB_X25_Y16_N10
\loopback_inst1|receive_buffer|write_pointer[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|write_pointer[1]~14_combout\ = (\loopback_inst1|receive_buffer|write_pointer\(1) & (!\loopback_inst1|receive_buffer|write_pointer[0]~11\)) # (!\loopback_inst1|receive_buffer|write_pointer\(1) & 
-- ((\loopback_inst1|receive_buffer|write_pointer[0]~11\) # (GND)))
-- \loopback_inst1|receive_buffer|write_pointer[1]~15\ = CARRY((!\loopback_inst1|receive_buffer|write_pointer[0]~11\) # (!\loopback_inst1|receive_buffer|write_pointer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(1),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|write_pointer[0]~11\,
	combout => \loopback_inst1|receive_buffer|write_pointer[1]~14_combout\,
	cout => \loopback_inst1|receive_buffer|write_pointer[1]~15\);

-- Location: FF_X25_Y16_N11
\loopback_inst1|receive_buffer|write_pointer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|write_pointer[1]~14_combout\,
	sclr => \loopback_inst1|receive_buffer|write_pointer[0]~12_combout\,
	ena => \loopback_inst1|receive_buffer|write_pointer[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|write_pointer\(1));

-- Location: LCCOMB_X25_Y16_N12
\loopback_inst1|receive_buffer|write_pointer[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|write_pointer[2]~16_combout\ = (\loopback_inst1|receive_buffer|write_pointer\(2) & (\loopback_inst1|receive_buffer|write_pointer[1]~15\ $ (GND))) # (!\loopback_inst1|receive_buffer|write_pointer\(2) & 
-- (!\loopback_inst1|receive_buffer|write_pointer[1]~15\ & VCC))
-- \loopback_inst1|receive_buffer|write_pointer[2]~17\ = CARRY((\loopback_inst1|receive_buffer|write_pointer\(2) & !\loopback_inst1|receive_buffer|write_pointer[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(2),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|write_pointer[1]~15\,
	combout => \loopback_inst1|receive_buffer|write_pointer[2]~16_combout\,
	cout => \loopback_inst1|receive_buffer|write_pointer[2]~17\);

-- Location: FF_X25_Y16_N13
\loopback_inst1|receive_buffer|write_pointer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|write_pointer[2]~16_combout\,
	sclr => \loopback_inst1|receive_buffer|write_pointer[0]~12_combout\,
	ena => \loopback_inst1|receive_buffer|write_pointer[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|write_pointer\(2));

-- Location: LCCOMB_X25_Y16_N14
\loopback_inst1|receive_buffer|write_pointer[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|write_pointer[3]~18_combout\ = (\loopback_inst1|receive_buffer|write_pointer\(3) & (!\loopback_inst1|receive_buffer|write_pointer[2]~17\)) # (!\loopback_inst1|receive_buffer|write_pointer\(3) & 
-- ((\loopback_inst1|receive_buffer|write_pointer[2]~17\) # (GND)))
-- \loopback_inst1|receive_buffer|write_pointer[3]~19\ = CARRY((!\loopback_inst1|receive_buffer|write_pointer[2]~17\) # (!\loopback_inst1|receive_buffer|write_pointer\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|receive_buffer|write_pointer\(3),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|write_pointer[2]~17\,
	combout => \loopback_inst1|receive_buffer|write_pointer[3]~18_combout\,
	cout => \loopback_inst1|receive_buffer|write_pointer[3]~19\);

-- Location: FF_X25_Y16_N15
\loopback_inst1|receive_buffer|write_pointer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|write_pointer[3]~18_combout\,
	sclr => \loopback_inst1|receive_buffer|write_pointer[0]~12_combout\,
	ena => \loopback_inst1|receive_buffer|write_pointer[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|write_pointer\(3));

-- Location: LCCOMB_X25_Y16_N16
\loopback_inst1|receive_buffer|write_pointer[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|write_pointer[4]~20_combout\ = (\loopback_inst1|receive_buffer|write_pointer\(4) & (\loopback_inst1|receive_buffer|write_pointer[3]~19\ $ (GND))) # (!\loopback_inst1|receive_buffer|write_pointer\(4) & 
-- (!\loopback_inst1|receive_buffer|write_pointer[3]~19\ & VCC))
-- \loopback_inst1|receive_buffer|write_pointer[4]~21\ = CARRY((\loopback_inst1|receive_buffer|write_pointer\(4) & !\loopback_inst1|receive_buffer|write_pointer[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|receive_buffer|write_pointer\(4),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|write_pointer[3]~19\,
	combout => \loopback_inst1|receive_buffer|write_pointer[4]~20_combout\,
	cout => \loopback_inst1|receive_buffer|write_pointer[4]~21\);

-- Location: FF_X25_Y16_N17
\loopback_inst1|receive_buffer|write_pointer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|write_pointer[4]~20_combout\,
	sclr => \loopback_inst1|receive_buffer|write_pointer[0]~12_combout\,
	ena => \loopback_inst1|receive_buffer|write_pointer[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|write_pointer\(4));

-- Location: LCCOMB_X25_Y16_N18
\loopback_inst1|receive_buffer|write_pointer[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|write_pointer[5]~22_combout\ = (\loopback_inst1|receive_buffer|write_pointer\(5) & (!\loopback_inst1|receive_buffer|write_pointer[4]~21\)) # (!\loopback_inst1|receive_buffer|write_pointer\(5) & 
-- ((\loopback_inst1|receive_buffer|write_pointer[4]~21\) # (GND)))
-- \loopback_inst1|receive_buffer|write_pointer[5]~23\ = CARRY((!\loopback_inst1|receive_buffer|write_pointer[4]~21\) # (!\loopback_inst1|receive_buffer|write_pointer\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|receive_buffer|write_pointer\(5),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|write_pointer[4]~21\,
	combout => \loopback_inst1|receive_buffer|write_pointer[5]~22_combout\,
	cout => \loopback_inst1|receive_buffer|write_pointer[5]~23\);

-- Location: FF_X25_Y16_N19
\loopback_inst1|receive_buffer|write_pointer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|write_pointer[5]~22_combout\,
	sclr => \loopback_inst1|receive_buffer|write_pointer[0]~12_combout\,
	ena => \loopback_inst1|receive_buffer|write_pointer[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|write_pointer\(5));

-- Location: LCCOMB_X25_Y16_N20
\loopback_inst1|receive_buffer|write_pointer[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|write_pointer[6]~24_combout\ = (\loopback_inst1|receive_buffer|write_pointer\(6) & (\loopback_inst1|receive_buffer|write_pointer[5]~23\ $ (GND))) # (!\loopback_inst1|receive_buffer|write_pointer\(6) & 
-- (!\loopback_inst1|receive_buffer|write_pointer[5]~23\ & VCC))
-- \loopback_inst1|receive_buffer|write_pointer[6]~25\ = CARRY((\loopback_inst1|receive_buffer|write_pointer\(6) & !\loopback_inst1|receive_buffer|write_pointer[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|receive_buffer|write_pointer\(6),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|write_pointer[5]~23\,
	combout => \loopback_inst1|receive_buffer|write_pointer[6]~24_combout\,
	cout => \loopback_inst1|receive_buffer|write_pointer[6]~25\);

-- Location: FF_X25_Y16_N21
\loopback_inst1|receive_buffer|write_pointer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|write_pointer[6]~24_combout\,
	sclr => \loopback_inst1|receive_buffer|write_pointer[0]~12_combout\,
	ena => \loopback_inst1|receive_buffer|write_pointer[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|write_pointer\(6));

-- Location: FF_X25_Y16_N23
\loopback_inst1|receive_buffer|write_pointer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|write_pointer[7]~26_combout\,
	sclr => \loopback_inst1|receive_buffer|write_pointer[0]~12_combout\,
	ena => \loopback_inst1|receive_buffer|write_pointer[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|write_pointer\(7));

-- Location: LCCOMB_X25_Y16_N4
\loopback_inst1|receive_buffer|level[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|level[0]~3_combout\ = (\loopback_inst1|receive_buffer|write_pointer\(7) & ((\loopback_inst1|receive_buffer|read_pointer\(6) $ (\loopback_inst1|receive_buffer|write_pointer\(6))) # 
-- (!\loopback_inst1|receive_buffer|read_pointer\(7)))) # (!\loopback_inst1|receive_buffer|write_pointer\(7) & ((\loopback_inst1|receive_buffer|read_pointer\(7)) # (\loopback_inst1|receive_buffer|read_pointer\(6) $ 
-- (\loopback_inst1|receive_buffer|write_pointer\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(7),
	datab => \loopback_inst1|receive_buffer|read_pointer\(7),
	datac => \loopback_inst1|receive_buffer|read_pointer\(6),
	datad => \loopback_inst1|receive_buffer|write_pointer\(6),
	combout => \loopback_inst1|receive_buffer|level[0]~3_combout\);

-- Location: LCCOMB_X25_Y16_N28
\loopback_inst1|receive_buffer|level[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|level[0]~1_combout\ = (\loopback_inst1|receive_buffer|write_pointer\(2) & ((\loopback_inst1|receive_buffer|write_pointer\(3) $ (\loopback_inst1|receive_buffer|read_pointer\(3))) # 
-- (!\loopback_inst1|receive_buffer|read_pointer\(2)))) # (!\loopback_inst1|receive_buffer|write_pointer\(2) & ((\loopback_inst1|receive_buffer|read_pointer\(2)) # (\loopback_inst1|receive_buffer|write_pointer\(3) $ 
-- (\loopback_inst1|receive_buffer|read_pointer\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(2),
	datab => \loopback_inst1|receive_buffer|write_pointer\(3),
	datac => \loopback_inst1|receive_buffer|read_pointer\(2),
	datad => \loopback_inst1|receive_buffer|read_pointer\(3),
	combout => \loopback_inst1|receive_buffer|level[0]~1_combout\);

-- Location: LCCOMB_X24_Y16_N4
\loopback_inst1|receive_buffer|level[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|level[0]~0_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(1) & ((\loopback_inst1|receive_buffer|read_pointer\(0) $ (\loopback_inst1|receive_buffer|write_pointer\(0))) # 
-- (!\loopback_inst1|receive_buffer|write_pointer\(1)))) # (!\loopback_inst1|receive_buffer|read_pointer\(1) & ((\loopback_inst1|receive_buffer|write_pointer\(1)) # (\loopback_inst1|receive_buffer|read_pointer\(0) $ 
-- (\loopback_inst1|receive_buffer|write_pointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(1),
	datab => \loopback_inst1|receive_buffer|read_pointer\(0),
	datac => \loopback_inst1|receive_buffer|write_pointer\(1),
	datad => \loopback_inst1|receive_buffer|write_pointer\(0),
	combout => \loopback_inst1|receive_buffer|level[0]~0_combout\);

-- Location: LCCOMB_X25_Y16_N2
\loopback_inst1|receive_buffer|level[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|level[0]~2_combout\ = (\loopback_inst1|receive_buffer|write_pointer\(4) & ((\loopback_inst1|receive_buffer|read_pointer\(5) $ (\loopback_inst1|receive_buffer|write_pointer\(5))) # 
-- (!\loopback_inst1|receive_buffer|read_pointer\(4)))) # (!\loopback_inst1|receive_buffer|write_pointer\(4) & ((\loopback_inst1|receive_buffer|read_pointer\(4)) # (\loopback_inst1|receive_buffer|read_pointer\(5) $ 
-- (\loopback_inst1|receive_buffer|write_pointer\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(4),
	datab => \loopback_inst1|receive_buffer|read_pointer\(4),
	datac => \loopback_inst1|receive_buffer|read_pointer\(5),
	datad => \loopback_inst1|receive_buffer|write_pointer\(5),
	combout => \loopback_inst1|receive_buffer|level[0]~2_combout\);

-- Location: LCCOMB_X24_Y16_N30
\loopback_inst1|receive_buffer|level[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|level[0]~4_combout\ = (\loopback_inst1|receive_buffer|level[0]~3_combout\) # ((\loopback_inst1|receive_buffer|level[0]~1_combout\) # ((\loopback_inst1|receive_buffer|level[0]~0_combout\) # 
-- (\loopback_inst1|receive_buffer|level[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|level[0]~3_combout\,
	datab => \loopback_inst1|receive_buffer|level[0]~1_combout\,
	datac => \loopback_inst1|receive_buffer|level[0]~0_combout\,
	datad => \loopback_inst1|receive_buffer|level[0]~2_combout\,
	combout => \loopback_inst1|receive_buffer|level[0]~4_combout\);

-- Location: LCCOMB_X24_Y16_N8
\loopback_inst1|receive_buffer|level[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|level[0]~5_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(8) & ((\loopback_inst1|receive_buffer|read_pointer\(9) $ (\loopback_inst1|receive_buffer|write_pointer\(9))) # 
-- (!\loopback_inst1|receive_buffer|write_pointer\(8)))) # (!\loopback_inst1|receive_buffer|read_pointer\(8) & ((\loopback_inst1|receive_buffer|write_pointer\(8)) # (\loopback_inst1|receive_buffer|read_pointer\(9) $ 
-- (\loopback_inst1|receive_buffer|write_pointer\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(8),
	datab => \loopback_inst1|receive_buffer|write_pointer\(8),
	datac => \loopback_inst1|receive_buffer|read_pointer\(9),
	datad => \loopback_inst1|receive_buffer|write_pointer\(9),
	combout => \loopback_inst1|receive_buffer|level[0]~5_combout\);

-- Location: LCCOMB_X24_Y16_N10
\loopback_inst1|receive_buffer|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|LessThan0~1_cout\ = CARRY((\loopback_inst1|receive_buffer|write_pointer\(0) & !\loopback_inst1|receive_buffer|read_pointer\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(0),
	datab => \loopback_inst1|receive_buffer|read_pointer\(0),
	datad => VCC,
	cout => \loopback_inst1|receive_buffer|LessThan0~1_cout\);

-- Location: LCCOMB_X24_Y16_N12
\loopback_inst1|receive_buffer|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|LessThan0~3_cout\ = CARRY((\loopback_inst1|receive_buffer|read_pointer\(1) & ((!\loopback_inst1|receive_buffer|LessThan0~1_cout\) # (!\loopback_inst1|receive_buffer|write_pointer\(1)))) # 
-- (!\loopback_inst1|receive_buffer|read_pointer\(1) & (!\loopback_inst1|receive_buffer|write_pointer\(1) & !\loopback_inst1|receive_buffer|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(1),
	datab => \loopback_inst1|receive_buffer|write_pointer\(1),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|LessThan0~1_cout\,
	cout => \loopback_inst1|receive_buffer|LessThan0~3_cout\);

-- Location: LCCOMB_X24_Y16_N14
\loopback_inst1|receive_buffer|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|LessThan0~5_cout\ = CARRY((\loopback_inst1|receive_buffer|write_pointer\(2) & ((!\loopback_inst1|receive_buffer|LessThan0~3_cout\) # (!\loopback_inst1|receive_buffer|read_pointer\(2)))) # 
-- (!\loopback_inst1|receive_buffer|write_pointer\(2) & (!\loopback_inst1|receive_buffer|read_pointer\(2) & !\loopback_inst1|receive_buffer|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(2),
	datab => \loopback_inst1|receive_buffer|read_pointer\(2),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|LessThan0~3_cout\,
	cout => \loopback_inst1|receive_buffer|LessThan0~5_cout\);

-- Location: LCCOMB_X24_Y16_N16
\loopback_inst1|receive_buffer|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|LessThan0~7_cout\ = CARRY((\loopback_inst1|receive_buffer|read_pointer\(3) & ((!\loopback_inst1|receive_buffer|LessThan0~5_cout\) # (!\loopback_inst1|receive_buffer|write_pointer\(3)))) # 
-- (!\loopback_inst1|receive_buffer|read_pointer\(3) & (!\loopback_inst1|receive_buffer|write_pointer\(3) & !\loopback_inst1|receive_buffer|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(3),
	datab => \loopback_inst1|receive_buffer|write_pointer\(3),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|LessThan0~5_cout\,
	cout => \loopback_inst1|receive_buffer|LessThan0~7_cout\);

-- Location: LCCOMB_X24_Y16_N18
\loopback_inst1|receive_buffer|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|LessThan0~9_cout\ = CARRY((\loopback_inst1|receive_buffer|read_pointer\(4) & (\loopback_inst1|receive_buffer|write_pointer\(4) & !\loopback_inst1|receive_buffer|LessThan0~7_cout\)) # 
-- (!\loopback_inst1|receive_buffer|read_pointer\(4) & ((\loopback_inst1|receive_buffer|write_pointer\(4)) # (!\loopback_inst1|receive_buffer|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(4),
	datab => \loopback_inst1|receive_buffer|write_pointer\(4),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|LessThan0~7_cout\,
	cout => \loopback_inst1|receive_buffer|LessThan0~9_cout\);

-- Location: LCCOMB_X24_Y16_N20
\loopback_inst1|receive_buffer|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|LessThan0~11_cout\ = CARRY((\loopback_inst1|receive_buffer|write_pointer\(5) & (\loopback_inst1|receive_buffer|read_pointer\(5) & !\loopback_inst1|receive_buffer|LessThan0~9_cout\)) # 
-- (!\loopback_inst1|receive_buffer|write_pointer\(5) & ((\loopback_inst1|receive_buffer|read_pointer\(5)) # (!\loopback_inst1|receive_buffer|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(5),
	datab => \loopback_inst1|receive_buffer|read_pointer\(5),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|LessThan0~9_cout\,
	cout => \loopback_inst1|receive_buffer|LessThan0~11_cout\);

-- Location: LCCOMB_X24_Y16_N22
\loopback_inst1|receive_buffer|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|LessThan0~13_cout\ = CARRY((\loopback_inst1|receive_buffer|write_pointer\(6) & ((!\loopback_inst1|receive_buffer|LessThan0~11_cout\) # (!\loopback_inst1|receive_buffer|read_pointer\(6)))) # 
-- (!\loopback_inst1|receive_buffer|write_pointer\(6) & (!\loopback_inst1|receive_buffer|read_pointer\(6) & !\loopback_inst1|receive_buffer|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|write_pointer\(6),
	datab => \loopback_inst1|receive_buffer|read_pointer\(6),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|LessThan0~11_cout\,
	cout => \loopback_inst1|receive_buffer|LessThan0~13_cout\);

-- Location: LCCOMB_X24_Y16_N24
\loopback_inst1|receive_buffer|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|LessThan0~15_cout\ = CARRY((\loopback_inst1|receive_buffer|read_pointer\(7) & ((!\loopback_inst1|receive_buffer|LessThan0~13_cout\) # (!\loopback_inst1|receive_buffer|write_pointer\(7)))) # 
-- (!\loopback_inst1|receive_buffer|read_pointer\(7) & (!\loopback_inst1|receive_buffer|write_pointer\(7) & !\loopback_inst1|receive_buffer|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(7),
	datab => \loopback_inst1|receive_buffer|write_pointer\(7),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|LessThan0~13_cout\,
	cout => \loopback_inst1|receive_buffer|LessThan0~15_cout\);

-- Location: LCCOMB_X24_Y16_N26
\loopback_inst1|receive_buffer|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|LessThan0~17_cout\ = CARRY((\loopback_inst1|receive_buffer|read_pointer\(8) & (\loopback_inst1|receive_buffer|write_pointer\(8) & !\loopback_inst1|receive_buffer|LessThan0~15_cout\)) # 
-- (!\loopback_inst1|receive_buffer|read_pointer\(8) & ((\loopback_inst1|receive_buffer|write_pointer\(8)) # (!\loopback_inst1|receive_buffer|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(8),
	datab => \loopback_inst1|receive_buffer|write_pointer\(8),
	datad => VCC,
	cin => \loopback_inst1|receive_buffer|LessThan0~15_cout\,
	cout => \loopback_inst1|receive_buffer|LessThan0~17_cout\);

-- Location: LCCOMB_X24_Y16_N28
\loopback_inst1|receive_buffer|LessThan0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|LessThan0~18_combout\ = (\loopback_inst1|receive_buffer|read_pointer\(9) & (\loopback_inst1|receive_buffer|LessThan0~17_cout\ & \loopback_inst1|receive_buffer|write_pointer\(9))) # 
-- (!\loopback_inst1|receive_buffer|read_pointer\(9) & ((\loopback_inst1|receive_buffer|LessThan0~17_cout\) # (\loopback_inst1|receive_buffer|write_pointer\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|read_pointer\(9),
	datad => \loopback_inst1|receive_buffer|write_pointer\(9),
	cin => \loopback_inst1|receive_buffer|LessThan0~17_cout\,
	combout => \loopback_inst1|receive_buffer|LessThan0~18_combout\);

-- Location: LCCOMB_X24_Y16_N6
\loopback_inst1|receive_buffer|level[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|level[0]~6_combout\ = (\loopback_inst1|receive_buffer|level[0]~4_combout\) # ((\loopback_inst1|receive_buffer|level[0]~5_combout\) # (\loopback_inst1|receive_buffer|LessThan0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|level[0]~4_combout\,
	datab => \loopback_inst1|receive_buffer|level[0]~5_combout\,
	datad => \loopback_inst1|receive_buffer|LessThan0~18_combout\,
	combout => \loopback_inst1|receive_buffer|level[0]~6_combout\);

-- Location: LCCOMB_X25_Y17_N24
\loopback_inst1|uart_data_in_stb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_data_in_stb~0_combout\ = (\loopback_inst1|uart_data_in_stb~q\ & (!\loopback_inst1|uart_inst|uart_rx_data_in_ack~q\)) # (!\loopback_inst1|uart_data_in_stb~q\ & (((\loopback_inst1|receive_buffer|level[0]~6_combout\ & 
-- \loopback_inst1|receive_buffer|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_rx_data_in_ack~q\,
	datab => \loopback_inst1|receive_buffer|level[0]~6_combout\,
	datac => \loopback_inst1|uart_data_in_stb~q\,
	datad => \loopback_inst1|receive_buffer|Equal2~2_combout\,
	combout => \loopback_inst1|uart_data_in_stb~0_combout\);

-- Location: FF_X25_Y17_N25
\loopback_inst1|uart_data_in_stb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_data_in_stb~0_combout\,
	sclr => \reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_data_in_stb~q\);

-- Location: LCCOMB_X26_Y17_N10
\loopback_inst1|uart_inst|uart_tx_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_data~0_combout\ = (!\loopback_inst1|uart_inst|uart_tx_data~q\ & (((!\loopback_inst1|uart_data_in_stb~q\ & !\loopback_inst1|uart_inst|uart_tx_state.tx_send_start_bit~q\)) # (!\loopback_inst1|uart_inst|tx_baud_tick~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|tx_baud_tick~q\,
	datab => \loopback_inst1|uart_data_in_stb~q\,
	datac => \loopback_inst1|uart_inst|uart_tx_data~q\,
	datad => \loopback_inst1|uart_inst|uart_tx_state.tx_send_start_bit~q\,
	combout => \loopback_inst1|uart_inst|uart_tx_data~0_combout\);

-- Location: LCCOMB_X25_Y16_N30
\loopback_inst1|receive_buffer|fifo_memory~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory~28_combout\ = (\loopback_inst1|fifo_data_in_stb~q\ & (!\reset~q\ & ((!\loopback_inst1|receive_buffer|Equal1~2_combout\) # (!\loopback_inst1|receive_buffer|level[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|fifo_data_in_stb~q\,
	datab => \reset~q\,
	datac => \loopback_inst1|receive_buffer|level[0]~6_combout\,
	datad => \loopback_inst1|receive_buffer|Equal1~2_combout\,
	combout => \loopback_inst1|receive_buffer|fifo_memory~28_combout\);

-- Location: FF_X25_Y16_N31
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(0));

-- Location: FF_X23_Y16_N27
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|Add4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(4));

-- Location: FF_X23_Y16_N9
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|Add4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(2));

-- Location: FF_X23_Y16_N31
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|write_pointer\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(1));

-- Location: FF_X24_Y16_N5
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|write_pointer\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(3));

-- Location: LCCOMB_X23_Y16_N30
\loopback_inst1|receive_buffer|fifo_memory~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory~19_combout\ = (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(4) & (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(3) & (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(2) $ 
-- (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(1))))) # (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(4) & (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(3) & 
-- (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(2) $ (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(4),
	datab => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(2),
	datac => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(1),
	datad => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(3),
	combout => \loopback_inst1|receive_buffer|fifo_memory~19_combout\);

-- Location: FF_X24_Y16_N7
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|write_pointer\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(13));

-- Location: FF_X23_Y16_N29
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|Add4~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(16));

-- Location: FF_X23_Y16_N17
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|write_pointer\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(15));

-- Location: FF_X23_Y16_N11
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|Add4~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(14));

-- Location: LCCOMB_X23_Y16_N16
\loopback_inst1|receive_buffer|fifo_memory~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory~22_combout\ = (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(13) & (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(14) & (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(16) $ 
-- (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(15))))) # (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(13) & (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(14) & 
-- (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(16) $ (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(13),
	datab => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(16),
	datac => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(15),
	datad => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(14),
	combout => \loopback_inst1|receive_buffer|fifo_memory~22_combout\);

-- Location: FF_X24_Y16_N3
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|write_pointer\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(11));

-- Location: FF_X23_Y16_N19
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|Add4~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(10));

-- Location: FF_X23_Y16_N15
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|write_pointer\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(9));

-- Location: FF_X23_Y16_N13
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|Add4~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(12));

-- Location: LCCOMB_X23_Y16_N14
\loopback_inst1|receive_buffer|fifo_memory~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory~21_combout\ = (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(11) & (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(12) & (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(10) $ 
-- (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(9))))) # (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(11) & (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(12) & 
-- (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(10) $ (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(11),
	datab => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(10),
	datac => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(9),
	datad => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(12),
	combout => \loopback_inst1|receive_buffer|fifo_memory~21_combout\);

-- Location: FF_X22_Y16_N7
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|Add4~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(6));

-- Location: FF_X23_Y16_N5
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|Add4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(8));

-- Location: FF_X23_Y16_N1
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|write_pointer\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(5));

-- Location: FF_X24_Y16_N1
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|write_pointer\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(7));

-- Location: LCCOMB_X23_Y16_N0
\loopback_inst1|receive_buffer|fifo_memory~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory~20_combout\ = (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(6) & (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(5) & (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(8) $ 
-- (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(7))))) # (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(6) & (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(5) & 
-- (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(8) $ (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(6),
	datab => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(8),
	datac => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(5),
	datad => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(7),
	combout => \loopback_inst1|receive_buffer|fifo_memory~20_combout\);

-- Location: LCCOMB_X23_Y16_N2
\loopback_inst1|receive_buffer|fifo_memory~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory~23_combout\ = (\loopback_inst1|receive_buffer|fifo_memory~19_combout\ & (\loopback_inst1|receive_buffer|fifo_memory~22_combout\ & (\loopback_inst1|receive_buffer|fifo_memory~21_combout\ & 
-- \loopback_inst1|receive_buffer|fifo_memory~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|fifo_memory~19_combout\,
	datab => \loopback_inst1|receive_buffer|fifo_memory~22_combout\,
	datac => \loopback_inst1|receive_buffer|fifo_memory~21_combout\,
	datad => \loopback_inst1|receive_buffer|fifo_memory~20_combout\,
	combout => \loopback_inst1|receive_buffer|fifo_memory~23_combout\);

-- Location: FF_X23_Y16_N7
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|Add4~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(20));

-- Location: FF_X23_Y16_N25
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|Add4~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(18));

-- Location: FF_X24_Y17_N25
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|receive_buffer|write_pointer\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(17));

-- Location: LCCOMB_X24_Y17_N18
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[19]~feeder_combout\ = \loopback_inst1|receive_buffer|write_pointer\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \loopback_inst1|receive_buffer|write_pointer\(9),
	combout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[19]~feeder_combout\);

-- Location: FF_X24_Y17_N19
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(19));

-- Location: LCCOMB_X24_Y17_N24
\loopback_inst1|receive_buffer|fifo_memory~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory~24_combout\ = (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(20) & (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(19) & (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(18) $ 
-- (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(17))))) # (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(20) & (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(19) & 
-- (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(18) $ (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(20),
	datab => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(18),
	datac => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(17),
	datad => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(19),
	combout => \loopback_inst1|receive_buffer|fifo_memory~24_combout\);

-- Location: LCCOMB_X25_Y17_N14
\loopback_inst1|receive_buffer|fifo_memory~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory~25_combout\ = (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(0) & (\loopback_inst1|receive_buffer|fifo_memory~23_combout\ & \loopback_inst1|receive_buffer|fifo_memory~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(0),
	datac => \loopback_inst1|receive_buffer|fifo_memory~23_combout\,
	datad => \loopback_inst1|receive_buffer|fifo_memory~24_combout\,
	combout => \loopback_inst1|receive_buffer|fifo_memory~25_combout\);

-- Location: LCCOMB_X29_Y17_N28
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X29_Y17_N29
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(22));

-- Location: LCCOMB_X25_Y15_N12
\loopback_inst1|uart_inst|uart_rx_data_vec~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_data_vec~7_combout\ = (!\reset~q\ & !\loopback_inst1|uart_inst|uart_rx_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|uart_rx_bit~q\,
	combout => \loopback_inst1|uart_inst|uart_rx_data_vec~7_combout\);

-- Location: FF_X25_Y15_N13
\loopback_inst1|uart_inst|uart_rx_data_vec[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_data_vec~7_combout\,
	ena => \loopback_inst1|uart_inst|uart_rx_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_data_vec\(7));

-- Location: LCCOMB_X25_Y18_N28
\loopback_inst1|uart_inst|uart_rx_data_vec~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_data_vec~6_combout\ = (!\reset~q\ & \loopback_inst1|uart_inst|uart_rx_data_vec\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|uart_rx_data_vec\(7),
	combout => \loopback_inst1|uart_inst|uart_rx_data_vec~6_combout\);

-- Location: FF_X25_Y18_N29
\loopback_inst1|uart_inst|uart_rx_data_vec[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_data_vec~6_combout\,
	ena => \loopback_inst1|uart_inst|uart_rx_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_data_vec\(6));

-- Location: LCCOMB_X25_Y18_N6
\loopback_inst1|uart_inst|uart_rx_data_vec~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_data_vec~5_combout\ = (!\reset~q\ & \loopback_inst1|uart_inst|uart_rx_data_vec\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|uart_rx_data_vec\(6),
	combout => \loopback_inst1|uart_inst|uart_rx_data_vec~5_combout\);

-- Location: FF_X25_Y18_N7
\loopback_inst1|uart_inst|uart_rx_data_vec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_data_vec~5_combout\,
	ena => \loopback_inst1|uart_inst|uart_rx_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_data_vec\(5));

-- Location: LCCOMB_X25_Y18_N4
\loopback_inst1|uart_inst|uart_rx_data_vec~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_data_vec~4_combout\ = (!\reset~q\ & \loopback_inst1|uart_inst|uart_rx_data_vec\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|uart_rx_data_vec\(5),
	combout => \loopback_inst1|uart_inst|uart_rx_data_vec~4_combout\);

-- Location: FF_X25_Y18_N5
\loopback_inst1|uart_inst|uart_rx_data_vec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_data_vec~4_combout\,
	ena => \loopback_inst1|uart_inst|uart_rx_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_data_vec\(4));

-- Location: LCCOMB_X25_Y18_N10
\loopback_inst1|uart_inst|uart_rx_data_vec~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_data_vec~3_combout\ = (\loopback_inst1|uart_inst|uart_rx_data_vec\(4) & !\reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|uart_rx_data_vec\(4),
	datac => \reset~q\,
	combout => \loopback_inst1|uart_inst|uart_rx_data_vec~3_combout\);

-- Location: FF_X25_Y18_N11
\loopback_inst1|uart_inst|uart_rx_data_vec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_data_vec~3_combout\,
	ena => \loopback_inst1|uart_inst|uart_rx_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_data_vec\(3));

-- Location: LCCOMB_X25_Y18_N20
\loopback_inst1|uart_inst|uart_rx_data_vec~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_data_vec~2_combout\ = (!\reset~q\ & \loopback_inst1|uart_inst|uart_rx_data_vec\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|uart_rx_data_vec\(3),
	combout => \loopback_inst1|uart_inst|uart_rx_data_vec~2_combout\);

-- Location: FF_X25_Y18_N21
\loopback_inst1|uart_inst|uart_rx_data_vec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_data_vec~2_combout\,
	ena => \loopback_inst1|uart_inst|uart_rx_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_data_vec\(2));

-- Location: LCCOMB_X25_Y18_N26
\loopback_inst1|uart_inst|uart_rx_data_vec~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_data_vec~1_combout\ = (!\reset~q\ & \loopback_inst1|uart_inst|uart_rx_data_vec\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~q\,
	datad => \loopback_inst1|uart_inst|uart_rx_data_vec\(2),
	combout => \loopback_inst1|uart_inst|uart_rx_data_vec~1_combout\);

-- Location: FF_X25_Y18_N27
\loopback_inst1|uart_inst|uart_rx_data_vec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_data_vec~1_combout\,
	ena => \loopback_inst1|uart_inst|uart_rx_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_data_vec\(1));

-- Location: LCCOMB_X25_Y18_N24
\loopback_inst1|uart_inst|uart_rx_data_vec~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_rx_data_vec~0_combout\ = (\loopback_inst1|uart_inst|uart_rx_data_vec\(1) & !\reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_rx_data_vec\(1),
	datac => \reset~q\,
	combout => \loopback_inst1|uart_inst|uart_rx_data_vec~0_combout\);

-- Location: FF_X25_Y18_N25
\loopback_inst1|uart_inst|uart_rx_data_vec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_rx_data_vec~0_combout\,
	ena => \loopback_inst1|uart_inst|uart_rx_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_rx_data_vec\(0));

-- Location: LCCOMB_X25_Y17_N30
\loopback_inst1|fifo_data_in[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|fifo_data_in[0]~feeder_combout\ = \loopback_inst1|uart_inst|uart_rx_data_vec\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \loopback_inst1|uart_inst|uart_rx_data_vec\(0),
	combout => \loopback_inst1|fifo_data_in[0]~feeder_combout\);

-- Location: FF_X25_Y17_N31
\loopback_inst1|fifo_data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|fifo_data_in[0]~feeder_combout\,
	ena => \loopback_inst1|fifo_data_in_stb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|fifo_data_in\(0));

-- Location: LCCOMB_X25_Y17_N16
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[21]~feeder_combout\ = \loopback_inst1|fifo_data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \loopback_inst1|fifo_data_in\(0),
	combout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[21]~feeder_combout\);

-- Location: FF_X25_Y17_N17
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(21));

-- Location: FF_X24_Y16_N29
\loopback_inst1|fifo_data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|uart_inst|uart_rx_data_vec\(1),
	sload => VCC,
	ena => \loopback_inst1|fifo_data_in_stb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|fifo_data_in\(1));

-- Location: FF_X24_Y16_N11
\loopback_inst1|fifo_data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|uart_inst|uart_rx_data_vec\(2),
	sload => VCC,
	ena => \loopback_inst1|fifo_data_in_stb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|fifo_data_in\(2));

-- Location: FF_X24_Y16_N25
\loopback_inst1|fifo_data_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|uart_inst|uart_rx_data_vec\(3),
	sload => VCC,
	ena => \loopback_inst1|fifo_data_in_stb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|fifo_data_in\(3));

-- Location: FF_X24_Y16_N15
\loopback_inst1|fifo_data_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|uart_inst|uart_rx_data_vec\(4),
	sload => VCC,
	ena => \loopback_inst1|fifo_data_in_stb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|fifo_data_in\(4));

-- Location: FF_X24_Y16_N21
\loopback_inst1|fifo_data_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|uart_inst|uart_rx_data_vec\(5),
	sload => VCC,
	ena => \loopback_inst1|fifo_data_in_stb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|fifo_data_in\(5));

-- Location: FF_X24_Y16_N13
\loopback_inst1|fifo_data_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|uart_inst|uart_rx_data_vec\(6),
	sload => VCC,
	ena => \loopback_inst1|fifo_data_in_stb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|fifo_data_in\(6));

-- Location: FF_X24_Y16_N27
\loopback_inst1|fifo_data_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|uart_inst|uart_rx_data_vec\(7),
	sload => VCC,
	ena => \loopback_inst1|fifo_data_in_stb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|fifo_data_in\(7));

-- Location: M9K_X27_Y16_N0
\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/coba_uart.ram0_GENERIC_FIFO_50540cb4.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "loopback:loopback_inst1|GENERIC_FIFO:receive_buffer|altsyncram:fifo_memory_rtl_0|altsyncram_kqh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \loopback_inst1|receive_buffer|fifo_memory~28_combout\,
	portbre => VCC,
	clk0 => \clock_y3~inputclkctrl_outclk\,
	clk1 => \clock_y3~inputclkctrl_outclk\,
	ena0 => \loopback_inst1|receive_buffer|fifo_memory~28_combout\,
	portadatain => \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y17_N6
\loopback_inst1|receive_buffer|fifo_memory~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory~26_combout\ = (\loopback_inst1|receive_buffer|fifo_memory~25_combout\ & (((\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(21))))) # (!\loopback_inst1|receive_buffer|fifo_memory~25_combout\ & 
-- ((\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(22) & ((\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(22) & 
-- (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|fifo_memory~25_combout\,
	datab => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(22),
	datac => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(21),
	datad => \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \loopback_inst1|receive_buffer|fifo_memory~26_combout\);

-- Location: LCCOMB_X26_Y17_N30
\loopback_inst1|uart_data_in~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_data_in~0_combout\ = (\reset~q\) # ((\loopback_inst1|receive_buffer|Equal2~2_combout\ & (!\loopback_inst1|uart_data_in_stb~q\ & \loopback_inst1|receive_buffer|level[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|Equal2~2_combout\,
	datab => \loopback_inst1|uart_data_in_stb~q\,
	datac => \loopback_inst1|receive_buffer|level[0]~6_combout\,
	datad => \reset~q\,
	combout => \loopback_inst1|uart_data_in~0_combout\);

-- Location: FF_X26_Y17_N7
\loopback_inst1|uart_data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory~26_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_data_in~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_data_in\(0));

-- Location: LCCOMB_X25_Y17_N6
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[27]~feeder_combout\ = \loopback_inst1|fifo_data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \loopback_inst1|fifo_data_in\(3),
	combout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[27]~feeder_combout\);

-- Location: FF_X25_Y17_N7
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(27));

-- Location: LCCOMB_X29_Y17_N12
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X29_Y17_N13
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(28));

-- Location: LCCOMB_X26_Y17_N20
\loopback_inst1|receive_buffer|fifo_memory~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory~30_combout\ = (\loopback_inst1|receive_buffer|fifo_memory~25_combout\ & (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(27))) # (!\loopback_inst1|receive_buffer|fifo_memory~25_combout\ & 
-- ((\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(28) & ((\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a3\))) # (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(28) & 
-- (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|fifo_memory~25_combout\,
	datab => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(27),
	datac => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(28),
	datad => \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a3\,
	combout => \loopback_inst1|receive_buffer|fifo_memory~30_combout\);

-- Location: FF_X26_Y17_N21
\loopback_inst1|uart_data_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory~30_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_data_in~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_data_in\(3));

-- Location: LCCOMB_X29_Y17_N14
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X29_Y17_N15
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(30));

-- Location: LCCOMB_X25_Y17_N8
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[29]~feeder_combout\ = \loopback_inst1|fifo_data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \loopback_inst1|fifo_data_in\(4),
	combout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[29]~feeder_combout\);

-- Location: FF_X25_Y17_N9
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(29));

-- Location: LCCOMB_X26_Y17_N18
\loopback_inst1|receive_buffer|fifo_memory~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory~31_combout\ = (\loopback_inst1|receive_buffer|fifo_memory~25_combout\ & (((\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(29))))) # (!\loopback_inst1|receive_buffer|fifo_memory~25_combout\ & 
-- ((\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(30) & ((\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a4\))) # (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(30) & 
-- (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|fifo_memory~25_combout\,
	datab => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(30),
	datac => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(29),
	datad => \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a4\,
	combout => \loopback_inst1|receive_buffer|fifo_memory~31_combout\);

-- Location: FF_X26_Y17_N19
\loopback_inst1|uart_data_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory~31_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_data_in~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_data_in\(4));

-- Location: LCCOMB_X29_Y17_N16
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X29_Y17_N17
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(32));

-- Location: FF_X26_Y16_N19
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	asdata => \loopback_inst1|fifo_data_in\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(31));

-- Location: LCCOMB_X26_Y17_N4
\loopback_inst1|receive_buffer|fifo_memory~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory~32_combout\ = (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(32) & ((\loopback_inst1|receive_buffer|fifo_memory~25_combout\ & (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(31))) # 
-- (!\loopback_inst1|receive_buffer|fifo_memory~25_combout\ & ((\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a5\))))) # (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(32) & 
-- (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(32),
	datab => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(31),
	datac => \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a5\,
	datad => \loopback_inst1|receive_buffer|fifo_memory~25_combout\,
	combout => \loopback_inst1|receive_buffer|fifo_memory~32_combout\);

-- Location: FF_X26_Y17_N5
\loopback_inst1|uart_data_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory~32_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_data_in~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_data_in\(5));

-- Location: LCCOMB_X26_Y17_N14
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X26_Y17_N15
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(36));

-- Location: LCCOMB_X25_Y17_N0
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[35]~feeder_combout\ = \loopback_inst1|fifo_data_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \loopback_inst1|fifo_data_in\(7),
	combout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[35]~feeder_combout\);

-- Location: FF_X25_Y17_N1
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(35));

-- Location: LCCOMB_X26_Y17_N12
\loopback_inst1|receive_buffer|fifo_memory~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory~34_combout\ = (\loopback_inst1|receive_buffer|fifo_memory~25_combout\ & (((\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(35))))) # (!\loopback_inst1|receive_buffer|fifo_memory~25_combout\ & 
-- ((\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(36) & ((\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a7\))) # (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(36) & 
-- (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|fifo_memory~25_combout\,
	datab => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(36),
	datac => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(35),
	datad => \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a7\,
	combout => \loopback_inst1|receive_buffer|fifo_memory~34_combout\);

-- Location: FF_X26_Y17_N13
\loopback_inst1|uart_data_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory~34_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_data_in~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_data_in\(7));

-- Location: LCCOMB_X26_Y18_N30
\loopback_inst1|uart_inst|uart_tx_data_vec~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_data_vec~7_combout\ = (\loopback_inst1|uart_inst|uart_tx_count[1]~0_combout\ & (\loopback_inst1|uart_data_in\(7))) # (!\loopback_inst1|uart_inst|uart_tx_count[1]~0_combout\ & 
-- ((\loopback_inst1|uart_inst|uart_tx_data_vec\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_data_in\(7),
	datac => \loopback_inst1|uart_inst|uart_tx_data_vec\(7),
	datad => \loopback_inst1|uart_inst|uart_tx_count[1]~0_combout\,
	combout => \loopback_inst1|uart_inst|uart_tx_data_vec~7_combout\);

-- Location: FF_X26_Y18_N31
\loopback_inst1|uart_inst|uart_tx_data_vec[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_tx_data_vec~7_combout\,
	sclr => \reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_tx_data_vec\(7));

-- Location: LCCOMB_X25_Y17_N18
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[33]~feeder_combout\ = \loopback_inst1|fifo_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \loopback_inst1|fifo_data_in\(6),
	combout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[33]~feeder_combout\);

-- Location: FF_X25_Y17_N19
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(33));

-- Location: LCCOMB_X29_Y17_N10
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X29_Y17_N11
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(34));

-- Location: LCCOMB_X26_Y17_N2
\loopback_inst1|receive_buffer|fifo_memory~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory~33_combout\ = (\loopback_inst1|receive_buffer|fifo_memory~25_combout\ & (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(33))) # (!\loopback_inst1|receive_buffer|fifo_memory~25_combout\ & 
-- ((\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(34) & ((\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a6\))) # (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(34) & 
-- (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|fifo_memory~25_combout\,
	datab => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(33),
	datac => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(34),
	datad => \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a6\,
	combout => \loopback_inst1|receive_buffer|fifo_memory~33_combout\);

-- Location: FF_X26_Y17_N3
\loopback_inst1|uart_data_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory~33_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_data_in~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_data_in\(6));

-- Location: LCCOMB_X26_Y18_N4
\loopback_inst1|uart_inst|uart_tx_data_vec~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_data_vec~6_combout\ = (\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & (\loopback_inst1|uart_inst|uart_tx_data_vec\(7))) # (!\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & 
-- ((\loopback_inst1|uart_data_in\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_tx_data_vec\(7),
	datab => \loopback_inst1|uart_data_in\(6),
	datad => \loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\,
	combout => \loopback_inst1|uart_inst|uart_tx_data_vec~6_combout\);

-- Location: FF_X26_Y18_N5
\loopback_inst1|uart_inst|uart_tx_data_vec[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_tx_data_vec~6_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_inst|uart_tx_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_tx_data_vec\(6));

-- Location: LCCOMB_X26_Y18_N22
\loopback_inst1|uart_inst|uart_tx_data_vec~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_data_vec~5_combout\ = (\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & ((\loopback_inst1|uart_inst|uart_tx_data_vec\(6)))) # (!\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & 
-- (\loopback_inst1|uart_data_in\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_data_in\(5),
	datac => \loopback_inst1|uart_inst|uart_tx_data_vec\(6),
	datad => \loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\,
	combout => \loopback_inst1|uart_inst|uart_tx_data_vec~5_combout\);

-- Location: FF_X26_Y18_N23
\loopback_inst1|uart_inst|uart_tx_data_vec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_tx_data_vec~5_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_inst|uart_tx_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_tx_data_vec\(5));

-- Location: LCCOMB_X26_Y18_N28
\loopback_inst1|uart_inst|uart_tx_data_vec~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_data_vec~4_combout\ = (\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & ((\loopback_inst1|uart_inst|uart_tx_data_vec\(5)))) # (!\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & 
-- (\loopback_inst1|uart_data_in\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_data_in\(4),
	datac => \loopback_inst1|uart_inst|uart_tx_data_vec\(5),
	datad => \loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\,
	combout => \loopback_inst1|uart_inst|uart_tx_data_vec~4_combout\);

-- Location: FF_X26_Y18_N29
\loopback_inst1|uart_inst|uart_tx_data_vec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_tx_data_vec~4_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_inst|uart_tx_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_tx_data_vec\(4));

-- Location: LCCOMB_X26_Y15_N14
\loopback_inst1|uart_inst|uart_tx_data_vec~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_data_vec~3_combout\ = (\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & ((\loopback_inst1|uart_inst|uart_tx_data_vec\(4)))) # (!\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & 
-- (\loopback_inst1|uart_data_in\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\,
	datac => \loopback_inst1|uart_data_in\(3),
	datad => \loopback_inst1|uart_inst|uart_tx_data_vec\(4),
	combout => \loopback_inst1|uart_inst|uart_tx_data_vec~3_combout\);

-- Location: FF_X26_Y15_N15
\loopback_inst1|uart_inst|uart_tx_data_vec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_tx_data_vec~3_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_inst|uart_tx_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_tx_data_vec\(3));

-- Location: LCCOMB_X25_Y17_N20
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[25]~feeder_combout\ = \loopback_inst1|fifo_data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \loopback_inst1|fifo_data_in\(2),
	combout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[25]~feeder_combout\);

-- Location: FF_X25_Y17_N21
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(25));

-- Location: LCCOMB_X26_Y17_N24
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X26_Y17_N25
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(26));

-- Location: LCCOMB_X26_Y17_N22
\loopback_inst1|receive_buffer|fifo_memory~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory~29_combout\ = (\loopback_inst1|receive_buffer|fifo_memory~25_combout\ & (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(25))) # (!\loopback_inst1|receive_buffer|fifo_memory~25_combout\ & 
-- ((\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(26) & ((\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a2\))) # (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(26) & 
-- (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|fifo_memory~25_combout\,
	datab => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(25),
	datac => \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a2\,
	datad => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(26),
	combout => \loopback_inst1|receive_buffer|fifo_memory~29_combout\);

-- Location: FF_X26_Y17_N23
\loopback_inst1|uart_data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory~29_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_data_in~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_data_in\(2));

-- Location: LCCOMB_X26_Y15_N4
\loopback_inst1|uart_inst|uart_tx_data_vec~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_data_vec~2_combout\ = (\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & (\loopback_inst1|uart_inst|uart_tx_data_vec\(3))) # (!\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & 
-- ((\loopback_inst1|uart_data_in\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\,
	datac => \loopback_inst1|uart_inst|uart_tx_data_vec\(3),
	datad => \loopback_inst1|uart_data_in\(2),
	combout => \loopback_inst1|uart_inst|uart_tx_data_vec~2_combout\);

-- Location: FF_X26_Y15_N5
\loopback_inst1|uart_inst|uart_tx_data_vec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_tx_data_vec~2_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_inst|uart_tx_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_tx_data_vec\(2));

-- Location: LCCOMB_X29_Y17_N30
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X29_Y17_N31
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(24));

-- Location: LCCOMB_X25_Y17_N4
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[23]~feeder_combout\ = \loopback_inst1|fifo_data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \loopback_inst1|fifo_data_in\(1),
	combout => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[23]~feeder_combout\);

-- Location: FF_X25_Y17_N5
\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(23));

-- Location: LCCOMB_X26_Y17_N16
\loopback_inst1|receive_buffer|fifo_memory~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|receive_buffer|fifo_memory~27_combout\ = (\loopback_inst1|receive_buffer|fifo_memory~25_combout\ & (((\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(23))))) # (!\loopback_inst1|receive_buffer|fifo_memory~25_combout\ & 
-- ((\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(24) & ((\loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a1\))) # (!\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(24) & 
-- (\loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|receive_buffer|fifo_memory~25_combout\,
	datab => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(24),
	datac => \loopback_inst1|receive_buffer|fifo_memory_rtl_0_bypass\(23),
	datad => \loopback_inst1|receive_buffer|fifo_memory_rtl_0|auto_generated|ram_block1a1\,
	combout => \loopback_inst1|receive_buffer|fifo_memory~27_combout\);

-- Location: FF_X26_Y17_N17
\loopback_inst1|uart_data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|receive_buffer|fifo_memory~27_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_data_in~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_data_in\(1));

-- Location: LCCOMB_X26_Y15_N22
\loopback_inst1|uart_inst|uart_tx_data_vec~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_data_vec~1_combout\ = (\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & (\loopback_inst1|uart_inst|uart_tx_data_vec\(2))) # (!\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & 
-- ((\loopback_inst1|uart_data_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\,
	datac => \loopback_inst1|uart_inst|uart_tx_data_vec\(2),
	datad => \loopback_inst1|uart_data_in\(1),
	combout => \loopback_inst1|uart_inst|uart_tx_data_vec~1_combout\);

-- Location: FF_X26_Y15_N23
\loopback_inst1|uart_inst|uart_tx_data_vec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_tx_data_vec~1_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_inst|uart_tx_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_tx_data_vec\(1));

-- Location: LCCOMB_X26_Y15_N8
\loopback_inst1|uart_inst|uart_tx_data_vec~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_data_vec~0_combout\ = (\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & ((\loopback_inst1|uart_inst|uart_tx_data_vec\(1)))) # (!\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\ & 
-- (\loopback_inst1|uart_data_in\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_data_in\(0),
	datab => \loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\,
	datac => \loopback_inst1|uart_inst|uart_tx_data_vec\(1),
	combout => \loopback_inst1|uart_inst|uart_tx_data_vec~0_combout\);

-- Location: FF_X26_Y15_N9
\loopback_inst1|uart_inst|uart_tx_data_vec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_tx_data_vec~0_combout\,
	sclr => \reset~q\,
	ena => \loopback_inst1|uart_inst|uart_tx_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_tx_data_vec\(0));

-- Location: LCCOMB_X26_Y17_N28
\loopback_inst1|uart_inst|uart_tx_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_data~1_combout\ = (\loopback_inst1|uart_inst|tx_baud_tick~q\ & (\loopback_inst1|uart_inst|uart_tx_state.tx_send_start_bit~q\ & ((\loopback_inst1|uart_inst|uart_tx_data_vec\(0)) # 
-- (!\loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|tx_baud_tick~q\,
	datab => \loopback_inst1|uart_inst|uart_tx_data_vec\(0),
	datac => \loopback_inst1|uart_inst|uart_tx_state.tx_send_data~q\,
	datad => \loopback_inst1|uart_inst|uart_tx_state.tx_send_start_bit~q\,
	combout => \loopback_inst1|uart_inst|uart_tx_data~1_combout\);

-- Location: LCCOMB_X26_Y17_N8
\loopback_inst1|uart_inst|uart_tx_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \loopback_inst1|uart_inst|uart_tx_data~2_combout\ = (!\loopback_inst1|uart_inst|uart_tx_data~0_combout\ & (!\reset~q\ & !\loopback_inst1|uart_inst|uart_tx_data~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \loopback_inst1|uart_inst|uart_tx_data~0_combout\,
	datab => \reset~q\,
	datad => \loopback_inst1|uart_inst|uart_tx_data~1_combout\,
	combout => \loopback_inst1|uart_inst|uart_tx_data~2_combout\);

-- Location: FF_X26_Y17_N9
\loopback_inst1|uart_inst|uart_tx_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \loopback_inst1|uart_inst|uart_tx_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loopback_inst1|uart_inst|uart_tx_data~q\);

-- Location: LCCOMB_X26_Y17_N26
\usb_rs232_txd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \usb_rs232_txd~0_combout\ = !\loopback_inst1|uart_inst|uart_tx_data~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \loopback_inst1|uart_inst|uart_tx_data~q\,
	combout => \usb_rs232_txd~0_combout\);

-- Location: FF_X26_Y17_N27
\usb_rs232_txd~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_y3~inputclkctrl_outclk\,
	d => \usb_rs232_txd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \usb_rs232_txd~reg0_q\);

ww_usb_rs232_txd <= \usb_rs232_txd~output_o\;
END structure;


