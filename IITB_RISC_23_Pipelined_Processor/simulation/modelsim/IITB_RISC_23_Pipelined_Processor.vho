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

-- DATE "05/01/2023 13:31:28"

-- 
-- Device: Altera 10M08DAF256C8G Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_H3,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_G1,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_E8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_F7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_E7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	IITB_RISC23 IS
    PORT (
	input_vector : IN std_logic_vector(0 DOWNTO 0);
	output_vector : OUT std_logic_vector(15 DOWNTO 0)
	);
END IITB_RISC23;

-- Design Ports Information
-- output_vector[0]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[6]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[7]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[8]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[9]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[11]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[12]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[13]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[15]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF IITB_RISC23 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \input_vector[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \output_vector[0]~output_o\ : std_logic;
SIGNAL \output_vector[1]~output_o\ : std_logic;
SIGNAL \output_vector[2]~output_o\ : std_logic;
SIGNAL \output_vector[3]~output_o\ : std_logic;
SIGNAL \output_vector[4]~output_o\ : std_logic;
SIGNAL \output_vector[5]~output_o\ : std_logic;
SIGNAL \output_vector[6]~output_o\ : std_logic;
SIGNAL \output_vector[7]~output_o\ : std_logic;
SIGNAL \output_vector[8]~output_o\ : std_logic;
SIGNAL \output_vector[9]~output_o\ : std_logic;
SIGNAL \output_vector[10]~output_o\ : std_logic;
SIGNAL \output_vector[11]~output_o\ : std_logic;
SIGNAL \output_vector[12]~output_o\ : std_logic;
SIGNAL \output_vector[13]~output_o\ : std_logic;
SIGNAL \output_vector[14]~output_o\ : std_logic;
SIGNAL \output_vector[15]~output_o\ : std_logic;
SIGNAL \input_vector[0]~input_o\ : std_logic;
SIGNAL \input_vector[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst_register_file|PC[0]~4_combout\ : std_logic;
SIGNAL \inst_register_file|PC[1]~5_combout\ : std_logic;
SIGNAL \inst_register_file|PC[1]~6\ : std_logic;
SIGNAL \inst_register_file|PC[2]~7_combout\ : std_logic;
SIGNAL \inst_register_file|PC[2]~8\ : std_logic;
SIGNAL \inst_register_file|PC[3]~9_combout\ : std_logic;
SIGNAL \inst_register_file|PC[3]~10\ : std_logic;
SIGNAL \inst_register_file|PC[4]~11_combout\ : std_logic;
SIGNAL \inst_ir_memory|ir_mem~0_combout\ : std_logic;
SIGNAL \inst_ir_memory|ir_mem~1_combout\ : std_logic;
SIGNAL \inst_pipeline_reg3|p3_opcode_out[2]~feeder_combout\ : std_logic;
SIGNAL \inst_pipeline_reg4|p4_opcode_out[2]~feeder_combout\ : std_logic;
SIGNAL \inst_pipeline_reg5|p5_opcode_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_register_file|PC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_pipeline_reg4|p4_opcode_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_pipeline_reg3|p3_opcode_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_pipeline_reg2|p2_opcode_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_input_vector[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst_pipeline_reg5|ALT_INV_p5_opcode_out\ : std_logic_vector(2 DOWNTO 2);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\input_vector[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \input_vector[0]~input_o\);
\ALT_INV_input_vector[0]~inputclkctrl_outclk\ <= NOT \input_vector[0]~inputclkctrl_outclk\;
\inst_pipeline_reg5|ALT_INV_p5_opcode_out\(2) <= NOT \inst_pipeline_reg5|p5_opcode_out\(2);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y12_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X11_Y0_N16
\output_vector[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_pipeline_reg5|ALT_INV_p5_opcode_out\(2),
	devoe => ww_devoe,
	o => \output_vector[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N9
\output_vector[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_pipeline_reg5|ALT_INV_p5_opcode_out\(2),
	devoe => ww_devoe,
	o => \output_vector[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\output_vector[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_pipeline_reg5|ALT_INV_p5_opcode_out\(2),
	devoe => ww_devoe,
	o => \output_vector[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\output_vector[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_pipeline_reg5|ALT_INV_p5_opcode_out\(2),
	devoe => ww_devoe,
	o => \output_vector[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\output_vector[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_pipeline_reg5|ALT_INV_p5_opcode_out\(2),
	devoe => ww_devoe,
	o => \output_vector[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N30
\output_vector[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_pipeline_reg5|ALT_INV_p5_opcode_out\(2),
	devoe => ww_devoe,
	o => \output_vector[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\output_vector[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_pipeline_reg5|ALT_INV_p5_opcode_out\(2),
	devoe => ww_devoe,
	o => \output_vector[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\output_vector[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_pipeline_reg5|ALT_INV_p5_opcode_out\(2),
	devoe => ww_devoe,
	o => \output_vector[7]~output_o\);

-- Location: IOOBUF_X31_Y13_N23
\output_vector[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[8]~output_o\);

-- Location: IOOBUF_X27_Y25_N16
\output_vector[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[9]~output_o\);

-- Location: IOOBUF_X29_Y25_N9
\output_vector[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[10]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\output_vector[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[11]~output_o\);

-- Location: IOOBUF_X10_Y22_N2
\output_vector[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[12]~output_o\);

-- Location: IOOBUF_X6_Y10_N2
\output_vector[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[13]~output_o\);

-- Location: IOOBUF_X11_Y25_N30
\output_vector[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[14]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\output_vector[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[15]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\input_vector[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(0),
	o => \input_vector[0]~input_o\);

-- Location: CLKCTRL_G3
\input_vector[0]~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \input_vector[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \input_vector[0]~inputclkctrl_outclk\);

-- Location: LCCOMB_X12_Y1_N12
\inst_register_file|PC[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_register_file|PC[0]~4_combout\ = \inst_register_file|PC\(0) $ (!\inst_pipeline_reg5|p5_opcode_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_register_file|PC\(0),
	datad => \inst_pipeline_reg5|p5_opcode_out\(2),
	combout => \inst_register_file|PC[0]~4_combout\);

-- Location: FF_X12_Y1_N13
\inst_register_file|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	d => \inst_register_file|PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_register_file|PC\(0));

-- Location: LCCOMB_X12_Y1_N16
\inst_register_file|PC[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_register_file|PC[1]~5_combout\ = (\inst_register_file|PC\(0) & (\inst_register_file|PC\(1) $ (VCC))) # (!\inst_register_file|PC\(0) & (\inst_register_file|PC\(1) & VCC))
-- \inst_register_file|PC[1]~6\ = CARRY((\inst_register_file|PC\(0) & \inst_register_file|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_register_file|PC\(0),
	datab => \inst_register_file|PC\(1),
	datad => VCC,
	combout => \inst_register_file|PC[1]~5_combout\,
	cout => \inst_register_file|PC[1]~6\);

-- Location: FF_X12_Y1_N17
\inst_register_file|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	d => \inst_register_file|PC[1]~5_combout\,
	ena => \inst_pipeline_reg5|ALT_INV_p5_opcode_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_register_file|PC\(1));

-- Location: LCCOMB_X12_Y1_N18
\inst_register_file|PC[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_register_file|PC[2]~7_combout\ = (\inst_register_file|PC\(2) & (!\inst_register_file|PC[1]~6\)) # (!\inst_register_file|PC\(2) & ((\inst_register_file|PC[1]~6\) # (GND)))
-- \inst_register_file|PC[2]~8\ = CARRY((!\inst_register_file|PC[1]~6\) # (!\inst_register_file|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_register_file|PC\(2),
	datad => VCC,
	cin => \inst_register_file|PC[1]~6\,
	combout => \inst_register_file|PC[2]~7_combout\,
	cout => \inst_register_file|PC[2]~8\);

-- Location: FF_X12_Y1_N19
\inst_register_file|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	d => \inst_register_file|PC[2]~7_combout\,
	ena => \inst_pipeline_reg5|ALT_INV_p5_opcode_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_register_file|PC\(2));

-- Location: LCCOMB_X12_Y1_N20
\inst_register_file|PC[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_register_file|PC[3]~9_combout\ = (\inst_register_file|PC\(3) & (\inst_register_file|PC[2]~8\ $ (GND))) # (!\inst_register_file|PC\(3) & (!\inst_register_file|PC[2]~8\ & VCC))
-- \inst_register_file|PC[3]~10\ = CARRY((\inst_register_file|PC\(3) & !\inst_register_file|PC[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_register_file|PC\(3),
	datad => VCC,
	cin => \inst_register_file|PC[2]~8\,
	combout => \inst_register_file|PC[3]~9_combout\,
	cout => \inst_register_file|PC[3]~10\);

-- Location: FF_X12_Y1_N21
\inst_register_file|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	d => \inst_register_file|PC[3]~9_combout\,
	ena => \inst_pipeline_reg5|ALT_INV_p5_opcode_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_register_file|PC\(3));

-- Location: LCCOMB_X12_Y1_N22
\inst_register_file|PC[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_register_file|PC[4]~11_combout\ = \inst_register_file|PC\(4) $ (\inst_register_file|PC[3]~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_register_file|PC\(4),
	cin => \inst_register_file|PC[3]~10\,
	combout => \inst_register_file|PC[4]~11_combout\);

-- Location: FF_X12_Y1_N23
\inst_register_file|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	d => \inst_register_file|PC[4]~11_combout\,
	ena => \inst_pipeline_reg5|ALT_INV_p5_opcode_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_register_file|PC\(4));

-- Location: LCCOMB_X12_Y1_N2
\inst_ir_memory|ir_mem~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_ir_memory|ir_mem~0_combout\ = (!\inst_register_file|PC\(0) & (!\inst_register_file|PC\(1) & (!\inst_register_file|PC\(2) & !\inst_register_file|PC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_register_file|PC\(0),
	datab => \inst_register_file|PC\(1),
	datac => \inst_register_file|PC\(2),
	datad => \inst_register_file|PC\(3),
	combout => \inst_ir_memory|ir_mem~0_combout\);

-- Location: LCCOMB_X12_Y1_N10
\inst_ir_memory|ir_mem~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_ir_memory|ir_mem~1_combout\ = (\inst_register_file|PC\(4)) # (!\inst_ir_memory|ir_mem~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_register_file|PC\(4),
	datad => \inst_ir_memory|ir_mem~0_combout\,
	combout => \inst_ir_memory|ir_mem~1_combout\);

-- Location: FF_X12_Y1_N11
\inst_pipeline_reg2|p2_opcode_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	d => \inst_ir_memory|ir_mem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_pipeline_reg2|p2_opcode_out\(2));

-- Location: LCCOMB_X12_Y1_N28
\inst_pipeline_reg3|p3_opcode_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_pipeline_reg3|p3_opcode_out[2]~feeder_combout\ = \inst_pipeline_reg2|p2_opcode_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_pipeline_reg2|p2_opcode_out\(2),
	combout => \inst_pipeline_reg3|p3_opcode_out[2]~feeder_combout\);

-- Location: FF_X12_Y1_N29
\inst_pipeline_reg3|p3_opcode_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	d => \inst_pipeline_reg3|p3_opcode_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_pipeline_reg3|p3_opcode_out\(2));

-- Location: LCCOMB_X12_Y1_N26
\inst_pipeline_reg4|p4_opcode_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_pipeline_reg4|p4_opcode_out[2]~feeder_combout\ = \inst_pipeline_reg3|p3_opcode_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_pipeline_reg3|p3_opcode_out\(2),
	combout => \inst_pipeline_reg4|p4_opcode_out[2]~feeder_combout\);

-- Location: FF_X12_Y1_N27
\inst_pipeline_reg4|p4_opcode_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	d => \inst_pipeline_reg4|p4_opcode_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_pipeline_reg4|p4_opcode_out\(2));

-- Location: FF_X12_Y1_N25
\inst_pipeline_reg5|p5_opcode_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	asdata => \inst_pipeline_reg4|p4_opcode_out\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_pipeline_reg5|p5_opcode_out\(2));

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_output_vector(0) <= \output_vector[0]~output_o\;

ww_output_vector(1) <= \output_vector[1]~output_o\;

ww_output_vector(2) <= \output_vector[2]~output_o\;

ww_output_vector(3) <= \output_vector[3]~output_o\;

ww_output_vector(4) <= \output_vector[4]~output_o\;

ww_output_vector(5) <= \output_vector[5]~output_o\;

ww_output_vector(6) <= \output_vector[6]~output_o\;

ww_output_vector(7) <= \output_vector[7]~output_o\;

ww_output_vector(8) <= \output_vector[8]~output_o\;

ww_output_vector(9) <= \output_vector[9]~output_o\;

ww_output_vector(10) <= \output_vector[10]~output_o\;

ww_output_vector(11) <= \output_vector[11]~output_o\;

ww_output_vector(12) <= \output_vector[12]~output_o\;

ww_output_vector(13) <= \output_vector[13]~output_o\;

ww_output_vector(14) <= \output_vector[14]~output_o\;

ww_output_vector(15) <= \output_vector[15]~output_o\;
END structure;


