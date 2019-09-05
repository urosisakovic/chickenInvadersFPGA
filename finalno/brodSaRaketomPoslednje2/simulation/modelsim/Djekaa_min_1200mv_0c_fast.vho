-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/11/2019 13:15:35"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Igrica IS
    PORT (
	H_SYNC : OUT std_logic;
	CLK : IN std_logic;
	V_SYNC : OUT std_logic;
	BLUE : OUT std_logic_vector(3 DOWNTO 0);
	RAKETA : IN std_logic;
	LEFT : IN std_logic;
	RIGHT : IN std_logic;
	GREEN : OUT std_logic_vector(3 DOWNTO 0);
	RED : OUT std_logic_vector(3 DOWNTO 0)
	);
END Igrica;

-- Design Ports Information
-- H_SYNC	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V_SYNC	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLUE[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLUE[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLUE[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLUE[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAKETA	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEFT	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RIGHT	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GREEN[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GREEN[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GREEN[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GREEN[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RED[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RED[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RED[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RED[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Igrica IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_H_SYNC : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_V_SYNC : std_logic;
SIGNAL ww_BLUE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RAKETA : std_logic;
SIGNAL ww_LEFT : std_logic;
SIGNAL ww_RIGHT : std_logic;
SIGNAL ww_GREEN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RED : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAKETA~input_o\ : std_logic;
SIGNAL \LEFT~input_o\ : std_logic;
SIGNAL \RIGHT~input_o\ : std_logic;
SIGNAL \H_SYNC~output_o\ : std_logic;
SIGNAL \V_SYNC~output_o\ : std_logic;
SIGNAL \BLUE[3]~output_o\ : std_logic;
SIGNAL \BLUE[2]~output_o\ : std_logic;
SIGNAL \BLUE[1]~output_o\ : std_logic;
SIGNAL \BLUE[0]~output_o\ : std_logic;
SIGNAL \GREEN[3]~output_o\ : std_logic;
SIGNAL \GREEN[2]~output_o\ : std_logic;
SIGNAL \GREEN[1]~output_o\ : std_logic;
SIGNAL \GREEN[0]~output_o\ : std_logic;
SIGNAL \RED[3]~output_o\ : std_logic;
SIGNAL \RED[2]~output_o\ : std_logic;
SIGNAL \RED[1]~output_o\ : std_logic;
SIGNAL \RED[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst|Add0~0_combout\ : std_logic;
SIGNAL \inst1|inst|data[0]~7_combout\ : std_logic;
SIGNAL \inst1|inst|Add0~1\ : std_logic;
SIGNAL \inst1|inst|Add0~2_combout\ : std_logic;
SIGNAL \inst1|inst|data[1]~6_combout\ : std_logic;
SIGNAL \inst1|inst|Add0~3\ : std_logic;
SIGNAL \inst1|inst|Add0~4_combout\ : std_logic;
SIGNAL \inst1|inst|data[2]~8_combout\ : std_logic;
SIGNAL \inst1|inst|Add0~5\ : std_logic;
SIGNAL \inst1|inst|Add0~6_combout\ : std_logic;
SIGNAL \inst1|inst|data[3]~5_combout\ : std_logic;
SIGNAL \inst1|inst|Add0~7\ : std_logic;
SIGNAL \inst1|inst|Add0~8_combout\ : std_logic;
SIGNAL \inst1|inst|data[4]~10_combout\ : std_logic;
SIGNAL \inst1|inst|Add0~9\ : std_logic;
SIGNAL \inst1|inst|Add0~10_combout\ : std_logic;
SIGNAL \inst1|inst|data[5]~9_combout\ : std_logic;
SIGNAL \inst1|inst|Add0~11\ : std_logic;
SIGNAL \inst1|inst|Add0~12_combout\ : std_logic;
SIGNAL \inst1|inst|data[6]~4_combout\ : std_logic;
SIGNAL \inst1|inst|Add0~13\ : std_logic;
SIGNAL \inst1|inst|Add0~14_combout\ : std_logic;
SIGNAL \inst1|inst|data[7]~3_combout\ : std_logic;
SIGNAL \inst1|inst|Add0~15\ : std_logic;
SIGNAL \inst1|inst|Add0~16_combout\ : std_logic;
SIGNAL \inst1|inst|data[8]~12_combout\ : std_logic;
SIGNAL \inst1|inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|inst|data[10]~14_combout\ : std_logic;
SIGNAL \inst1|inst|Add0~17\ : std_logic;
SIGNAL \inst1|inst|Add0~19\ : std_logic;
SIGNAL \inst1|inst|Add0~20_combout\ : std_logic;
SIGNAL \inst1|inst|data[10]~11_combout\ : std_logic;
SIGNAL \inst1|inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|inst|data[8]~2_combout\ : std_logic;
SIGNAL \inst1|inst|Add0~18_combout\ : std_logic;
SIGNAL \inst1|inst|data[9]~13_combout\ : std_logic;
SIGNAL \inst1|inst10~1_combout\ : std_logic;
SIGNAL \inst1|inst10~0_combout\ : std_logic;
SIGNAL \inst1|inst10~2_combout\ : std_logic;
SIGNAL \inst1|inst10~3_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|inst1|data[0]~5_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~1\ : std_logic;
SIGNAL \inst1|inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|inst1|data[1]~4_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~3\ : std_logic;
SIGNAL \inst1|inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|inst1|data[2]~3_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~5\ : std_logic;
SIGNAL \inst1|inst1|Add0~7\ : std_logic;
SIGNAL \inst1|inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|inst1|data[4]~9_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~9\ : std_logic;
SIGNAL \inst1|inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|inst1|data[5]~8_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~11\ : std_logic;
SIGNAL \inst1|inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|inst1|data[6]~6_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~13\ : std_logic;
SIGNAL \inst1|inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|inst1|data[7]~1_combout\ : std_logic;
SIGNAL \inst1|inst21~1_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~15\ : std_logic;
SIGNAL \inst1|inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|inst1|data[8]~0_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~17\ : std_logic;
SIGNAL \inst1|inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|inst1|data[9]~2_combout\ : std_logic;
SIGNAL \inst1|inst21~0_combout\ : std_logic;
SIGNAL \inst1|inst21~2_combout\ : std_logic;
SIGNAL \inst1|inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|inst1|data[3]~7_combout\ : std_logic;
SIGNAL \inst1|inst15~2_combout\ : std_logic;
SIGNAL \inst1|inst15~3_combout\ : std_logic;
SIGNAL \inst1|inst15~0_combout\ : std_logic;
SIGNAL \inst1|inst15~1_combout\ : std_logic;
SIGNAL \inst1|inst15~4_combout\ : std_logic;
SIGNAL \inst20|inst5|LessThan1~0_combout\ : std_logic;
SIGNAL \inst20|inst5|LessThan1~1_combout\ : std_logic;
SIGNAL \inst20|inst8|LessThan1~6_combout\ : std_logic;
SIGNAL \inst20|inst8|LessThan1~3_combout\ : std_logic;
SIGNAL \inst20|inst8|LessThan1~22_combout\ : std_logic;
SIGNAL \inst20|inst118|LessThan0~1_combout\ : std_logic;
SIGNAL \inst20|inst118|LessThan0~0_combout\ : std_logic;
SIGNAL \inst14|Y[3]~3_combout\ : std_logic;
SIGNAL \inst20|inst1|data[3]~feeder_combout\ : std_logic;
SIGNAL \inst14|Y[3]~0_combout\ : std_logic;
SIGNAL \inst14|Y[3]~1_combout\ : std_logic;
SIGNAL \inst14|Y[3]~2_combout\ : std_logic;
SIGNAL \inst14|Y[3]~4_combout\ : std_logic;
SIGNAL \inst17|inst10~4_combout\ : std_logic;
SIGNAL \inst17|inst10~5_combout\ : std_logic;
SIGNAL \inst1|inst16~0_combout\ : std_logic;
SIGNAL \inst17|inst10~0_combout\ : std_logic;
SIGNAL \inst17|inst10~1_combout\ : std_logic;
SIGNAL \inst17|inst10~2_combout\ : std_logic;
SIGNAL \inst17|inst10~3_combout\ : std_logic;
SIGNAL \inst17|inst10~6_combout\ : std_logic;
SIGNAL \inst14|Y[3]~5_combout\ : std_logic;
SIGNAL \inst1|inst16~1_combout\ : std_logic;
SIGNAL \inst1|inst16~2_combout\ : std_logic;
SIGNAL \inst1|inst20|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|inst16~3_combout\ : std_logic;
SIGNAL inst9 : std_logic_vector(3 DOWNTO 0);
SIGNAL inst10 : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|inst|data\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|inst1|data\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst20|inst1|data\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|ALT_INV_inst15~4_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst10~3_combout\ : std_logic;

BEGIN

H_SYNC <= ww_H_SYNC;
ww_CLK <= CLK;
V_SYNC <= ww_V_SYNC;
BLUE <= ww_BLUE;
ww_RAKETA <= RAKETA;
ww_LEFT <= LEFT;
ww_RIGHT <= RIGHT;
GREEN <= ww_GREEN;
RED <= ww_RED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst1|ALT_INV_inst15~4_combout\ <= NOT \inst1|inst15~4_combout\;
\inst1|ALT_INV_inst10~3_combout\ <= NOT \inst1|inst10~3_combout\;

-- Location: IOOBUF_X41_Y18_N16
\H_SYNC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_inst10~3_combout\,
	devoe => ww_devoe,
	o => \H_SYNC~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\V_SYNC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_inst15~4_combout\,
	devoe => ww_devoe,
	o => \V_SYNC~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\BLUE[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst10(3),
	devoe => ww_devoe,
	o => \BLUE[3]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\BLUE[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst10(3),
	devoe => ww_devoe,
	o => \BLUE[2]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\BLUE[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst10(3),
	devoe => ww_devoe,
	o => \BLUE[1]~output_o\);

-- Location: IOOBUF_X41_Y19_N16
\BLUE[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst10(3),
	devoe => ww_devoe,
	o => \BLUE[0]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\GREEN[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(3),
	devoe => ww_devoe,
	o => \GREEN[3]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\GREEN[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(3),
	devoe => ww_devoe,
	o => \GREEN[2]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\GREEN[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(1),
	devoe => ww_devoe,
	o => \GREEN[1]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\GREEN[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(3),
	devoe => ww_devoe,
	o => \GREEN[0]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\RED[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(3),
	devoe => ww_devoe,
	o => \RED[3]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\RED[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(1),
	devoe => ww_devoe,
	o => \RED[2]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\RED[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(1),
	devoe => ww_devoe,
	o => \RED[1]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\RED[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst9(3),
	devoe => ww_devoe,
	o => \RED[0]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G9
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X27_Y20_N2
\inst1|inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~0_combout\ = \inst1|inst|data\(0) $ (VCC)
-- \inst1|inst|Add0~1\ = CARRY(\inst1|inst|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(0),
	datad => VCC,
	combout => \inst1|inst|Add0~0_combout\,
	cout => \inst1|inst|Add0~1\);

-- Location: LCCOMB_X26_Y20_N16
\inst1|inst|data[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|data[0]~7_combout\ = (\inst1|inst|Add0~0_combout\ & (((\inst1|inst|data\(0) & \inst1|inst|data[10]~14_combout\)) # (!\inst1|inst|data[8]~2_combout\))) # (!\inst1|inst|Add0~0_combout\ & (((\inst1|inst|data\(0) & 
-- \inst1|inst|data[10]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Add0~0_combout\,
	datab => \inst1|inst|data[8]~2_combout\,
	datac => \inst1|inst|data\(0),
	datad => \inst1|inst|data[10]~14_combout\,
	combout => \inst1|inst|data[0]~7_combout\);

-- Location: FF_X26_Y20_N17
\inst1|inst|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst|data[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|data\(0));

-- Location: LCCOMB_X27_Y20_N4
\inst1|inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~2_combout\ = (\inst1|inst|data\(1) & (!\inst1|inst|Add0~1\)) # (!\inst1|inst|data\(1) & ((\inst1|inst|Add0~1\) # (GND)))
-- \inst1|inst|Add0~3\ = CARRY((!\inst1|inst|Add0~1\) # (!\inst1|inst|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|data\(1),
	datad => VCC,
	cin => \inst1|inst|Add0~1\,
	combout => \inst1|inst|Add0~2_combout\,
	cout => \inst1|inst|Add0~3\);

-- Location: LCCOMB_X26_Y20_N6
\inst1|inst|data[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|data[1]~6_combout\ = (\inst1|inst|Add0~2_combout\ & (((\inst1|inst|data\(1) & \inst1|inst|data[10]~14_combout\)) # (!\inst1|inst|data[8]~2_combout\))) # (!\inst1|inst|Add0~2_combout\ & (((\inst1|inst|data\(1) & 
-- \inst1|inst|data[10]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Add0~2_combout\,
	datab => \inst1|inst|data[8]~2_combout\,
	datac => \inst1|inst|data\(1),
	datad => \inst1|inst|data[10]~14_combout\,
	combout => \inst1|inst|data[1]~6_combout\);

-- Location: FF_X26_Y20_N7
\inst1|inst|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst|data[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|data\(1));

-- Location: LCCOMB_X27_Y20_N6
\inst1|inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~4_combout\ = (\inst1|inst|data\(2) & (\inst1|inst|Add0~3\ $ (GND))) # (!\inst1|inst|data\(2) & (!\inst1|inst|Add0~3\ & VCC))
-- \inst1|inst|Add0~5\ = CARRY((\inst1|inst|data\(2) & !\inst1|inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|data\(2),
	datad => VCC,
	cin => \inst1|inst|Add0~3\,
	combout => \inst1|inst|Add0~4_combout\,
	cout => \inst1|inst|Add0~5\);

-- Location: LCCOMB_X26_Y20_N22
\inst1|inst|data[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|data[2]~8_combout\ = (\inst1|inst|Add0~4_combout\ & (((\inst1|inst|data\(2) & \inst1|inst|data[10]~14_combout\)) # (!\inst1|inst|data[8]~2_combout\))) # (!\inst1|inst|Add0~4_combout\ & (((\inst1|inst|data\(2) & 
-- \inst1|inst|data[10]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Add0~4_combout\,
	datab => \inst1|inst|data[8]~2_combout\,
	datac => \inst1|inst|data\(2),
	datad => \inst1|inst|data[10]~14_combout\,
	combout => \inst1|inst|data[2]~8_combout\);

-- Location: FF_X26_Y20_N23
\inst1|inst|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst|data[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|data\(2));

-- Location: LCCOMB_X27_Y20_N8
\inst1|inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~6_combout\ = (\inst1|inst|data\(3) & (!\inst1|inst|Add0~5\)) # (!\inst1|inst|data\(3) & ((\inst1|inst|Add0~5\) # (GND)))
-- \inst1|inst|Add0~7\ = CARRY((!\inst1|inst|Add0~5\) # (!\inst1|inst|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(3),
	datad => VCC,
	cin => \inst1|inst|Add0~5\,
	combout => \inst1|inst|Add0~6_combout\,
	cout => \inst1|inst|Add0~7\);

-- Location: LCCOMB_X26_Y20_N0
\inst1|inst|data[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|data[3]~5_combout\ = (\inst1|inst|data[8]~2_combout\ & (\inst1|inst|data[10]~14_combout\ & (\inst1|inst|data\(3)))) # (!\inst1|inst|data[8]~2_combout\ & ((\inst1|inst|Add0~6_combout\) # ((\inst1|inst|data[10]~14_combout\ & 
-- \inst1|inst|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data[8]~2_combout\,
	datab => \inst1|inst|data[10]~14_combout\,
	datac => \inst1|inst|data\(3),
	datad => \inst1|inst|Add0~6_combout\,
	combout => \inst1|inst|data[3]~5_combout\);

-- Location: FF_X26_Y20_N1
\inst1|inst|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst|data[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|data\(3));

-- Location: LCCOMB_X27_Y20_N10
\inst1|inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~8_combout\ = (\inst1|inst|data\(4) & (\inst1|inst|Add0~7\ $ (GND))) # (!\inst1|inst|data\(4) & (!\inst1|inst|Add0~7\ & VCC))
-- \inst1|inst|Add0~9\ = CARRY((\inst1|inst|data\(4) & !\inst1|inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|data\(4),
	datad => VCC,
	cin => \inst1|inst|Add0~7\,
	combout => \inst1|inst|Add0~8_combout\,
	cout => \inst1|inst|Add0~9\);

-- Location: LCCOMB_X27_Y20_N0
\inst1|inst|data[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|data[4]~10_combout\ = (\inst1|inst|data[8]~2_combout\ & (\inst1|inst|data\(10) & (\inst1|inst|data\(4)))) # (!\inst1|inst|data[8]~2_combout\ & ((\inst1|inst|Add0~8_combout\) # ((\inst1|inst|data\(10) & \inst1|inst|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data[8]~2_combout\,
	datab => \inst1|inst|data\(10),
	datac => \inst1|inst|data\(4),
	datad => \inst1|inst|Add0~8_combout\,
	combout => \inst1|inst|data[4]~10_combout\);

-- Location: FF_X27_Y20_N1
\inst1|inst|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst|data[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|data\(4));

-- Location: LCCOMB_X27_Y20_N12
\inst1|inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~10_combout\ = (\inst1|inst|data\(5) & (!\inst1|inst|Add0~9\)) # (!\inst1|inst|data\(5) & ((\inst1|inst|Add0~9\) # (GND)))
-- \inst1|inst|Add0~11\ = CARRY((!\inst1|inst|Add0~9\) # (!\inst1|inst|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(5),
	datad => VCC,
	cin => \inst1|inst|Add0~9\,
	combout => \inst1|inst|Add0~10_combout\,
	cout => \inst1|inst|Add0~11\);

-- Location: LCCOMB_X27_Y20_N26
\inst1|inst|data[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|data[5]~9_combout\ = (\inst1|inst|data[8]~2_combout\ & (\inst1|inst|data\(10) & (\inst1|inst|data\(5)))) # (!\inst1|inst|data[8]~2_combout\ & ((\inst1|inst|Add0~10_combout\) # ((\inst1|inst|data\(10) & \inst1|inst|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data[8]~2_combout\,
	datab => \inst1|inst|data\(10),
	datac => \inst1|inst|data\(5),
	datad => \inst1|inst|Add0~10_combout\,
	combout => \inst1|inst|data[5]~9_combout\);

-- Location: FF_X27_Y20_N27
\inst1|inst|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst|data[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|data\(5));

-- Location: LCCOMB_X27_Y20_N14
\inst1|inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~12_combout\ = (\inst1|inst|data\(6) & (\inst1|inst|Add0~11\ $ (GND))) # (!\inst1|inst|data\(6) & (!\inst1|inst|Add0~11\ & VCC))
-- \inst1|inst|Add0~13\ = CARRY((\inst1|inst|data\(6) & !\inst1|inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|data\(6),
	datad => VCC,
	cin => \inst1|inst|Add0~11\,
	combout => \inst1|inst|Add0~12_combout\,
	cout => \inst1|inst|Add0~13\);

-- Location: LCCOMB_X27_Y20_N24
\inst1|inst|data[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|data[6]~4_combout\ = (\inst1|inst|data\(10) & ((\inst1|inst|data\(6)) # ((\inst1|inst|Add0~12_combout\ & !\inst1|inst|data[8]~2_combout\)))) # (!\inst1|inst|data\(10) & (\inst1|inst|Add0~12_combout\ & ((!\inst1|inst|data[8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(10),
	datab => \inst1|inst|Add0~12_combout\,
	datac => \inst1|inst|data\(6),
	datad => \inst1|inst|data[8]~2_combout\,
	combout => \inst1|inst|data[6]~4_combout\);

-- Location: FF_X27_Y20_N25
\inst1|inst|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst|data[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|data\(6));

-- Location: LCCOMB_X27_Y20_N16
\inst1|inst|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~14_combout\ = (\inst1|inst|data\(7) & (!\inst1|inst|Add0~13\)) # (!\inst1|inst|data\(7) & ((\inst1|inst|Add0~13\) # (GND)))
-- \inst1|inst|Add0~15\ = CARRY((!\inst1|inst|Add0~13\) # (!\inst1|inst|data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|data\(7),
	datad => VCC,
	cin => \inst1|inst|Add0~13\,
	combout => \inst1|inst|Add0~14_combout\,
	cout => \inst1|inst|Add0~15\);

-- Location: LCCOMB_X27_Y20_N28
\inst1|inst|data[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|data[7]~3_combout\ = (\inst1|inst|data[8]~2_combout\ & (\inst1|inst|data\(10) & (\inst1|inst|data\(7)))) # (!\inst1|inst|data[8]~2_combout\ & ((\inst1|inst|Add0~14_combout\) # ((\inst1|inst|data\(10) & \inst1|inst|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data[8]~2_combout\,
	datab => \inst1|inst|data\(10),
	datac => \inst1|inst|data\(7),
	datad => \inst1|inst|Add0~14_combout\,
	combout => \inst1|inst|data[7]~3_combout\);

-- Location: FF_X27_Y20_N29
\inst1|inst|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst|data[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|data\(7));

-- Location: LCCOMB_X27_Y20_N18
\inst1|inst|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~16_combout\ = (\inst1|inst|data\(8) & (\inst1|inst|Add0~15\ $ (GND))) # (!\inst1|inst|data\(8) & (!\inst1|inst|Add0~15\ & VCC))
-- \inst1|inst|Add0~17\ = CARRY((\inst1|inst|data\(8) & !\inst1|inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(8),
	datad => VCC,
	cin => \inst1|inst|Add0~15\,
	combout => \inst1|inst|Add0~16_combout\,
	cout => \inst1|inst|Add0~17\);

-- Location: LCCOMB_X26_Y20_N8
\inst1|inst|data[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|data[8]~12_combout\ = (\inst1|inst|data\(10) & ((\inst1|inst|data\(8)) # ((!\inst1|inst|data[8]~2_combout\ & \inst1|inst|Add0~16_combout\)))) # (!\inst1|inst|data\(10) & (!\inst1|inst|data[8]~2_combout\ & ((\inst1|inst|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(10),
	datab => \inst1|inst|data[8]~2_combout\,
	datac => \inst1|inst|data\(8),
	datad => \inst1|inst|Add0~16_combout\,
	combout => \inst1|inst|data[8]~12_combout\);

-- Location: FF_X26_Y20_N9
\inst1|inst|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst|data[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|data\(8));

-- Location: LCCOMB_X26_Y20_N24
\inst1|inst2|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|Equal0~2_combout\ = (!\inst1|inst|data\(8) & (!\inst1|inst|data\(7) & (!\inst1|inst|data\(9) & !\inst1|inst|data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(8),
	datab => \inst1|inst|data\(7),
	datac => \inst1|inst|data\(9),
	datad => \inst1|inst|data\(6),
	combout => \inst1|inst2|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y20_N2
\inst1|inst|data[10]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|data[10]~14_combout\ = (\inst1|inst|data\(10) & ((\inst1|inst|data\(5)) # ((\inst1|inst|data\(4)) # (!\inst1|inst2|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(10),
	datab => \inst1|inst|data\(5),
	datac => \inst1|inst|data\(4),
	datad => \inst1|inst2|Equal0~2_combout\,
	combout => \inst1|inst|data[10]~14_combout\);

-- Location: LCCOMB_X27_Y20_N20
\inst1|inst|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~18_combout\ = (\inst1|inst|data\(9) & (!\inst1|inst|Add0~17\)) # (!\inst1|inst|data\(9) & ((\inst1|inst|Add0~17\) # (GND)))
-- \inst1|inst|Add0~19\ = CARRY((!\inst1|inst|Add0~17\) # (!\inst1|inst|data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(9),
	datad => VCC,
	cin => \inst1|inst|Add0~17\,
	combout => \inst1|inst|Add0~18_combout\,
	cout => \inst1|inst|Add0~19\);

-- Location: LCCOMB_X27_Y20_N22
\inst1|inst|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|Add0~20_combout\ = \inst1|inst|data\(10) $ (!\inst1|inst|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(10),
	cin => \inst1|inst|Add0~19\,
	combout => \inst1|inst|Add0~20_combout\);

-- Location: LCCOMB_X26_Y20_N26
\inst1|inst|data[10]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|data[10]~11_combout\ = (\inst1|inst|data[10]~14_combout\) # ((!\inst1|inst|data[8]~2_combout\ & \inst1|inst|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|data[10]~14_combout\,
	datac => \inst1|inst|data[8]~2_combout\,
	datad => \inst1|inst|Add0~20_combout\,
	combout => \inst1|inst|data[10]~11_combout\);

-- Location: FF_X26_Y20_N27
\inst1|inst|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst|data[10]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|data\(10));

-- Location: LCCOMB_X26_Y20_N4
\inst1|inst2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|Equal0~0_combout\ = (\inst1|inst|data\(1) & (\inst1|inst|data\(3) & (\inst1|inst|data\(2) & \inst1|inst|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(1),
	datab => \inst1|inst|data\(3),
	datac => \inst1|inst|data\(2),
	datad => \inst1|inst|data\(0),
	combout => \inst1|inst2|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y20_N10
\inst1|inst2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|Equal0~1_combout\ = (!\inst1|inst|data\(4) & !\inst1|inst|data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst|data\(4),
	datad => \inst1|inst|data\(5),
	combout => \inst1|inst2|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y20_N14
\inst1|inst|data[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|data[8]~2_combout\ = (\inst1|inst|data\(10) & (((\inst1|inst2|Equal0~0_combout\) # (!\inst1|inst2|Equal0~1_combout\)) # (!\inst1|inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(10),
	datab => \inst1|inst2|Equal0~2_combout\,
	datac => \inst1|inst2|Equal0~0_combout\,
	datad => \inst1|inst2|Equal0~1_combout\,
	combout => \inst1|inst|data[8]~2_combout\);

-- Location: LCCOMB_X27_Y20_N30
\inst1|inst|data[9]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|data[9]~13_combout\ = (\inst1|inst|data[8]~2_combout\ & (\inst1|inst|data\(10) & (\inst1|inst|data\(9)))) # (!\inst1|inst|data[8]~2_combout\ & ((\inst1|inst|Add0~18_combout\) # ((\inst1|inst|data\(10) & \inst1|inst|data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data[8]~2_combout\,
	datab => \inst1|inst|data\(10),
	datac => \inst1|inst|data\(9),
	datad => \inst1|inst|Add0~18_combout\,
	combout => \inst1|inst|data[9]~13_combout\);

-- Location: FF_X27_Y20_N31
\inst1|inst|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst|data[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|data\(9));

-- Location: LCCOMB_X24_Y20_N12
\inst1|inst10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst10~1_combout\ = ((\inst1|inst|data\(10)) # (!\inst1|inst|data\(8))) # (!\inst1|inst|data\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|data\(9),
	datac => \inst1|inst|data\(8),
	datad => \inst1|inst|data\(10),
	combout => \inst1|inst10~1_combout\);

-- Location: LCCOMB_X26_Y20_N20
\inst1|inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst10~0_combout\ = (\inst1|inst|data\(6) & (\inst1|inst|data\(7) & ((\inst1|inst2|Equal0~0_combout\) # (!\inst1|inst2|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(6),
	datab => \inst1|inst|data\(7),
	datac => \inst1|inst2|Equal0~0_combout\,
	datad => \inst1|inst2|Equal0~1_combout\,
	combout => \inst1|inst10~0_combout\);

-- Location: LCCOMB_X24_Y20_N2
\inst1|inst10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst10~2_combout\ = ((!\inst1|inst|data\(5) & ((!\inst1|inst|data\(4)) # (!\inst1|inst|data\(3))))) # (!\inst1|inst|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(6),
	datab => \inst1|inst|data\(3),
	datac => \inst1|inst|data\(4),
	datad => \inst1|inst|data\(5),
	combout => \inst1|inst10~2_combout\);

-- Location: LCCOMB_X24_Y20_N8
\inst1|inst10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst10~3_combout\ = (\inst1|inst10~1_combout\) # ((\inst1|inst10~0_combout\) # ((!\inst1|inst|data\(7) & \inst1|inst10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst10~1_combout\,
	datab => \inst1|inst|data\(7),
	datac => \inst1|inst10~0_combout\,
	datad => \inst1|inst10~2_combout\,
	combout => \inst1|inst10~3_combout\);

-- Location: LCCOMB_X23_Y19_N8
\inst1|inst1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~0_combout\ = \inst1|inst1|data\(0) $ (VCC)
-- \inst1|inst1|Add0~1\ = CARRY(\inst1|inst1|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(0),
	datad => VCC,
	combout => \inst1|inst1|Add0~0_combout\,
	cout => \inst1|inst1|Add0~1\);

-- Location: LCCOMB_X26_Y20_N28
\inst1|inst2|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|Equal0~3_combout\ = (\inst1|inst2|Equal0~1_combout\ & (\inst1|inst|data\(10) & (\inst1|inst2|Equal0~0_combout\ & \inst1|inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|Equal0~1_combout\,
	datab => \inst1|inst|data\(10),
	datac => \inst1|inst2|Equal0~0_combout\,
	datad => \inst1|inst2|Equal0~2_combout\,
	combout => \inst1|inst2|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y19_N30
\inst1|inst1|data[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|data[0]~5_combout\ = (\inst1|inst2|Equal0~3_combout\ & (!\inst1|inst21~2_combout\ & (\inst1|inst1|Add0~0_combout\))) # (!\inst1|inst2|Equal0~3_combout\ & (((\inst1|inst1|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst21~2_combout\,
	datab => \inst1|inst1|Add0~0_combout\,
	datac => \inst1|inst1|data\(0),
	datad => \inst1|inst2|Equal0~3_combout\,
	combout => \inst1|inst1|data[0]~5_combout\);

-- Location: FF_X24_Y19_N31
\inst1|inst1|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst1|data[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|data\(0));

-- Location: LCCOMB_X23_Y19_N10
\inst1|inst1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~2_combout\ = (\inst1|inst1|data\(1) & (!\inst1|inst1|Add0~1\)) # (!\inst1|inst1|data\(1) & ((\inst1|inst1|Add0~1\) # (GND)))
-- \inst1|inst1|Add0~3\ = CARRY((!\inst1|inst1|Add0~1\) # (!\inst1|inst1|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(1),
	datad => VCC,
	cin => \inst1|inst1|Add0~1\,
	combout => \inst1|inst1|Add0~2_combout\,
	cout => \inst1|inst1|Add0~3\);

-- Location: LCCOMB_X23_Y19_N6
\inst1|inst1|data[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|data[1]~4_combout\ = (\inst1|inst2|Equal0~3_combout\ & (!\inst1|inst21~2_combout\ & (\inst1|inst1|Add0~2_combout\))) # (!\inst1|inst2|Equal0~3_combout\ & (((\inst1|inst1|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst21~2_combout\,
	datab => \inst1|inst1|Add0~2_combout\,
	datac => \inst1|inst1|data\(1),
	datad => \inst1|inst2|Equal0~3_combout\,
	combout => \inst1|inst1|data[1]~4_combout\);

-- Location: FF_X23_Y19_N7
\inst1|inst1|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst1|data[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|data\(1));

-- Location: LCCOMB_X23_Y19_N12
\inst1|inst1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~4_combout\ = (\inst1|inst1|data\(2) & (\inst1|inst1|Add0~3\ $ (GND))) # (!\inst1|inst1|data\(2) & (!\inst1|inst1|Add0~3\ & VCC))
-- \inst1|inst1|Add0~5\ = CARRY((\inst1|inst1|data\(2) & !\inst1|inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|data\(2),
	datad => VCC,
	cin => \inst1|inst1|Add0~3\,
	combout => \inst1|inst1|Add0~4_combout\,
	cout => \inst1|inst1|Add0~5\);

-- Location: LCCOMB_X23_Y19_N28
\inst1|inst1|data[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|data[2]~3_combout\ = (\inst1|inst2|Equal0~3_combout\ & (!\inst1|inst21~2_combout\ & (\inst1|inst1|Add0~4_combout\))) # (!\inst1|inst2|Equal0~3_combout\ & (((\inst1|inst1|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst21~2_combout\,
	datab => \inst1|inst1|Add0~4_combout\,
	datac => \inst1|inst1|data\(2),
	datad => \inst1|inst2|Equal0~3_combout\,
	combout => \inst1|inst1|data[2]~3_combout\);

-- Location: FF_X23_Y19_N29
\inst1|inst1|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst1|data[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|data\(2));

-- Location: LCCOMB_X23_Y19_N14
\inst1|inst1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~6_combout\ = (\inst1|inst1|data\(3) & (!\inst1|inst1|Add0~5\)) # (!\inst1|inst1|data\(3) & ((\inst1|inst1|Add0~5\) # (GND)))
-- \inst1|inst1|Add0~7\ = CARRY((!\inst1|inst1|Add0~5\) # (!\inst1|inst1|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|data\(3),
	datad => VCC,
	cin => \inst1|inst1|Add0~5\,
	combout => \inst1|inst1|Add0~6_combout\,
	cout => \inst1|inst1|Add0~7\);

-- Location: LCCOMB_X23_Y19_N16
\inst1|inst1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~8_combout\ = (\inst1|inst1|data\(4) & (\inst1|inst1|Add0~7\ $ (GND))) # (!\inst1|inst1|data\(4) & (!\inst1|inst1|Add0~7\ & VCC))
-- \inst1|inst1|Add0~9\ = CARRY((\inst1|inst1|data\(4) & !\inst1|inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(4),
	datad => VCC,
	cin => \inst1|inst1|Add0~7\,
	combout => \inst1|inst1|Add0~8_combout\,
	cout => \inst1|inst1|Add0~9\);

-- Location: LCCOMB_X24_Y19_N4
\inst1|inst1|data[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|data[4]~9_combout\ = (\inst1|inst2|Equal0~3_combout\ & (\inst1|inst1|Add0~8_combout\ & (!\inst1|inst21~2_combout\))) # (!\inst1|inst2|Equal0~3_combout\ & (((\inst1|inst1|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|Add0~8_combout\,
	datab => \inst1|inst21~2_combout\,
	datac => \inst1|inst1|data\(4),
	datad => \inst1|inst2|Equal0~3_combout\,
	combout => \inst1|inst1|data[4]~9_combout\);

-- Location: FF_X24_Y19_N5
\inst1|inst1|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst1|data[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|data\(4));

-- Location: LCCOMB_X23_Y19_N18
\inst1|inst1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~10_combout\ = (\inst1|inst1|data\(5) & (!\inst1|inst1|Add0~9\)) # (!\inst1|inst1|data\(5) & ((\inst1|inst1|Add0~9\) # (GND)))
-- \inst1|inst1|Add0~11\ = CARRY((!\inst1|inst1|Add0~9\) # (!\inst1|inst1|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|data\(5),
	datad => VCC,
	cin => \inst1|inst1|Add0~9\,
	combout => \inst1|inst1|Add0~10_combout\,
	cout => \inst1|inst1|Add0~11\);

-- Location: LCCOMB_X24_Y19_N22
\inst1|inst1|data[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|data[5]~8_combout\ = (\inst1|inst2|Equal0~3_combout\ & (!\inst1|inst21~2_combout\ & (\inst1|inst1|Add0~10_combout\))) # (!\inst1|inst2|Equal0~3_combout\ & (((\inst1|inst1|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst21~2_combout\,
	datab => \inst1|inst1|Add0~10_combout\,
	datac => \inst1|inst1|data\(5),
	datad => \inst1|inst2|Equal0~3_combout\,
	combout => \inst1|inst1|data[5]~8_combout\);

-- Location: FF_X24_Y19_N23
\inst1|inst1|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst1|data[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|data\(5));

-- Location: LCCOMB_X23_Y19_N20
\inst1|inst1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~12_combout\ = (\inst1|inst1|data\(6) & (\inst1|inst1|Add0~11\ $ (GND))) # (!\inst1|inst1|data\(6) & (!\inst1|inst1|Add0~11\ & VCC))
-- \inst1|inst1|Add0~13\ = CARRY((\inst1|inst1|data\(6) & !\inst1|inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|data\(6),
	datad => VCC,
	cin => \inst1|inst1|Add0~11\,
	combout => \inst1|inst1|Add0~12_combout\,
	cout => \inst1|inst1|Add0~13\);

-- Location: LCCOMB_X23_Y19_N0
\inst1|inst1|data[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|data[6]~6_combout\ = (\inst1|inst2|Equal0~3_combout\ & (!\inst1|inst21~2_combout\ & (\inst1|inst1|Add0~12_combout\))) # (!\inst1|inst2|Equal0~3_combout\ & (((\inst1|inst1|data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst21~2_combout\,
	datab => \inst1|inst1|Add0~12_combout\,
	datac => \inst1|inst1|data\(6),
	datad => \inst1|inst2|Equal0~3_combout\,
	combout => \inst1|inst1|data[6]~6_combout\);

-- Location: FF_X23_Y19_N1
\inst1|inst1|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst1|data[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|data\(6));

-- Location: LCCOMB_X23_Y19_N22
\inst1|inst1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~14_combout\ = (\inst1|inst1|data\(7) & (!\inst1|inst1|Add0~13\)) # (!\inst1|inst1|data\(7) & ((\inst1|inst1|Add0~13\) # (GND)))
-- \inst1|inst1|Add0~15\ = CARRY((!\inst1|inst1|Add0~13\) # (!\inst1|inst1|data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(7),
	datad => VCC,
	cin => \inst1|inst1|Add0~13\,
	combout => \inst1|inst1|Add0~14_combout\,
	cout => \inst1|inst1|Add0~15\);

-- Location: LCCOMB_X24_Y19_N20
\inst1|inst1|data[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|data[7]~1_combout\ = (\inst1|inst2|Equal0~3_combout\ & (!\inst1|inst21~2_combout\ & (\inst1|inst1|Add0~14_combout\))) # (!\inst1|inst2|Equal0~3_combout\ & (((\inst1|inst1|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst21~2_combout\,
	datab => \inst1|inst1|Add0~14_combout\,
	datac => \inst1|inst1|data\(7),
	datad => \inst1|inst2|Equal0~3_combout\,
	combout => \inst1|inst1|data[7]~1_combout\);

-- Location: FF_X24_Y19_N21
\inst1|inst1|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst1|data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|data\(7));

-- Location: LCCOMB_X24_Y19_N8
\inst1|inst21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst21~1_combout\ = (!\inst1|inst1|data\(5) & (\inst1|inst1|data\(4) & (\inst1|inst1|data\(0) & \inst1|inst1|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(5),
	datab => \inst1|inst1|data\(4),
	datac => \inst1|inst1|data\(0),
	datad => \inst1|inst1|data\(3),
	combout => \inst1|inst21~1_combout\);

-- Location: LCCOMB_X23_Y19_N24
\inst1|inst1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~16_combout\ = (\inst1|inst1|data\(8) & (\inst1|inst1|Add0~15\ $ (GND))) # (!\inst1|inst1|data\(8) & (!\inst1|inst1|Add0~15\ & VCC))
-- \inst1|inst1|Add0~17\ = CARRY((\inst1|inst1|data\(8) & !\inst1|inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|data\(8),
	datad => VCC,
	cin => \inst1|inst1|Add0~15\,
	combout => \inst1|inst1|Add0~16_combout\,
	cout => \inst1|inst1|Add0~17\);

-- Location: LCCOMB_X23_Y19_N4
\inst1|inst1|data[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|data[8]~0_combout\ = (\inst1|inst2|Equal0~3_combout\ & (!\inst1|inst21~2_combout\ & (\inst1|inst1|Add0~16_combout\))) # (!\inst1|inst2|Equal0~3_combout\ & (((\inst1|inst1|data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst21~2_combout\,
	datab => \inst1|inst1|Add0~16_combout\,
	datac => \inst1|inst1|data\(8),
	datad => \inst1|inst2|Equal0~3_combout\,
	combout => \inst1|inst1|data[8]~0_combout\);

-- Location: FF_X23_Y19_N5
\inst1|inst1|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst1|data[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|data\(8));

-- Location: LCCOMB_X23_Y19_N26
\inst1|inst1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|Add0~18_combout\ = \inst1|inst1|data\(9) $ (\inst1|inst1|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(9),
	cin => \inst1|inst1|Add0~17\,
	combout => \inst1|inst1|Add0~18_combout\);

-- Location: LCCOMB_X23_Y19_N30
\inst1|inst1|data[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|data[9]~2_combout\ = (\inst1|inst2|Equal0~3_combout\ & (\inst1|inst1|Add0~18_combout\ & (!\inst1|inst21~2_combout\))) # (!\inst1|inst2|Equal0~3_combout\ & (((\inst1|inst1|data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|Add0~18_combout\,
	datab => \inst1|inst21~2_combout\,
	datac => \inst1|inst1|data\(9),
	datad => \inst1|inst2|Equal0~3_combout\,
	combout => \inst1|inst1|data[9]~2_combout\);

-- Location: FF_X23_Y19_N31
\inst1|inst1|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst1|data[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|data\(9));

-- Location: LCCOMB_X24_Y19_N2
\inst1|inst21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst21~0_combout\ = (!\inst1|inst1|data\(1) & (\inst1|inst1|data\(9) & (!\inst1|inst1|data\(8) & !\inst1|inst1|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(1),
	datab => \inst1|inst1|data\(9),
	datac => \inst1|inst1|data\(8),
	datad => \inst1|inst1|data\(2),
	combout => \inst1|inst21~0_combout\);

-- Location: LCCOMB_X24_Y19_N6
\inst1|inst21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst21~2_combout\ = (!\inst1|inst1|data\(6) & (\inst1|inst1|data\(7) & (\inst1|inst21~1_combout\ & \inst1|inst21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(6),
	datab => \inst1|inst1|data\(7),
	datac => \inst1|inst21~1_combout\,
	datad => \inst1|inst21~0_combout\,
	combout => \inst1|inst21~2_combout\);

-- Location: LCCOMB_X23_Y19_N2
\inst1|inst1|data[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|data[3]~7_combout\ = (\inst1|inst2|Equal0~3_combout\ & (!\inst1|inst21~2_combout\ & (\inst1|inst1|Add0~6_combout\))) # (!\inst1|inst2|Equal0~3_combout\ & (((\inst1|inst1|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst21~2_combout\,
	datab => \inst1|inst1|Add0~6_combout\,
	datac => \inst1|inst1|data\(3),
	datad => \inst1|inst2|Equal0~3_combout\,
	combout => \inst1|inst1|data[3]~7_combout\);

-- Location: FF_X23_Y19_N3
\inst1|inst1|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst1|data[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|data\(3));

-- Location: LCCOMB_X24_Y19_N10
\inst1|inst15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst15~2_combout\ = (\inst1|inst1|data\(4) & (((\inst1|inst1|data\(5)) # (!\inst1|inst1|data\(6))))) # (!\inst1|inst1|data\(4) & (!\inst1|inst1|data\(6) & ((\inst1|inst1|data\(1)) # (\inst1|inst1|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(1),
	datab => \inst1|inst1|data\(4),
	datac => \inst1|inst1|data\(5),
	datad => \inst1|inst1|data\(6),
	combout => \inst1|inst15~2_combout\);

-- Location: LCCOMB_X24_Y19_N0
\inst1|inst15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst15~3_combout\ = (\inst1|inst1|data\(3) & (((\inst1|inst1|data\(2) & !\inst1|inst15~2_combout\)) # (!\inst1|inst1|data\(6)))) # (!\inst1|inst1|data\(3) & ((\inst1|inst1|data\(2)) # ((!\inst1|inst1|data\(6) & \inst1|inst15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(3),
	datab => \inst1|inst1|data\(2),
	datac => \inst1|inst1|data\(6),
	datad => \inst1|inst15~2_combout\,
	combout => \inst1|inst15~3_combout\);

-- Location: LCCOMB_X24_Y19_N12
\inst1|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst15~0_combout\ = (\inst1|inst1|data\(2) & ((\inst1|inst1|data\(1)) # (\inst1|inst1|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|data\(1),
	datac => \inst1|inst1|data\(0),
	datad => \inst1|inst1|data\(2),
	combout => \inst1|inst15~0_combout\);

-- Location: LCCOMB_X26_Y19_N12
\inst1|inst15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst15~1_combout\ = (\inst1|inst1|data\(9) & ((\inst1|inst1|data\(7) & ((!\inst1|inst1|data\(6)))) # (!\inst1|inst1|data\(7) & (\inst1|inst15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(7),
	datab => \inst1|inst15~0_combout\,
	datac => \inst1|inst1|data\(9),
	datad => \inst1|inst1|data\(6),
	combout => \inst1|inst15~1_combout\);

-- Location: LCCOMB_X26_Y19_N30
\inst1|inst15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst15~4_combout\ = (\inst1|inst15~3_combout\) # ((\inst1|inst1|data\(8)) # (!\inst1|inst15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst15~3_combout\,
	datac => \inst1|inst1|data\(8),
	datad => \inst1|inst15~1_combout\,
	combout => \inst1|inst15~4_combout\);

-- Location: LCCOMB_X24_Y20_N4
\inst20|inst5|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|inst5|LessThan1~0_combout\ = (!\inst1|inst|data\(6) & (((!\inst1|inst|data\(5)) # (!\inst1|inst|data\(4))) # (!\inst1|inst|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(6),
	datab => \inst1|inst|data\(3),
	datac => \inst1|inst|data\(4),
	datad => \inst1|inst|data\(5),
	combout => \inst20|inst5|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y20_N0
\inst20|inst5|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|inst5|LessThan1~1_combout\ = (\inst20|inst5|LessThan1~0_combout\) # ((!\inst1|inst|data\(7)) # (!\inst1|inst|data\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst5|LessThan1~0_combout\,
	datac => \inst1|inst|data\(8),
	datad => \inst1|inst|data\(7),
	combout => \inst20|inst5|LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y19_N18
\inst20|inst8|LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|inst8|LessThan1~6_combout\ = (!\inst1|inst1|data\(2) & (!\inst1|inst1|data\(3) & ((!\inst1|inst1|data\(0)) # (!\inst1|inst1|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(1),
	datab => \inst1|inst1|data\(2),
	datac => \inst1|inst1|data\(0),
	datad => \inst1|inst1|data\(3),
	combout => \inst20|inst8|LessThan1~6_combout\);

-- Location: LCCOMB_X24_Y19_N28
\inst20|inst8|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|inst8|LessThan1~3_combout\ = ((!\inst1|inst1|data\(5) & ((\inst20|inst8|LessThan1~6_combout\) # (!\inst1|inst1|data\(4))))) # (!\inst1|inst1|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(5),
	datab => \inst1|inst1|data\(4),
	datac => \inst1|inst1|data\(6),
	datad => \inst20|inst8|LessThan1~6_combout\,
	combout => \inst20|inst8|LessThan1~3_combout\);

-- Location: LCCOMB_X26_Y19_N22
\inst20|inst8|LessThan1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|inst8|LessThan1~22_combout\ = ((!\inst1|inst1|data\(8) & (!\inst1|inst1|data\(7) & \inst20|inst8|LessThan1~3_combout\))) # (!\inst1|inst1|data\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(8),
	datab => \inst1|inst1|data\(7),
	datac => \inst1|inst1|data\(9),
	datad => \inst20|inst8|LessThan1~3_combout\,
	combout => \inst20|inst8|LessThan1~22_combout\);

-- Location: LCCOMB_X24_Y19_N24
\inst20|inst118|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|inst118|LessThan0~1_combout\ = (\inst1|inst1|data\(4) & ((\inst1|inst1|data\(3)) # ((\inst1|inst1|data\(1) & \inst1|inst1|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(3),
	datab => \inst1|inst1|data\(4),
	datac => \inst1|inst1|data\(1),
	datad => \inst1|inst1|data\(2),
	combout => \inst20|inst118|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y19_N2
\inst20|inst118|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|inst118|LessThan0~0_combout\ = (\inst1|inst1|data\(8)) # ((\inst1|inst1|data\(7)) # (\inst1|inst1|data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(8),
	datac => \inst1|inst1|data\(7),
	datad => \inst1|inst1|data\(6),
	combout => \inst20|inst118|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y19_N0
\inst14|Y[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|Y[3]~3_combout\ = (\inst1|inst|data\(8) & ((\inst20|inst118|LessThan0~0_combout\) # ((\inst20|inst118|LessThan0~1_combout\ & \inst1|inst1|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst118|LessThan0~1_combout\,
	datab => \inst20|inst118|LessThan0~0_combout\,
	datac => \inst1|inst|data\(8),
	datad => \inst1|inst1|data\(5),
	combout => \inst14|Y[3]~3_combout\);

-- Location: LCCOMB_X24_Y20_N16
\inst20|inst1|data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|inst1|data[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst20|inst1|data[3]~feeder_combout\);

-- Location: FF_X24_Y20_N17
\inst20|inst1|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst20|inst1|data[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst1|data\(3));

-- Location: LCCOMB_X24_Y20_N26
\inst14|Y[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|Y[3]~0_combout\ = (\inst1|inst1|data\(9) & (!\inst1|inst|data\(9) & !\inst20|inst1|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(9),
	datab => \inst1|inst|data\(9),
	datad => \inst20|inst1|data\(3),
	combout => \inst14|Y[3]~0_combout\);

-- Location: LCCOMB_X26_Y20_N30
\inst14|Y[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|Y[3]~1_combout\ = (\inst1|inst|data\(3) & ((\inst1|inst|data\(0)) # ((\inst1|inst|data\(2)) # (\inst1|inst|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(3),
	datab => \inst1|inst|data\(0),
	datac => \inst1|inst|data\(2),
	datad => \inst1|inst|data\(1),
	combout => \inst14|Y[3]~1_combout\);

-- Location: LCCOMB_X24_Y20_N0
\inst14|Y[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|Y[3]~2_combout\ = (\inst1|inst|data\(5) & (\inst1|inst|data\(6) & ((\inst1|inst|data\(4)) # (\inst14|Y[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(5),
	datab => \inst1|inst|data\(4),
	datac => \inst14|Y[3]~1_combout\,
	datad => \inst1|inst|data\(6),
	combout => \inst14|Y[3]~2_combout\);

-- Location: LCCOMB_X24_Y20_N30
\inst14|Y[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|Y[3]~4_combout\ = (\inst14|Y[3]~3_combout\ & (\inst14|Y[3]~0_combout\ & ((\inst1|inst|data\(7)) # (\inst14|Y[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Y[3]~3_combout\,
	datab => \inst1|inst|data\(7),
	datac => \inst14|Y[3]~0_combout\,
	datad => \inst14|Y[3]~2_combout\,
	combout => \inst14|Y[3]~4_combout\);

-- Location: LCCOMB_X24_Y19_N16
\inst17|inst10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|inst10~4_combout\ = (\inst1|inst1|data\(3) & ((\inst1|inst1|data\(1)) # ((\inst1|inst1|data\(2)) # (\inst1|inst1|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(1),
	datab => \inst1|inst1|data\(2),
	datac => \inst1|inst1|data\(5),
	datad => \inst1|inst1|data\(3),
	combout => \inst17|inst10~4_combout\);

-- Location: LCCOMB_X24_Y19_N14
\inst17|inst10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|inst10~5_combout\ = (\inst1|inst1|data\(5) & (!\inst1|inst1|data\(4) & ((!\inst1|inst15~0_combout\) # (!\inst17|inst10~4_combout\)))) # (!\inst1|inst1|data\(5) & (\inst17|inst10~4_combout\ & (\inst1|inst1|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(5),
	datab => \inst17|inst10~4_combout\,
	datac => \inst1|inst1|data\(4),
	datad => \inst1|inst15~0_combout\,
	combout => \inst17|inst10~5_combout\);

-- Location: LCCOMB_X26_Y19_N24
\inst1|inst16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst16~0_combout\ = (!\inst1|inst1|data\(8) & !\inst1|inst1|data\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(8),
	datac => \inst1|inst1|data\(7),
	combout => \inst1|inst16~0_combout\);

-- Location: LCCOMB_X24_Y20_N28
\inst17|inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|inst10~0_combout\ = (!\inst1|inst|data\(6) & (!\inst1|inst|data\(7) & (\inst1|inst|data\(4) & \inst1|inst|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(6),
	datab => \inst1|inst|data\(7),
	datac => \inst1|inst|data\(4),
	datad => \inst1|inst|data\(5),
	combout => \inst17|inst10~0_combout\);

-- Location: LCCOMB_X24_Y20_N14
\inst17|inst10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|inst10~1_combout\ = (\inst1|inst16~0_combout\ & (\inst17|inst10~0_combout\ & (\inst1|inst|data\(8) & \inst1|inst|data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16~0_combout\,
	datab => \inst17|inst10~0_combout\,
	datac => \inst1|inst|data\(8),
	datad => \inst1|inst|data\(9),
	combout => \inst17|inst10~1_combout\);

-- Location: LCCOMB_X26_Y20_N18
\inst17|inst10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|inst10~2_combout\ = (\inst1|inst1|data\(9) & (!\inst20|inst1|data\(3) & ((\inst1|inst|data\(1)) # (\inst1|inst|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(1),
	datab => \inst1|inst1|data\(9),
	datac => \inst20|inst1|data\(3),
	datad => \inst1|inst|data\(0),
	combout => \inst17|inst10~2_combout\);

-- Location: LCCOMB_X26_Y20_N12
\inst17|inst10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|inst10~3_combout\ = (\inst1|inst1|data\(6) & (\inst17|inst10~2_combout\ & (\inst1|inst|data\(2) & !\inst1|inst|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(6),
	datab => \inst17|inst10~2_combout\,
	datac => \inst1|inst|data\(2),
	datad => \inst1|inst|data\(3),
	combout => \inst17|inst10~3_combout\);

-- Location: LCCOMB_X24_Y20_N6
\inst17|inst10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|inst10~6_combout\ = (\inst17|inst10~5_combout\ & (\inst17|inst10~1_combout\ & \inst17|inst10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst10~5_combout\,
	datac => \inst17|inst10~1_combout\,
	datad => \inst17|inst10~3_combout\,
	combout => \inst17|inst10~6_combout\);

-- Location: LCCOMB_X24_Y20_N20
\inst14|Y[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|Y[3]~5_combout\ = (\inst17|inst10~6_combout\) # ((\inst20|inst5|LessThan1~1_combout\ & (\inst20|inst8|LessThan1~22_combout\ & \inst14|Y[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst5|LessThan1~1_combout\,
	datab => \inst20|inst8|LessThan1~22_combout\,
	datac => \inst14|Y[3]~4_combout\,
	datad => \inst17|inst10~6_combout\,
	combout => \inst14|Y[3]~5_combout\);

-- Location: LCCOMB_X24_Y19_N26
\inst1|inst16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst16~1_combout\ = ((!\inst1|inst1|data\(5) & ((!\inst1|inst1|data\(3)) # (!\inst1|inst1|data\(4))))) # (!\inst1|inst1|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(5),
	datab => \inst1|inst1|data\(4),
	datac => \inst1|inst1|data\(6),
	datad => \inst1|inst1|data\(3),
	combout => \inst1|inst16~1_combout\);

-- Location: LCCOMB_X24_Y20_N10
\inst1|inst16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst16~2_combout\ = (!\inst1|inst|data\(10) & (((\inst1|inst16~1_combout\ & \inst1|inst16~0_combout\)) # (!\inst1|inst1|data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|data\(9),
	datab => \inst1|inst16~1_combout\,
	datac => \inst1|inst16~0_combout\,
	datad => \inst1|inst|data\(10),
	combout => \inst1|inst16~2_combout\);

-- Location: LCCOMB_X24_Y20_N24
\inst1|inst20|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst20|LessThan1~0_combout\ = (!\inst1|inst|data\(6) & (!\inst1|inst|data\(7) & !\inst1|inst|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|data\(6),
	datab => \inst1|inst|data\(7),
	datad => \inst1|inst|data\(5),
	combout => \inst1|inst20|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y20_N22
\inst1|inst16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst16~3_combout\ = (\inst1|inst16~2_combout\ & (((\inst1|inst20|LessThan1~0_combout\) # (!\inst1|inst|data\(8))) # (!\inst1|inst|data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst16~2_combout\,
	datab => \inst1|inst|data\(9),
	datac => \inst1|inst|data\(8),
	datad => \inst1|inst20|LessThan1~0_combout\,
	combout => \inst1|inst16~3_combout\);

-- Location: LCCOMB_X29_Y20_N0
\inst10[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- inst10(3) = (!\inst14|Y[3]~5_combout\ & \inst1|inst16~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Y[3]~5_combout\,
	datad => \inst1|inst16~3_combout\,
	combout => inst10(3));

-- Location: LCCOMB_X29_Y20_N6
\inst9[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- inst9(3) = (\inst14|Y[3]~5_combout\ & \inst1|inst16~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Y[3]~5_combout\,
	datad => \inst1|inst16~3_combout\,
	combout => inst9(3));

-- Location: LCCOMB_X24_Y20_N18
\inst9[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- inst9(1) = (\inst17|inst10~5_combout\ & (\inst17|inst10~1_combout\ & (\inst1|inst16~3_combout\ & \inst17|inst10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst10~5_combout\,
	datab => \inst17|inst10~1_combout\,
	datac => \inst1|inst16~3_combout\,
	datad => \inst17|inst10~3_combout\,
	combout => inst9(1));

-- Location: IOIBUF_X0_Y23_N1
\RAKETA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAKETA,
	o => \RAKETA~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\LEFT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LEFT,
	o => \LEFT~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\RIGHT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RIGHT,
	o => \RIGHT~input_o\);

ww_H_SYNC <= \H_SYNC~output_o\;

ww_V_SYNC <= \V_SYNC~output_o\;

ww_BLUE(3) <= \BLUE[3]~output_o\;

ww_BLUE(2) <= \BLUE[2]~output_o\;

ww_BLUE(1) <= \BLUE[1]~output_o\;

ww_BLUE(0) <= \BLUE[0]~output_o\;

ww_GREEN(3) <= \GREEN[3]~output_o\;

ww_GREEN(2) <= \GREEN[2]~output_o\;

ww_GREEN(1) <= \GREEN[1]~output_o\;

ww_GREEN(0) <= \GREEN[0]~output_o\;

ww_RED(3) <= \RED[3]~output_o\;

ww_RED(2) <= \RED[2]~output_o\;

ww_RED(1) <= \RED[1]~output_o\;

ww_RED(0) <= \RED[0]~output_o\;
END structure;


