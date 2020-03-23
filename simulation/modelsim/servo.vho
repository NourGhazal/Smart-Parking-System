-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/06/2019 14:02:24"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
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
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


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

ENTITY 	servo IS
    PORT (
	infIn : IN std_logic;
	infOut : IN std_logic;
	smo : IN std_logic;
	pirIn : IN std_logic;
	pirOut : IN std_logic;
	clk50 : IN std_logic;
	redIn : BUFFER std_logic;
	redOut : BUFFER std_logic;
	redSmo : BUFFER std_logic;
	greenIn : BUFFER std_logic;
	greenOut : BUFFER std_logic;
	pulseI : BUFFER std_logic;
	pulseO : BUFFER std_logic;
	l1 : BUFFER std_logic_vector(6 DOWNTO 0);
	l2 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END servo;

-- Design Ports Information
-- redIn	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- redOut	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- redSmo	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- greenIn	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- greenOut	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pulseI	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pulseO	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l1[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l1[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l1[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l1[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l1[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l1[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l1[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l2[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l2[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l2[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l2[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l2[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l2[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- l2[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- smo	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pirIn	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- infIn	=>  Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pirOut	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- infOut	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk50	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF servo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_infIn : std_logic;
SIGNAL ww_infOut : std_logic;
SIGNAL ww_smo : std_logic;
SIGNAL ww_pirIn : std_logic;
SIGNAL ww_pirOut : std_logic;
SIGNAL ww_clk50 : std_logic;
SIGNAL ww_redIn : std_logic;
SIGNAL ww_redOut : std_logic;
SIGNAL ww_redSmo : std_logic;
SIGNAL ww_greenIn : std_logic;
SIGNAL ww_greenOut : std_logic;
SIGNAL ww_pulseI : std_logic;
SIGNAL ww_pulseO : std_logic;
SIGNAL ww_l1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_l2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \x|reset1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count1[0]~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count0[0]~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x|reset2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \redIn~output_o\ : std_logic;
SIGNAL \redOut~output_o\ : std_logic;
SIGNAL \redSmo~output_o\ : std_logic;
SIGNAL \greenIn~output_o\ : std_logic;
SIGNAL \greenOut~output_o\ : std_logic;
SIGNAL \pulseI~output_o\ : std_logic;
SIGNAL \pulseO~output_o\ : std_logic;
SIGNAL \l1[0]~output_o\ : std_logic;
SIGNAL \l1[1]~output_o\ : std_logic;
SIGNAL \l1[2]~output_o\ : std_logic;
SIGNAL \l1[3]~output_o\ : std_logic;
SIGNAL \l1[4]~output_o\ : std_logic;
SIGNAL \l1[5]~output_o\ : std_logic;
SIGNAL \l1[6]~output_o\ : std_logic;
SIGNAL \l2[0]~output_o\ : std_logic;
SIGNAL \l2[1]~output_o\ : std_logic;
SIGNAL \l2[2]~output_o\ : std_logic;
SIGNAL \l2[3]~output_o\ : std_logic;
SIGNAL \l2[4]~output_o\ : std_logic;
SIGNAL \l2[5]~output_o\ : std_logic;
SIGNAL \l2[6]~output_o\ : std_logic;
SIGNAL \smo~input_o\ : std_logic;
SIGNAL \pirIn~input_o\ : std_logic;
SIGNAL \infIn~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Equal10~4_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal10~2_combout\ : std_logic;
SIGNAL \Equal10~3_combout\ : std_logic;
SIGNAL \Equal10~6_combout\ : std_logic;
SIGNAL \Equal10~7_combout\ : std_logic;
SIGNAL \Equal10~5_combout\ : std_logic;
SIGNAL \Equal10~8_combout\ : std_logic;
SIGNAL \Equal10~9_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \count[1]~1\ : std_logic;
SIGNAL \count[2]~3\ : std_logic;
SIGNAL \count[3]~4_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \count[3]~5\ : std_logic;
SIGNAL \count[4]~6_combout\ : std_logic;
SIGNAL \count[1]~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \count[2]~2_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \infOut~input_o\ : std_logic;
SIGNAL \count1[1]~0_combout\ : std_logic;
SIGNAL \count0[1]~0_combout\ : std_logic;
SIGNAL \count0[2]~8_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \count0[4]~9_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \count0[5]~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \count0[6]~11_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \count0[7]~12_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \count0[8]~13_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \count0[9]~14_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \count0[10]~15_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \count0[11]~16_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \count0[12]~17_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \count0[13]~18_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \count0[14]~19_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \count0[15]~20_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \count0[16]~21_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \count0[17]~22_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \count0[18]~23_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \count0[19]~24_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \count0[20]~25_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \count0[21]~26_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \count0[22]~27_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \count0[23]~28_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \count0[24]~29_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \count0[25]~30_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \count0[26]~31_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \count0[27]~32_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \count0[28]~33_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \count1[1]~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \count1[0]~6_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \count1[1]~7_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \count1[2]~8_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \count1[3]~9_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \count1[4]~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \count1[5]~11_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \count1[6]~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \count1[7]~13_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \count1[8]~14_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \count1[9]~15_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \count1[10]~16_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \count1[11]~17_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \count1[12]~18_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \count1[13]~19_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \count1[14]~20_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \count1[15]~21_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \count1[16]~22_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \count1[17]~23_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \count1[18]~24_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \count1[19]~25_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \count1[20]~26_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \count1[21]~27_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \count1[22]~28_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \count1[23]~29_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \count1[24]~30_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \count1[25]~31_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \count1[26]~32_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \count1[27]~33_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \count1[28]~34_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~56_combout\ : std_logic;
SIGNAL \Add4~54_combout\ : std_logic;
SIGNAL \Add4~52_combout\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \count[4]~7\ : std_logic;
SIGNAL \count[5]~9\ : std_logic;
SIGNAL \count[6]~11\ : std_logic;
SIGNAL \count[7]~13\ : std_logic;
SIGNAL \count[8]~15\ : std_logic;
SIGNAL \count[9]~17\ : std_logic;
SIGNAL \count[10]~19\ : std_logic;
SIGNAL \count[11]~21\ : std_logic;
SIGNAL \count[12]~23\ : std_logic;
SIGNAL \count[13]~25\ : std_logic;
SIGNAL \count[14]~27\ : std_logic;
SIGNAL \count[15]~29\ : std_logic;
SIGNAL \count[16]~31\ : std_logic;
SIGNAL \count[17]~33\ : std_logic;
SIGNAL \count[18]~35\ : std_logic;
SIGNAL \count[19]~37\ : std_logic;
SIGNAL \count[20]~39\ : std_logic;
SIGNAL \count[21]~41\ : std_logic;
SIGNAL \count[22]~43\ : std_logic;
SIGNAL \count[23]~45\ : std_logic;
SIGNAL \count[24]~47\ : std_logic;
SIGNAL \count[25]~49\ : std_logic;
SIGNAL \count[26]~51\ : std_logic;
SIGNAL \count[27]~53\ : std_logic;
SIGNAL \count[28]~55\ : std_logic;
SIGNAL \count[29]~57\ : std_logic;
SIGNAL \count[30]~59\ : std_logic;
SIGNAL \count[31]~60_combout\ : std_logic;
SIGNAL \count0[0]~1_combout\ : std_logic;
SIGNAL \count0[0]~2_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \count0[29]~34_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \count0[31]~36_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \count0[0]~6_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count0[0]~7_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \count0[1]~3_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \count0[3]~37_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \count0[3]~38_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \count1[0]~4_combout\ : std_logic;
SIGNAL \count1[0]~1_combout\ : std_logic;
SIGNAL \count1[0]~5_combout\ : std_logic;
SIGNAL \count1[0]~5clkctrl_outclk\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \count1[29]~35_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \count1[30]~36_combout\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \count1[31]~3_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \count0[0]~4_combout\ : std_logic;
SIGNAL \count0[0]~5_combout\ : std_logic;
SIGNAL \count0[0]~5clkctrl_outclk\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \count0[30]~35_combout\ : std_logic;
SIGNAL \count[30]~58_combout\ : std_logic;
SIGNAL \count[28]~54_combout\ : std_logic;
SIGNAL \count[29]~56_combout\ : std_logic;
SIGNAL \count[27]~52_combout\ : std_logic;
SIGNAL \count[24]~46_combout\ : std_logic;
SIGNAL \count[25]~48_combout\ : std_logic;
SIGNAL \count[26]~50_combout\ : std_logic;
SIGNAL \count[22]~42_combout\ : std_logic;
SIGNAL \count[21]~40_combout\ : std_logic;
SIGNAL \count[23]~44_combout\ : std_logic;
SIGNAL \count[6]~10_combout\ : std_logic;
SIGNAL \count[5]~8_combout\ : std_logic;
SIGNAL \count[7]~12_combout\ : std_logic;
SIGNAL \count[8]~14_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \count[12]~22_combout\ : std_logic;
SIGNAL \count[9]~16_combout\ : std_logic;
SIGNAL \count[11]~20_combout\ : std_logic;
SIGNAL \count[10]~18_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \count[15]~28_combout\ : std_logic;
SIGNAL \count[14]~26_combout\ : std_logic;
SIGNAL \count[13]~24_combout\ : std_logic;
SIGNAL \count[16]~30_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \count[17]~32_combout\ : std_logic;
SIGNAL \count[19]~36_combout\ : std_logic;
SIGNAL \count[20]~38_combout\ : std_logic;
SIGNAL \count[18]~34_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \redIn$latch~combout\ : std_logic;
SIGNAL \redOut~0_combout\ : std_logic;
SIGNAL \pirOut~input_o\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \redOut~1_combout\ : std_logic;
SIGNAL \redOut$latch~combout\ : std_logic;
SIGNAL \greenIn$latch~combout\ : std_logic;
SIGNAL \redOut~2_combout\ : std_logic;
SIGNAL \greenOut$latch~combout\ : std_logic;
SIGNAL \clk50~input_o\ : std_logic;
SIGNAL \clk50~inputclkctrl_outclk\ : std_logic;
SIGNAL \x|counterPulse|count[0]~21_combout\ : std_logic;
SIGNAL \x|comb~7_combout\ : std_logic;
SIGNAL \x|reset1~combout\ : std_logic;
SIGNAL \x|reset1~clkctrl_outclk\ : std_logic;
SIGNAL \x|counterPulse|count[1]~22_combout\ : std_logic;
SIGNAL \x|counterPulse|count[1]~23\ : std_logic;
SIGNAL \x|counterPulse|count[2]~24_combout\ : std_logic;
SIGNAL \x|counterPulse|count[2]~25\ : std_logic;
SIGNAL \x|counterPulse|count[3]~26_combout\ : std_logic;
SIGNAL \x|counterPulse|count[3]~27\ : std_logic;
SIGNAL \x|counterPulse|count[4]~28_combout\ : std_logic;
SIGNAL \x|counterPulse|count[4]~29\ : std_logic;
SIGNAL \x|counterPulse|count[5]~30_combout\ : std_logic;
SIGNAL \x|counterPulse|count[5]~31\ : std_logic;
SIGNAL \x|counterPulse|count[6]~32_combout\ : std_logic;
SIGNAL \x|counterPulse|count[6]~33\ : std_logic;
SIGNAL \x|counterPulse|count[7]~34_combout\ : std_logic;
SIGNAL \x|counterPulse|count[7]~35\ : std_logic;
SIGNAL \x|counterPulse|count[8]~36_combout\ : std_logic;
SIGNAL \x|counterPulse|count[8]~37\ : std_logic;
SIGNAL \x|counterPulse|count[9]~38_combout\ : std_logic;
SIGNAL \x|counterPulse|count[9]~39\ : std_logic;
SIGNAL \x|counterPulse|count[10]~40_combout\ : std_logic;
SIGNAL \x|counterPulse|count[10]~41\ : std_logic;
SIGNAL \x|counterPulse|count[11]~42_combout\ : std_logic;
SIGNAL \x|Equal0~2_combout\ : std_logic;
SIGNAL \x|Equal0~1_combout\ : std_logic;
SIGNAL \x|counterPulse|count[11]~43\ : std_logic;
SIGNAL \x|counterPulse|count[12]~44_combout\ : std_logic;
SIGNAL \x|counterPulse|count[12]~45\ : std_logic;
SIGNAL \x|counterPulse|count[13]~46_combout\ : std_logic;
SIGNAL \x|counterPulse|count[13]~47\ : std_logic;
SIGNAL \x|counterPulse|count[14]~48_combout\ : std_logic;
SIGNAL \x|counterPulse|count[14]~49\ : std_logic;
SIGNAL \x|counterPulse|count[15]~50_combout\ : std_logic;
SIGNAL \x|Equal0~3_combout\ : std_logic;
SIGNAL \x|Equal0~0_combout\ : std_logic;
SIGNAL \x|Equal0~4_combout\ : std_logic;
SIGNAL \x|counterPulse|count[15]~51\ : std_logic;
SIGNAL \x|counterPulse|count[16]~52_combout\ : std_logic;
SIGNAL \x|counterPulse|count[16]~53\ : std_logic;
SIGNAL \x|counterPulse|count[17]~54_combout\ : std_logic;
SIGNAL \x|counterPulse|count[17]~55\ : std_logic;
SIGNAL \x|counterPulse|count[18]~56_combout\ : std_logic;
SIGNAL \x|counterPulse|count[18]~57\ : std_logic;
SIGNAL \x|counterPulse|count[19]~58_combout\ : std_logic;
SIGNAL \x|counterPulse|count[19]~59\ : std_logic;
SIGNAL \x|counterPulse|count[20]~60_combout\ : std_logic;
SIGNAL \x|Equal0~5_combout\ : std_logic;
SIGNAL \x|counterPulse|count[20]~61\ : std_logic;
SIGNAL \x|counterPulse|count[21]~62_combout\ : std_logic;
SIGNAL \x|Equal0~6_combout\ : std_logic;
SIGNAL \x|en~combout\ : std_logic;
SIGNAL \x|counterZero|count[0]~25_combout\ : std_logic;
SIGNAL \x|reset2~combout\ : std_logic;
SIGNAL \x|reset2~clkctrl_outclk\ : std_logic;
SIGNAL \x|counterZero|count[1]~21_combout\ : std_logic;
SIGNAL \x|counterZero|count[1]~22\ : std_logic;
SIGNAL \x|counterZero|count[2]~23_combout\ : std_logic;
SIGNAL \x|counterZero|count[2]~24\ : std_logic;
SIGNAL \x|counterZero|count[3]~26_combout\ : std_logic;
SIGNAL \x|counterZero|count[3]~27\ : std_logic;
SIGNAL \x|counterZero|count[4]~28_combout\ : std_logic;
SIGNAL \x|counterZero|count[4]~29\ : std_logic;
SIGNAL \x|counterZero|count[5]~30_combout\ : std_logic;
SIGNAL \x|counterZero|count[5]~31\ : std_logic;
SIGNAL \x|counterZero|count[6]~32_combout\ : std_logic;
SIGNAL \x|counterZero|count[6]~33\ : std_logic;
SIGNAL \x|counterZero|count[7]~34_combout\ : std_logic;
SIGNAL \x|counterZero|count[7]~35\ : std_logic;
SIGNAL \x|counterZero|count[8]~36_combout\ : std_logic;
SIGNAL \x|counterZero|count[8]~37\ : std_logic;
SIGNAL \x|counterZero|count[9]~38_combout\ : std_logic;
SIGNAL \x|counterZero|count[9]~39\ : std_logic;
SIGNAL \x|counterZero|count[10]~40_combout\ : std_logic;
SIGNAL \x|counterZero|count[10]~41\ : std_logic;
SIGNAL \x|counterZero|count[11]~42_combout\ : std_logic;
SIGNAL \x|comb~2_combout\ : std_logic;
SIGNAL \x|comb~1_combout\ : std_logic;
SIGNAL \x|counterZero|count[11]~43\ : std_logic;
SIGNAL \x|counterZero|count[12]~44_combout\ : std_logic;
SIGNAL \x|counterZero|count[12]~45\ : std_logic;
SIGNAL \x|counterZero|count[13]~46_combout\ : std_logic;
SIGNAL \x|counterZero|count[13]~47\ : std_logic;
SIGNAL \x|counterZero|count[14]~48_combout\ : std_logic;
SIGNAL \x|counterZero|count[14]~49\ : std_logic;
SIGNAL \x|counterZero|count[15]~50_combout\ : std_logic;
SIGNAL \x|comb~3_combout\ : std_logic;
SIGNAL \x|comb~0_combout\ : std_logic;
SIGNAL \x|comb~4_combout\ : std_logic;
SIGNAL \x|counterZero|count[15]~51\ : std_logic;
SIGNAL \x|counterZero|count[16]~52_combout\ : std_logic;
SIGNAL \x|counterZero|count[16]~53\ : std_logic;
SIGNAL \x|counterZero|count[17]~54_combout\ : std_logic;
SIGNAL \x|counterZero|count[17]~55\ : std_logic;
SIGNAL \x|counterZero|count[18]~56_combout\ : std_logic;
SIGNAL \x|counterZero|count[18]~57\ : std_logic;
SIGNAL \x|counterZero|count[19]~58_combout\ : std_logic;
SIGNAL \x|counterZero|count[19]~59\ : std_logic;
SIGNAL \x|counterZero|count[20]~60_combout\ : std_logic;
SIGNAL \x|comb~5_combout\ : std_logic;
SIGNAL \x|counterZero|count[20]~61\ : std_logic;
SIGNAL \x|counterZero|count[21]~62_combout\ : std_logic;
SIGNAL \x|comb~6_combout\ : std_logic;
SIGNAL \x|pulse~combout\ : std_logic;
SIGNAL \pulseIn~0_combout\ : std_logic;
SIGNAL \pulseIn~1_combout\ : std_logic;
SIGNAL \pulseIn~combout\ : std_logic;
SIGNAL \pulseOut~0_combout\ : std_logic;
SIGNAL \pulseOut~1_combout\ : std_logic;
SIGNAL \pulseOut~combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \WideOr4~2_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \l1~2_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \WideNor0~4_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \l2~0_combout\ : std_logic;
SIGNAL \WideNor1~0_combout\ : std_logic;
SIGNAL \l2~1_combout\ : std_logic;
SIGNAL \WideNor1~1_combout\ : std_logic;
SIGNAL \Equal10~10_combout\ : std_logic;
SIGNAL \l2~2_combout\ : std_logic;
SIGNAL \x|counterPulse|count\ : std_logic_vector(21 DOWNTO 0);
SIGNAL count0 : std_logic_vector(31 DOWNTO 0);
SIGNAL \x|counterZero|count\ : std_logic_vector(21 DOWNTO 0);
SIGNAL count1 : std_logic_vector(31 DOWNTO 0);
SIGNAL \x|ALT_INV_reset2~clkctrl_outclk\ : std_logic;
SIGNAL \x|ALT_INV_reset1~clkctrl_outclk\ : std_logic;
SIGNAL \x|ALT_INV_en~combout\ : std_logic;
SIGNAL \ALT_INV_l2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal10~10_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_infIn <= infIn;
ww_infOut <= infOut;
ww_smo <= smo;
ww_pirIn <= pirIn;
ww_pirOut <= pirOut;
ww_clk50 <= clk50;
redIn <= ww_redIn;
redOut <= ww_redOut;
redSmo <= ww_redSmo;
greenIn <= ww_greenIn;
greenOut <= ww_greenOut;
pulseI <= ww_pulseI;
pulseO <= ww_pulseO;
l1 <= ww_l1;
l2 <= ww_l2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\x|reset1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \x|reset1~combout\);

\count1[0]~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \count1[0]~5_combout\);

\count0[0]~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \count0[0]~5_combout\);

\x|reset2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \x|reset2~combout\);

\clk50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50~input_o\);
\x|ALT_INV_reset2~clkctrl_outclk\ <= NOT \x|reset2~clkctrl_outclk\;
\x|ALT_INV_reset1~clkctrl_outclk\ <= NOT \x|reset1~clkctrl_outclk\;
\x|ALT_INV_en~combout\ <= NOT \x|en~combout\;
\ALT_INV_l2~2_combout\ <= NOT \l2~2_combout\;
\ALT_INV_Equal10~10_combout\ <= NOT \Equal10~10_combout\;
\ALT_INV_WideNor1~0_combout\ <= NOT \WideNor1~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X26_Y0_N2
\redIn~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \redIn$latch~combout\,
	devoe => ww_devoe,
	o => \redIn~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\redOut~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \redOut$latch~combout\,
	devoe => ww_devoe,
	o => \redOut~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\redSmo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \smo~input_o\,
	devoe => ww_devoe,
	o => \redSmo~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\greenIn~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \greenIn$latch~combout\,
	devoe => ww_devoe,
	o => \greenIn~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\greenOut~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \greenOut$latch~combout\,
	devoe => ww_devoe,
	o => \greenOut~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\pulseI~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pulseIn~combout\,
	devoe => ww_devoe,
	o => \pulseI~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\pulseO~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pulseOut~combout\,
	devoe => ww_devoe,
	o => \pulseO~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\l1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr5~combout\,
	devoe => ww_devoe,
	o => \l1[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\l1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr4~combout\,
	devoe => ww_devoe,
	o => \l1[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\l1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l1~2_combout\,
	devoe => ww_devoe,
	o => \l1[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\l1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr3~combout\,
	devoe => ww_devoe,
	o => \l1[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\l1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideNor0~4_combout\,
	devoe => ww_devoe,
	o => \l1[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\l1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~combout\,
	devoe => ww_devoe,
	o => \l1[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\l1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~combout\,
	devoe => ww_devoe,
	o => \l1[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\l2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l2~0_combout\,
	devoe => ww_devoe,
	o => \l2[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\l2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideNor1~0_combout\,
	devoe => ww_devoe,
	o => \l2[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\l2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l2~1_combout\,
	devoe => ww_devoe,
	o => \l2[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\l2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l2~0_combout\,
	devoe => ww_devoe,
	o => \l2[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\l2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideNor1~1_combout\,
	devoe => ww_devoe,
	o => \l2[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\l2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal10~10_combout\,
	devoe => ww_devoe,
	o => \l2[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\l2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_l2~2_combout\,
	devoe => ww_devoe,
	o => \l2[6]~output_o\);

-- Location: IOIBUF_X38_Y0_N15
\smo~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_smo,
	o => \smo~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\pirIn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pirIn,
	o => \pirIn~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\infIn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_infIn,
	o => \infIn~input_o\);

-- Location: LCCOMB_X52_Y28_N28
\comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\smo~input_o\ & ((\pirIn~input_o\) # (\infIn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \smo~input_o\,
	datac => \pirIn~input_o\,
	datad => \infIn~input_o\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X59_Y28_N0
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = count1(0) $ (VCC)
-- \Add3~1\ = CARRY(count1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X57_Y27_N8
\Equal10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~4_combout\ = (!count1(17) & (!count1(15) & (!count1(14) & !count1(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(17),
	datab => count1(15),
	datac => count1(14),
	datad => count1(16),
	combout => \Equal10~4_combout\);

-- Location: LCCOMB_X57_Y28_N30
\Equal10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (!count1(7) & !count1(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(7),
	datad => count1(6),
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X57_Y28_N8
\Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (!count1(5) & (!count1(4) & (!count1(2) & !count1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(5),
	datab => count1(4),
	datac => count1(2),
	datad => count1(3),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X57_Y28_N16
\Equal10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~2_combout\ = (\Equal10~1_combout\ & (!count1(8) & (!count1(9) & \Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => count1(8),
	datac => count1(9),
	datad => \Equal10~0_combout\,
	combout => \Equal10~2_combout\);

-- Location: LCCOMB_X57_Y28_N18
\Equal10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~3_combout\ = (!count1(13) & (!count1(11) & (!count1(10) & !count1(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(13),
	datab => count1(11),
	datac => count1(10),
	datad => count1(12),
	combout => \Equal10~3_combout\);

-- Location: LCCOMB_X58_Y27_N20
\Equal10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~6_combout\ = (!count1(24) & (!count1(25) & (!count1(22) & !count1(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(24),
	datab => count1(25),
	datac => count1(22),
	datad => count1(23),
	combout => \Equal10~6_combout\);

-- Location: LCCOMB_X58_Y27_N22
\Equal10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~7_combout\ = (!count1(29) & (!count1(26) & (!count1(28) & !count1(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(29),
	datab => count1(26),
	datac => count1(28),
	datad => count1(27),
	combout => \Equal10~7_combout\);

-- Location: LCCOMB_X57_Y27_N22
\Equal10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~5_combout\ = (!count1(20) & (!count1(19) & (!count1(18) & !count1(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(20),
	datab => count1(19),
	datac => count1(18),
	datad => count1(21),
	combout => \Equal10~5_combout\);

-- Location: LCCOMB_X58_Y27_N16
\Equal10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~8_combout\ = (!count1(30) & (\Equal10~6_combout\ & (\Equal10~7_combout\ & \Equal10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(30),
	datab => \Equal10~6_combout\,
	datac => \Equal10~7_combout\,
	datad => \Equal10~5_combout\,
	combout => \Equal10~8_combout\);

-- Location: LCCOMB_X57_Y29_N16
\Equal10~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~9_combout\ = (\Equal10~4_combout\ & (\Equal10~2_combout\ & (\Equal10~3_combout\ & \Equal10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~4_combout\,
	datab => \Equal10~2_combout\,
	datac => \Equal10~3_combout\,
	datad => \Equal10~8_combout\,
	combout => \Equal10~9_combout\);

-- Location: LCCOMB_X57_Y29_N24
\LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (count1(31)) # ((!count1(0) & (!count1(1) & \Equal10~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(0),
	datab => count1(31),
	datac => count1(1),
	datad => \Equal10~9_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X54_Y30_N2
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (count0(1) & (\Add2~1\ & VCC)) # (!count0(1) & (!\Add2~1\))
-- \Add2~3\ = CARRY((!count0(1) & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X54_Y30_N4
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (count0(2) & ((GND) # (!\Add2~3\))) # (!count0(2) & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((count0(2)) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X52_Y30_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count0(0) $ (VCC)
-- \Add0~1\ = CARRY(count0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X52_Y30_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count0(1) & (!\Add0~1\)) # (!count0(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X52_Y30_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count0(2) & (\Add0~3\ $ (GND))) # (!count0(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count0(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X56_Y28_N4
\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (count1(0) & (count1(2) $ (VCC))) # (!count1(0) & (count1(2) & VCC))
-- \Add4~1\ = CARRY((count1(0) & count1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(0),
	datab => count1(2),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X55_Y28_N2
\count[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[1]~0_combout\ = (count1(0) & (count0(1) $ (VCC))) # (!count1(0) & (count0(1) & VCC))
-- \count[1]~1\ = CARRY((count1(0) & count0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(0),
	datab => count0(1),
	datad => VCC,
	combout => \count[1]~0_combout\,
	cout => \count[1]~1\);

-- Location: LCCOMB_X55_Y28_N4
\count[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[2]~2_combout\ = (count1(1) & ((count0(2) & (\count[1]~1\ & VCC)) # (!count0(2) & (!\count[1]~1\)))) # (!count1(1) & ((count0(2) & (!\count[1]~1\)) # (!count0(2) & ((\count[1]~1\) # (GND)))))
-- \count[2]~3\ = CARRY((count1(1) & (!count0(2) & !\count[1]~1\)) # (!count1(1) & ((!\count[1]~1\) # (!count0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(1),
	datab => count0(2),
	datad => VCC,
	cin => \count[1]~1\,
	combout => \count[2]~2_combout\,
	cout => \count[2]~3\);

-- Location: LCCOMB_X55_Y28_N6
\count[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[3]~4_combout\ = ((\Add4~0_combout\ $ (count0(3) $ (!\count[2]~3\)))) # (GND)
-- \count[3]~5\ = CARRY((\Add4~0_combout\ & ((count0(3)) # (!\count[2]~3\))) # (!\Add4~0_combout\ & (count0(3) & !\count[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => count0(3),
	datad => VCC,
	cin => \count[2]~3\,
	combout => \count[3]~4_combout\,
	cout => \count[3]~5\);

-- Location: LCCOMB_X56_Y28_N6
\Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (count1(1) & ((count1(3) & (\Add4~1\ & VCC)) # (!count1(3) & (!\Add4~1\)))) # (!count1(1) & ((count1(3) & (!\Add4~1\)) # (!count1(3) & ((\Add4~1\) # (GND)))))
-- \Add4~3\ = CARRY((count1(1) & (!count1(3) & !\Add4~1\)) # (!count1(1) & ((!\Add4~1\) # (!count1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(1),
	datab => count1(3),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X55_Y28_N8
\count[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[4]~6_combout\ = (\Add4~2_combout\ & ((count0(4) & (\count[3]~5\ & VCC)) # (!count0(4) & (!\count[3]~5\)))) # (!\Add4~2_combout\ & ((count0(4) & (!\count[3]~5\)) # (!count0(4) & ((\count[3]~5\) # (GND)))))
-- \count[4]~7\ = CARRY((\Add4~2_combout\ & (!count0(4) & !\count[3]~5\)) # (!\Add4~2_combout\ & ((!\count[3]~5\) # (!count0(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => count0(4),
	datad => VCC,
	cin => \count[3]~5\,
	combout => \count[4]~6_combout\,
	cout => \count[4]~7\);

-- Location: LCCOMB_X54_Y31_N20
\LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (count0(0)) # (\count[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count0(0),
	datad => \count[1]~0_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X54_Y28_N14
\LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (\count[3]~4_combout\) # ((\count[4]~6_combout\) # ((\LessThan3~0_combout\) # (\count[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[3]~4_combout\,
	datab => \count[4]~6_combout\,
	datac => \LessThan3~0_combout\,
	datad => \count[2]~2_combout\,
	combout => \LessThan3~1_combout\);

-- Location: IOIBUF_X54_Y0_N29
\infOut~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_infOut,
	o => \infOut~input_o\);

-- Location: LCCOMB_X54_Y28_N20
\count1[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[1]~0_combout\ = (!\count[31]~60_combout\ & (\infOut~input_o\ & ((\LessThan3~1_combout\) # (!\LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[31]~60_combout\,
	datab => \LessThan3~1_combout\,
	datac => \infOut~input_o\,
	datad => \LessThan0~8_combout\,
	combout => \count1[1]~0_combout\);

-- Location: LCCOMB_X54_Y28_N8
\count0[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[1]~0_combout\ = (\count1[1]~0_combout\ & ((\LessThan4~0_combout\) # ((\LessThan5~0_combout\ & \LessThan1~0_combout\)))) # (!\count1[1]~0_combout\ & (((\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \LessThan5~0_combout\,
	datac => \count1[1]~0_combout\,
	datad => \LessThan1~0_combout\,
	combout => \count0[1]~0_combout\);

-- Location: LCCOMB_X55_Y31_N24
\count0[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[2]~8_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~4_combout\))) # (!\count0[0]~2_combout\ & (\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add0~4_combout\,
	datac => \count0[0]~2_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[2]~8_combout\);

-- Location: LCCOMB_X55_Y31_N20
\count0[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(2) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[2]~8_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(2),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[2]~8_combout\,
	combout => count0(2));

-- Location: LCCOMB_X54_Y30_N6
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (count0(3) & (\Add2~5\ & VCC)) # (!count0(3) & (!\Add2~5\))
-- \Add2~7\ = CARRY((!count0(3) & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X54_Y30_N8
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (count0(4) & ((GND) # (!\Add2~7\))) # (!count0(4) & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((count0(4)) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X52_Y30_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count0(3) & (!\Add0~5\)) # (!count0(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count0(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X52_Y30_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count0(4) & (\Add0~7\ $ (GND))) # (!count0(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count0(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X55_Y30_N12
\count0[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[4]~9_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~8_combout\))) # (!\count0[0]~2_combout\ & (\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add0~8_combout\,
	datac => \count0[0]~2_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[4]~9_combout\);

-- Location: LCCOMB_X55_Y30_N20
\count0[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(4) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[4]~9_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(4),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[4]~9_combout\,
	combout => count0(4));

-- Location: LCCOMB_X52_Y30_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count0(5) & (!\Add0~9\)) # (!count0(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count0(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X54_Y30_N10
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (count0(5) & (\Add2~9\ & VCC)) # (!count0(5) & (!\Add2~9\))
-- \Add2~11\ = CARRY((!count0(5) & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X55_Y30_N0
\count0[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[5]~10_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & (\Add0~10_combout\)) # (!\count0[0]~2_combout\ & ((\Add2~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add2~10_combout\,
	datac => \count0[0]~2_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[5]~10_combout\);

-- Location: LCCOMB_X55_Y30_N14
\count0[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(5) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[5]~10_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(5),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[5]~10_combout\,
	combout => count0(5));

-- Location: LCCOMB_X54_Y30_N12
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (count0(6) & ((GND) # (!\Add2~11\))) # (!count0(6) & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((count0(6)) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X52_Y30_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count0(6) & (\Add0~11\ $ (GND))) # (!count0(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count0(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X55_Y30_N30
\count0[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[6]~11_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~12_combout\))) # (!\count0[0]~2_combout\ & (\Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Add0~12_combout\,
	datac => \count0[0]~2_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[6]~11_combout\);

-- Location: LCCOMB_X55_Y30_N8
\count0[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(6) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[6]~11_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(6),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[6]~11_combout\,
	combout => count0(6));

-- Location: LCCOMB_X52_Y30_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count0(7) & (!\Add0~13\)) # (!count0(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count0(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X54_Y30_N14
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (count0(7) & (\Add2~13\ & VCC)) # (!count0(7) & (!\Add2~13\))
-- \Add2~15\ = CARRY((!count0(7) & !\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X55_Y30_N2
\count0[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[7]~12_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & (\Add0~14_combout\)) # (!\count0[0]~2_combout\ & ((\Add2~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add2~14_combout\,
	datac => \count0[0]~2_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[7]~12_combout\);

-- Location: LCCOMB_X55_Y30_N22
\count0[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(7) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[7]~12_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(7),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[7]~12_combout\,
	combout => count0(7));

-- Location: LCCOMB_X52_Y30_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count0(8) & (\Add0~15\ $ (GND))) # (!count0(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count0(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X54_Y30_N16
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (count0(8) & ((GND) # (!\Add2~15\))) # (!count0(8) & (\Add2~15\ $ (GND)))
-- \Add2~17\ = CARRY((count0(8)) # (!\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X52_Y28_N30
\count0[8]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[8]~13_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & (\Add0~16_combout\)) # (!\count0[0]~2_combout\ & ((\Add2~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \count0[1]~0_combout\,
	datac => \Add2~16_combout\,
	datad => \count0[0]~2_combout\,
	combout => \count0[8]~13_combout\);

-- Location: LCCOMB_X52_Y28_N14
\count0[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(8) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[8]~13_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(8),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[8]~13_combout\,
	combout => count0(8));

-- Location: LCCOMB_X54_Y30_N18
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (count0(9) & (\Add2~17\ & VCC)) # (!count0(9) & (!\Add2~17\))
-- \Add2~19\ = CARRY((!count0(9) & !\Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X52_Y30_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count0(9) & (!\Add0~17\)) # (!count0(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count0(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X51_Y28_N28
\count0[9]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[9]~14_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~18_combout\))) # (!\count0[0]~2_combout\ & (\Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \Add0~18_combout\,
	datac => \count0[0]~2_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[9]~14_combout\);

-- Location: LCCOMB_X51_Y28_N20
\count0[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(9) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[9]~14_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(9),
	datac => \count0[9]~14_combout\,
	datad => \count0[0]~5clkctrl_outclk\,
	combout => count0(9));

-- Location: LCCOMB_X52_Y30_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count0(10) & (\Add0~19\ $ (GND))) # (!count0(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count0(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X54_Y30_N20
\Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (count0(10) & ((GND) # (!\Add2~19\))) # (!count0(10) & (\Add2~19\ $ (GND)))
-- \Add2~21\ = CARRY((count0(10)) # (!\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X51_Y28_N2
\count0[10]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[10]~15_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & (\Add0~20_combout\)) # (!\count0[0]~2_combout\ & ((\Add2~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \count0[0]~2_combout\,
	datac => \Add2~20_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[10]~15_combout\);

-- Location: LCCOMB_X51_Y28_N10
\count0[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(10) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[10]~15_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(10),
	datab => \count0[10]~15_combout\,
	datad => \count0[0]~5clkctrl_outclk\,
	combout => count0(10));

-- Location: LCCOMB_X54_Y30_N22
\Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (count0(11) & (\Add2~21\ & VCC)) # (!count0(11) & (!\Add2~21\))
-- \Add2~23\ = CARRY((!count0(11) & !\Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X52_Y30_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count0(11) & (!\Add0~21\)) # (!count0(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count0(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X51_Y28_N24
\count0[11]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[11]~16_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~22_combout\))) # (!\count0[0]~2_combout\ & (\Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datab => \count0[0]~2_combout\,
	datac => \Add0~22_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[11]~16_combout\);

-- Location: LCCOMB_X51_Y28_N12
\count0[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(11) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[11]~16_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(11),
	datac => \count0[11]~16_combout\,
	datad => \count0[0]~5clkctrl_outclk\,
	combout => count0(11));

-- Location: LCCOMB_X52_Y30_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count0(12) & (\Add0~23\ $ (GND))) # (!count0(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count0(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X54_Y30_N24
\Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (count0(12) & ((GND) # (!\Add2~23\))) # (!count0(12) & (\Add2~23\ $ (GND)))
-- \Add2~25\ = CARRY((count0(12)) # (!\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X54_Y31_N22
\count0[12]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[12]~17_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & (\Add0~24_combout\)) # (!\count0[0]~2_combout\ & ((\Add2~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add2~24_combout\,
	datac => \count0[0]~2_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[12]~17_combout\);

-- Location: LCCOMB_X54_Y31_N24
\count0[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(12) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[12]~17_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(12),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[12]~17_combout\,
	combout => count0(12));

-- Location: LCCOMB_X52_Y30_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count0(13) & (!\Add0~25\)) # (!count0(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count0(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X54_Y30_N26
\Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (count0(13) & (\Add2~25\ & VCC)) # (!count0(13) & (!\Add2~25\))
-- \Add2~27\ = CARRY((!count0(13) & !\Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X54_Y31_N4
\count0[13]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[13]~18_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & (\Add0~26_combout\)) # (!\count0[0]~2_combout\ & ((\Add2~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add2~26_combout\,
	datac => \count0[0]~2_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[13]~18_combout\);

-- Location: LCCOMB_X54_Y31_N10
\count0[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(13) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[13]~18_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(13),
	datac => \count0[13]~18_combout\,
	datad => \count0[0]~5clkctrl_outclk\,
	combout => count0(13));

-- Location: LCCOMB_X54_Y30_N28
\Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (count0(14) & ((GND) # (!\Add2~27\))) # (!count0(14) & (\Add2~27\ $ (GND)))
-- \Add2~29\ = CARRY((count0(14)) # (!\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X52_Y30_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count0(14) & (\Add0~27\ $ (GND))) # (!count0(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count0(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X54_Y31_N26
\count0[14]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[14]~19_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~28_combout\))) # (!\count0[0]~2_combout\ & (\Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~28_combout\,
	datab => \Add0~28_combout\,
	datac => \count0[0]~2_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[14]~19_combout\);

-- Location: LCCOMB_X54_Y31_N16
\count0[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(14) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[14]~19_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(14),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[14]~19_combout\,
	combout => count0(14));

-- Location: LCCOMB_X54_Y30_N30
\Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (count0(15) & (\Add2~29\ & VCC)) # (!count0(15) & (!\Add2~29\))
-- \Add2~31\ = CARRY((!count0(15) & !\Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X52_Y30_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count0(15) & (!\Add0~29\)) # (!count0(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count0(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X54_Y31_N0
\count0[15]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[15]~20_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~30_combout\))) # (!\count0[0]~2_combout\ & (\Add2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~30_combout\,
	datab => \Add0~30_combout\,
	datac => \count0[0]~2_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[15]~20_combout\);

-- Location: LCCOMB_X54_Y31_N14
\count0[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(15) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[15]~20_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(15),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[15]~20_combout\,
	combout => count0(15));

-- Location: LCCOMB_X52_Y29_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count0(16) & (\Add0~31\ $ (GND))) # (!count0(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count0(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X54_Y29_N0
\Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (count0(16) & ((GND) # (!\Add2~31\))) # (!count0(16) & (\Add2~31\ $ (GND)))
-- \Add2~33\ = CARRY((count0(16)) # (!\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X52_Y28_N26
\count0[16]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[16]~21_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & (\Add0~32_combout\)) # (!\count0[0]~2_combout\ & ((\Add2~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \count0[1]~0_combout\,
	datac => \Add2~32_combout\,
	datad => \count0[0]~2_combout\,
	combout => \count0[16]~21_combout\);

-- Location: LCCOMB_X52_Y28_N16
\count0[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(16) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[16]~21_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(16),
	datac => \count0[16]~21_combout\,
	datad => \count0[0]~5clkctrl_outclk\,
	combout => count0(16));

-- Location: LCCOMB_X54_Y29_N2
\Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (count0(17) & (\Add2~33\ & VCC)) # (!count0(17) & (!\Add2~33\))
-- \Add2~35\ = CARRY((!count0(17) & !\Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X52_Y29_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count0(17) & (!\Add0~33\)) # (!count0(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count0(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X51_Y28_N30
\count0[17]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[17]~22_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~34_combout\))) # (!\count0[0]~2_combout\ & (\Add2~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~34_combout\,
	datab => \count0[0]~2_combout\,
	datac => \count0[1]~0_combout\,
	datad => \Add0~34_combout\,
	combout => \count0[17]~22_combout\);

-- Location: LCCOMB_X51_Y28_N26
\count0[17]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(17) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[17]~22_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(17),
	datac => \count0[17]~22_combout\,
	datad => \count0[0]~5clkctrl_outclk\,
	combout => count0(17));

-- Location: LCCOMB_X52_Y29_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count0(18) & (\Add0~35\ $ (GND))) # (!count0(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count0(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X54_Y29_N4
\Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (count0(18) & ((GND) # (!\Add2~35\))) # (!count0(18) & (\Add2~35\ $ (GND)))
-- \Add2~37\ = CARRY((count0(18)) # (!\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X51_Y28_N0
\count0[18]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[18]~23_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & (\Add0~36_combout\)) # (!\count0[0]~2_combout\ & ((\Add2~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \count0[0]~2_combout\,
	datac => \Add2~36_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[18]~23_combout\);

-- Location: LCCOMB_X51_Y28_N4
\count0[18]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(18) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[18]~23_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(18),
	datac => \count0[18]~23_combout\,
	datad => \count0[0]~5clkctrl_outclk\,
	combout => count0(18));

-- Location: LCCOMB_X54_Y29_N6
\Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (count0(19) & (\Add2~37\ & VCC)) # (!count0(19) & (!\Add2~37\))
-- \Add2~39\ = CARRY((!count0(19) & !\Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X52_Y29_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count0(19) & (!\Add0~37\)) # (!count0(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count0(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X51_Y28_N18
\count0[19]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[19]~24_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~38_combout\))) # (!\count0[0]~2_combout\ & (\Add2~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~38_combout\,
	datab => \count0[0]~2_combout\,
	datac => \count0[1]~0_combout\,
	datad => \Add0~38_combout\,
	combout => \count0[19]~24_combout\);

-- Location: LCCOMB_X51_Y28_N22
\count0[19]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(19) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[19]~24_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(19),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[19]~24_combout\,
	combout => count0(19));

-- Location: LCCOMB_X52_Y29_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count0(20) & (\Add0~39\ $ (GND))) # (!count0(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count0(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X54_Y29_N8
\Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (count0(20) & ((GND) # (!\Add2~39\))) # (!count0(20) & (\Add2~39\ $ (GND)))
-- \Add2~41\ = CARRY((count0(20)) # (!\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X55_Y31_N30
\count0[20]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[20]~25_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & (\Add0~40_combout\)) # (!\count0[0]~2_combout\ & ((\Add2~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add2~40_combout\,
	datac => \count0[0]~2_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[20]~25_combout\);

-- Location: LCCOMB_X55_Y31_N14
\count0[20]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(20) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[20]~25_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(20),
	datac => \count0[20]~25_combout\,
	datad => \count0[0]~5clkctrl_outclk\,
	combout => count0(20));

-- Location: LCCOMB_X54_Y29_N10
\Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (count0(21) & (\Add2~41\ & VCC)) # (!count0(21) & (!\Add2~41\))
-- \Add2~43\ = CARRY((!count0(21) & !\Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X52_Y29_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count0(21) & (!\Add0~41\)) # (!count0(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count0(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X55_Y31_N4
\count0[21]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[21]~26_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~42_combout\))) # (!\count0[0]~2_combout\ & (\Add2~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~42_combout\,
	datab => \Add0~42_combout\,
	datac => \count0[0]~2_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[21]~26_combout\);

-- Location: LCCOMB_X55_Y31_N28
\count0[21]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(21) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[21]~26_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(21),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[21]~26_combout\,
	combout => count0(21));

-- Location: LCCOMB_X52_Y29_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count0(22) & (\Add0~43\ $ (GND))) # (!count0(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count0(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X54_Y29_N12
\Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (count0(22) & ((GND) # (!\Add2~43\))) # (!count0(22) & (\Add2~43\ $ (GND)))
-- \Add2~45\ = CARRY((count0(22)) # (!\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X55_Y31_N22
\count0[22]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[22]~27_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & (\Add0~44_combout\)) # (!\count0[0]~2_combout\ & ((\Add2~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \Add2~44_combout\,
	datac => \count0[0]~2_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[22]~27_combout\);

-- Location: LCCOMB_X55_Y31_N26
\count0[22]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(22) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[22]~27_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(22),
	datac => \count0[22]~27_combout\,
	datad => \count0[0]~5clkctrl_outclk\,
	combout => count0(22));

-- Location: LCCOMB_X52_Y29_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count0(23) & (!\Add0~45\)) # (!count0(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count0(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X54_Y29_N14
\Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (count0(23) & (\Add2~45\ & VCC)) # (!count0(23) & (!\Add2~45\))
-- \Add2~47\ = CARRY((!count0(23) & !\Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X54_Y31_N30
\count0[23]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[23]~28_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & (\Add0~46_combout\)) # (!\count0[0]~2_combout\ & ((\Add2~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Add2~46_combout\,
	datac => \count0[0]~2_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[23]~28_combout\);

-- Location: LCCOMB_X54_Y31_N12
\count0[23]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(23) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[23]~28_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(23),
	datac => \count0[23]~28_combout\,
	datad => \count0[0]~5clkctrl_outclk\,
	combout => count0(23));

-- Location: LCCOMB_X54_Y29_N16
\Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (count0(24) & ((GND) # (!\Add2~47\))) # (!count0(24) & (\Add2~47\ $ (GND)))
-- \Add2~49\ = CARRY((count0(24)) # (!\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X52_Y29_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count0(24) & (\Add0~47\ $ (GND))) # (!count0(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count0(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X55_Y29_N24
\count0[24]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[24]~29_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~48_combout\))) # (!\count0[0]~2_combout\ & (\Add2~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~48_combout\,
	datab => \Add0~48_combout\,
	datac => \count0[1]~0_combout\,
	datad => \count0[0]~2_combout\,
	combout => \count0[24]~29_combout\);

-- Location: LCCOMB_X55_Y29_N12
\count0[24]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(24) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[24]~29_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(24),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[24]~29_combout\,
	combout => count0(24));

-- Location: LCCOMB_X54_Y29_N18
\Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (count0(25) & (\Add2~49\ & VCC)) # (!count0(25) & (!\Add2~49\))
-- \Add2~51\ = CARRY((!count0(25) & !\Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X52_Y29_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (count0(25) & (!\Add0~49\)) # (!count0(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!count0(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X55_Y29_N2
\count0[25]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[25]~30_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~50_combout\))) # (!\count0[0]~2_combout\ & (\Add2~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count0[0]~2_combout\,
	datab => \Add2~50_combout\,
	datac => \count0[1]~0_combout\,
	datad => \Add0~50_combout\,
	combout => \count0[25]~30_combout\);

-- Location: LCCOMB_X55_Y29_N26
\count0[25]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(25) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[25]~30_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(25),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[25]~30_combout\,
	combout => count0(25));

-- Location: LCCOMB_X54_Y29_N20
\Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (count0(26) & ((GND) # (!\Add2~51\))) # (!count0(26) & (\Add2~51\ $ (GND)))
-- \Add2~53\ = CARRY((count0(26)) # (!\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X52_Y29_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (count0(26) & (\Add0~51\ $ (GND))) # (!count0(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((count0(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X55_Y29_N8
\count0[26]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[26]~31_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~52_combout\))) # (!\count0[0]~2_combout\ & (\Add2~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count0[0]~2_combout\,
	datab => \Add2~52_combout\,
	datac => \count0[1]~0_combout\,
	datad => \Add0~52_combout\,
	combout => \count0[26]~31_combout\);

-- Location: LCCOMB_X55_Y29_N20
\count0[26]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(26) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & (\count0[26]~31_combout\)) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & ((count0(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count0[26]~31_combout\,
	datab => count0(26),
	datad => \count0[0]~5clkctrl_outclk\,
	combout => count0(26));

-- Location: LCCOMB_X54_Y29_N22
\Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (count0(27) & (\Add2~53\ & VCC)) # (!count0(27) & (!\Add2~53\))
-- \Add2~55\ = CARRY((!count0(27) & !\Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X52_Y29_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count0(27) & (!\Add0~53\)) # (!count0(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!count0(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X55_Y29_N22
\count0[27]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[27]~32_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~54_combout\))) # (!\count0[0]~2_combout\ & (\Add2~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count0[0]~2_combout\,
	datab => \Add2~54_combout\,
	datac => \count0[1]~0_combout\,
	datad => \Add0~54_combout\,
	combout => \count0[27]~32_combout\);

-- Location: LCCOMB_X55_Y29_N14
\count0[27]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(27) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[27]~32_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(27),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[27]~32_combout\,
	combout => count0(27));

-- Location: LCCOMB_X52_Y29_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (count0(28) & (\Add0~55\ $ (GND))) # (!count0(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((count0(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X54_Y29_N24
\Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (count0(28) & ((GND) # (!\Add2~55\))) # (!count0(28) & (\Add2~55\ $ (GND)))
-- \Add2~57\ = CARRY((count0(28)) # (!\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X55_Y29_N4
\count0[28]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[28]~33_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & (\Add0~56_combout\)) # (!\count0[0]~2_combout\ & ((\Add2~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count0[0]~2_combout\,
	datab => \Add0~56_combout\,
	datac => \count0[1]~0_combout\,
	datad => \Add2~56_combout\,
	combout => \count0[28]~33_combout\);

-- Location: LCCOMB_X55_Y29_N16
\count0[28]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(28) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[28]~33_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(28),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[28]~33_combout\,
	combout => count0(28));

-- Location: LCCOMB_X56_Y29_N28
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count0(27) & (!count0(25) & (!count0(24) & !count0(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(27),
	datab => count0(25),
	datac => count0(24),
	datad => count0(26),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X56_Y29_N18
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count0(28) & (!count0(30) & (!count0(29) & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(28),
	datab => count0(30),
	datac => count0(29),
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X55_Y31_N6
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count0(23) & (!count0(20) & (!count0(22) & !count0(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(23),
	datab => count0(20),
	datac => count0(22),
	datad => count0(21),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X56_Y30_N12
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count0(6) & (!count0(5) & (!count0(7) & !count0(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(6),
	datab => count0(5),
	datac => count0(7),
	datad => count0(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X55_Y30_N4
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count0(10) & (!count0(11) & (!count0(9) & !count0(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(10),
	datab => count0(11),
	datac => count0(9),
	datad => count0(8),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X52_Y28_N6
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count0(19) & (!count0(16) & (!count0(17) & !count0(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(19),
	datab => count0(16),
	datac => count0(17),
	datad => count0(18),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X55_Y31_N0
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count0(13) & (!count0(12) & (!count0(14) & !count0(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(13),
	datab => count0(12),
	datac => count0(14),
	datad => count0(15),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X56_Y30_N18
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X56_Y30_N0
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & (\Equal0~5_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X55_Y30_N6
\LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!count0(31) & (((count0(3)) # (!\Equal0~8_combout\)) # (!\Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Equal0~8_combout\,
	datac => count0(31),
	datad => count0(3),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X54_Y28_N4
\count1[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[1]~2_combout\ = (!\LessThan5~0_combout\ & (!\LessThan4~0_combout\ & \count1[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan5~0_combout\,
	datac => \LessThan4~0_combout\,
	datad => \count1[1]~0_combout\,
	combout => \count1[1]~2_combout\);

-- Location: LCCOMB_X60_Y28_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = count1(0) $ (VCC)
-- \Add1~1\ = CARRY(count1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X52_Y28_N0
\count1[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[0]~6_combout\ = (\count1[1]~2_combout\ & (\Add3~0_combout\)) # (!\count1[1]~2_combout\ & ((\Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datac => \count1[1]~2_combout\,
	datad => \Add1~0_combout\,
	combout => \count1[0]~6_combout\);

-- Location: LCCOMB_X52_Y28_N10
\count1[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(0) = (\count1[0]~5_combout\ & ((\count1[0]~6_combout\))) # (!\count1[0]~5_combout\ & (count1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(0),
	datab => \count1[0]~6_combout\,
	datad => \count1[0]~5_combout\,
	combout => count1(0));

-- Location: LCCOMB_X59_Y28_N2
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (count1(1) & (\Add3~1\ & VCC)) # (!count1(1) & (!\Add3~1\))
-- \Add3~3\ = CARRY((!count1(1) & !\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X60_Y28_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (count1(1) & (!\Add1~1\)) # (!count1(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!count1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X55_Y29_N10
\count1[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[1]~7_combout\ = (\count1[1]~2_combout\ & (\Add3~2_combout\)) # (!\count1[1]~2_combout\ & ((\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~2_combout\,
	datac => \Add1~2_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[1]~7_combout\);

-- Location: LCCOMB_X55_Y29_N30
\count1[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(1) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[1]~7_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(1),
	datac => \count1[1]~7_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(1));

-- Location: LCCOMB_X60_Y28_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (count1(2) & (\Add1~3\ $ (GND))) # (!count1(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((count1(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X59_Y28_N4
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (count1(2) & ((GND) # (!\Add3~3\))) # (!count1(2) & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((count1(2)) # (!\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X58_Y28_N8
\count1[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[2]~8_combout\ = (\count1[1]~2_combout\ & ((\Add3~4_combout\))) # (!\count1[1]~2_combout\ & (\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~4_combout\,
	datac => \Add3~4_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[2]~8_combout\);

-- Location: LCCOMB_X56_Y28_N0
\count1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(2) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & (\count1[2]~8_combout\)) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & ((count1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[2]~8_combout\,
	datab => count1(2),
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(2));

-- Location: LCCOMB_X60_Y28_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (count1(3) & (!\Add1~5\)) # (!count1(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!count1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X59_Y28_N6
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (count1(3) & (\Add3~5\ & VCC)) # (!count1(3) & (!\Add3~5\))
-- \Add3~7\ = CARRY((!count1(3) & !\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X57_Y28_N0
\count1[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[3]~9_combout\ = (\count1[1]~2_combout\ & ((\Add3~6_combout\))) # (!\count1[1]~2_combout\ & (\Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datac => \count1[1]~2_combout\,
	datad => \Add3~6_combout\,
	combout => \count1[3]~9_combout\);

-- Location: LCCOMB_X56_Y28_N2
\count1[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(3) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[3]~9_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(3),
	datac => \count1[3]~9_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(3));

-- Location: LCCOMB_X60_Y28_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (count1(4) & (\Add1~7\ $ (GND))) # (!count1(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((count1(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X59_Y28_N8
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (count1(4) & ((GND) # (!\Add3~7\))) # (!count1(4) & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((count1(4)) # (!\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X58_Y28_N14
\count1[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[4]~10_combout\ = (\count1[1]~2_combout\ & ((\Add3~8_combout\))) # (!\count1[1]~2_combout\ & (\Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~8_combout\,
	datac => \Add3~8_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[4]~10_combout\);

-- Location: LCCOMB_X57_Y28_N24
\count1[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(4) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[4]~10_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(4),
	datac => \count1[4]~10_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(4));

-- Location: LCCOMB_X60_Y28_N10
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (count1(5) & (!\Add1~9\)) # (!count1(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!count1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X59_Y28_N10
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (count1(5) & (\Add3~9\ & VCC)) # (!count1(5) & (!\Add3~9\))
-- \Add3~11\ = CARRY((!count1(5) & !\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X58_Y28_N12
\count1[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[5]~11_combout\ = (\count1[1]~2_combout\ & ((\Add3~10_combout\))) # (!\count1[1]~2_combout\ & (\Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datac => \Add3~10_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[5]~11_combout\);

-- Location: LCCOMB_X57_Y28_N22
\count1[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(5) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[5]~11_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(5),
	datac => \count1[0]~5clkctrl_outclk\,
	datad => \count1[5]~11_combout\,
	combout => count1(5));

-- Location: LCCOMB_X60_Y28_N12
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (count1(6) & (\Add1~11\ $ (GND))) # (!count1(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((count1(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X59_Y28_N12
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (count1(6) & ((GND) # (!\Add3~11\))) # (!count1(6) & (\Add3~11\ $ (GND)))
-- \Add3~13\ = CARRY((count1(6)) # (!\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X58_Y28_N2
\count1[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[6]~12_combout\ = (\count1[1]~2_combout\ & ((\Add3~12_combout\))) # (!\count1[1]~2_combout\ & (\Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datac => \Add3~12_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[6]~12_combout\);

-- Location: LCCOMB_X57_Y28_N20
\count1[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(6) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[6]~12_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(6),
	datac => \count1[0]~5clkctrl_outclk\,
	datad => \count1[6]~12_combout\,
	combout => count1(6));

-- Location: LCCOMB_X60_Y28_N14
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (count1(7) & (!\Add1~13\)) # (!count1(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!count1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X59_Y28_N14
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (count1(7) & (\Add3~13\ & VCC)) # (!count1(7) & (!\Add3~13\))
-- \Add3~15\ = CARRY((!count1(7) & !\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X58_Y28_N20
\count1[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[7]~13_combout\ = (\count1[1]~2_combout\ & ((\Add3~14_combout\))) # (!\count1[1]~2_combout\ & (\Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datac => \Add3~14_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[7]~13_combout\);

-- Location: LCCOMB_X57_Y28_N6
\count1[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(7) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[7]~13_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(7),
	datac => \count1[7]~13_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(7));

-- Location: LCCOMB_X60_Y28_N16
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (count1(8) & (\Add1~15\ $ (GND))) # (!count1(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((count1(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X59_Y28_N16
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (count1(8) & ((GND) # (!\Add3~15\))) # (!count1(8) & (\Add3~15\ $ (GND)))
-- \Add3~17\ = CARRY((count1(8)) # (!\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X58_Y28_N30
\count1[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[8]~14_combout\ = (\count1[1]~2_combout\ & ((\Add3~16_combout\))) # (!\count1[1]~2_combout\ & (\Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Add3~16_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[8]~14_combout\);

-- Location: LCCOMB_X57_Y28_N28
\count1[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(8) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[8]~14_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(8),
	datac => \count1[8]~14_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(8));

-- Location: LCCOMB_X59_Y28_N18
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (count1(9) & (\Add3~17\ & VCC)) # (!count1(9) & (!\Add3~17\))
-- \Add3~19\ = CARRY((!count1(9) & !\Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X60_Y28_N18
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (count1(9) & (!\Add1~17\)) # (!count1(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!count1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X58_Y28_N4
\count1[9]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[9]~15_combout\ = (\count1[1]~2_combout\ & (\Add3~18_combout\)) # (!\count1[1]~2_combout\ & ((\Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~18_combout\,
	datac => \Add1~18_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[9]~15_combout\);

-- Location: LCCOMB_X57_Y28_N14
\count1[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(9) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & (\count1[9]~15_combout\)) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & ((count1(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[9]~15_combout\,
	datab => count1(9),
	datac => \count1[0]~5clkctrl_outclk\,
	combout => count1(9));

-- Location: LCCOMB_X60_Y28_N20
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (count1(10) & (\Add1~19\ $ (GND))) # (!count1(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((count1(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X59_Y28_N20
\Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (count1(10) & ((GND) # (!\Add3~19\))) # (!count1(10) & (\Add3~19\ $ (GND)))
-- \Add3~21\ = CARRY((count1(10)) # (!\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X57_Y28_N26
\count1[10]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[10]~16_combout\ = (\count1[1]~2_combout\ & ((\Add3~20_combout\))) # (!\count1[1]~2_combout\ & (\Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~20_combout\,
	datac => \Add3~20_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[10]~16_combout\);

-- Location: LCCOMB_X57_Y28_N4
\count1[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(10) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & (\count1[10]~16_combout\)) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & ((count1(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[10]~16_combout\,
	datac => count1(10),
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(10));

-- Location: LCCOMB_X59_Y28_N22
\Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (count1(11) & (\Add3~21\ & VCC)) # (!count1(11) & (!\Add3~21\))
-- \Add3~23\ = CARRY((!count1(11) & !\Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X60_Y28_N22
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (count1(11) & (!\Add1~21\)) # (!count1(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!count1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X58_Y28_N10
\count1[11]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[11]~17_combout\ = (\count1[1]~2_combout\ & (\Add3~22_combout\)) # (!\count1[1]~2_combout\ & ((\Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~22_combout\,
	datac => \Add1~22_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[11]~17_combout\);

-- Location: LCCOMB_X57_Y28_N2
\count1[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(11) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[11]~17_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(11),
	datac => \count1[11]~17_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(11));

-- Location: LCCOMB_X59_Y28_N24
\Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (count1(12) & ((GND) # (!\Add3~23\))) # (!count1(12) & (\Add3~23\ $ (GND)))
-- \Add3~25\ = CARRY((count1(12)) # (!\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X60_Y28_N24
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (count1(12) & (\Add1~23\ $ (GND))) # (!count1(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((count1(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X58_Y28_N28
\count1[12]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[12]~18_combout\ = (\count1[1]~2_combout\ & (\Add3~24_combout\)) # (!\count1[1]~2_combout\ & ((\Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~24_combout\,
	datac => \Add1~24_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[12]~18_combout\);

-- Location: LCCOMB_X57_Y28_N12
\count1[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(12) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[12]~18_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(12),
	datac => \count1[12]~18_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(12));

-- Location: LCCOMB_X59_Y28_N26
\Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (count1(13) & (\Add3~25\ & VCC)) # (!count1(13) & (!\Add3~25\))
-- \Add3~27\ = CARRY((!count1(13) & !\Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X60_Y28_N26
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (count1(13) & (!\Add1~25\)) # (!count1(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!count1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X58_Y28_N22
\count1[13]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[13]~19_combout\ = (\count1[1]~2_combout\ & (\Add3~26_combout\)) # (!\count1[1]~2_combout\ & ((\Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~26_combout\,
	datac => \Add1~26_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[13]~19_combout\);

-- Location: LCCOMB_X57_Y28_N10
\count1[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(13) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[13]~19_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(13),
	datac => \count1[13]~19_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(13));

-- Location: LCCOMB_X59_Y28_N28
\Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (count1(14) & ((GND) # (!\Add3~27\))) # (!count1(14) & (\Add3~27\ $ (GND)))
-- \Add3~29\ = CARRY((count1(14)) # (!\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X60_Y28_N28
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (count1(14) & (\Add1~27\ $ (GND))) # (!count1(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((count1(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X58_Y27_N6
\count1[14]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[14]~20_combout\ = (\count1[1]~2_combout\ & (\Add3~28_combout\)) # (!\count1[1]~2_combout\ & ((\Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~28_combout\,
	datac => \Add1~28_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[14]~20_combout\);

-- Location: LCCOMB_X57_Y27_N16
\count1[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(14) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & (\count1[14]~20_combout\)) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & ((count1(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count1[14]~20_combout\,
	datac => count1(14),
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(14));

-- Location: LCCOMB_X60_Y28_N30
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (count1(15) & (!\Add1~29\)) # (!count1(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!count1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X59_Y28_N30
\Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (count1(15) & (\Add3~29\ & VCC)) # (!count1(15) & (!\Add3~29\))
-- \Add3~31\ = CARRY((!count1(15) & !\Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X58_Y27_N28
\count1[15]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[15]~21_combout\ = (\count1[1]~2_combout\ & ((\Add3~30_combout\))) # (!\count1[1]~2_combout\ & (\Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~30_combout\,
	datac => \Add3~30_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[15]~21_combout\);

-- Location: LCCOMB_X57_Y27_N14
\count1[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(15) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[15]~21_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(15),
	datac => \count1[15]~21_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(15));

-- Location: LCCOMB_X60_Y27_N0
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (count1(16) & (\Add1~31\ $ (GND))) # (!count1(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((count1(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X59_Y27_N0
\Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (count1(16) & ((GND) # (!\Add3~31\))) # (!count1(16) & (\Add3~31\ $ (GND)))
-- \Add3~33\ = CARRY((count1(16)) # (!\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X57_Y27_N24
\count1[16]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[16]~22_combout\ = (\count1[1]~2_combout\ & ((\Add3~32_combout\))) # (!\count1[1]~2_combout\ & (\Add1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datac => \Add3~32_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[16]~22_combout\);

-- Location: LCCOMB_X56_Y27_N30
\count1[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(16) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[16]~22_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(16),
	datac => \count1[0]~5clkctrl_outclk\,
	datad => \count1[16]~22_combout\,
	combout => count1(16));

-- Location: LCCOMB_X59_Y27_N2
\Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (count1(17) & (\Add3~33\ & VCC)) # (!count1(17) & (!\Add3~33\))
-- \Add3~35\ = CARRY((!count1(17) & !\Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X60_Y27_N2
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (count1(17) & (!\Add1~33\)) # (!count1(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!count1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X58_Y27_N14
\count1[17]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[17]~23_combout\ = (\count1[1]~2_combout\ & (\Add3~34_combout\)) # (!\count1[1]~2_combout\ & ((\Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~34_combout\,
	datab => \Add1~34_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[17]~23_combout\);

-- Location: LCCOMB_X57_Y27_N4
\count1[17]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(17) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[17]~23_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(17),
	datac => \count1[17]~23_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(17));

-- Location: LCCOMB_X60_Y27_N4
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (count1(18) & (\Add1~35\ $ (GND))) # (!count1(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((count1(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X59_Y27_N4
\Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (count1(18) & ((GND) # (!\Add3~35\))) # (!count1(18) & (\Add3~35\ $ (GND)))
-- \Add3~37\ = CARRY((count1(18)) # (!\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X58_Y27_N24
\count1[18]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[18]~24_combout\ = (\count1[1]~2_combout\ & ((\Add3~36_combout\))) # (!\count1[1]~2_combout\ & (\Add1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datac => \Add3~36_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[18]~24_combout\);

-- Location: LCCOMB_X57_Y27_N18
\count1[18]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(18) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[18]~24_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(18),
	datac => \count1[18]~24_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(18));

-- Location: LCCOMB_X60_Y27_N6
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (count1(19) & (!\Add1~37\)) # (!count1(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!count1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X59_Y27_N6
\Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (count1(19) & (\Add3~37\ & VCC)) # (!count1(19) & (!\Add3~37\))
-- \Add3~39\ = CARRY((!count1(19) & !\Add3~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X57_Y27_N30
\count1[19]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[19]~25_combout\ = (\count1[1]~2_combout\ & ((\Add3~38_combout\))) # (!\count1[1]~2_combout\ & (\Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \Add3~38_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[19]~25_combout\);

-- Location: LCCOMB_X57_Y27_N28
\count1[19]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(19) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[19]~25_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(19),
	datac => \count1[19]~25_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(19));

-- Location: LCCOMB_X59_Y27_N8
\Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (count1(20) & ((GND) # (!\Add3~39\))) # (!count1(20) & (\Add3~39\ $ (GND)))
-- \Add3~41\ = CARRY((count1(20)) # (!\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X60_Y27_N8
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (count1(20) & (\Add1~39\ $ (GND))) # (!count1(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((count1(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X58_Y27_N2
\count1[20]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[20]~26_combout\ = (\count1[1]~2_combout\ & (\Add3~40_combout\)) # (!\count1[1]~2_combout\ & ((\Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~40_combout\,
	datac => \Add1~40_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[20]~26_combout\);

-- Location: LCCOMB_X57_Y27_N6
\count1[20]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(20) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[20]~26_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(20),
	datac => \count1[20]~26_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(20));

-- Location: LCCOMB_X60_Y27_N10
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (count1(21) & (!\Add1~41\)) # (!count1(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!count1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X59_Y27_N10
\Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (count1(21) & (\Add3~41\ & VCC)) # (!count1(21) & (!\Add3~41\))
-- \Add3~43\ = CARRY((!count1(21) & !\Add3~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X57_Y27_N0
\count1[21]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[21]~27_combout\ = (\count1[1]~2_combout\ & ((\Add3~42_combout\))) # (!\count1[1]~2_combout\ & (\Add1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~42_combout\,
	datac => \count1[1]~2_combout\,
	datad => \Add3~42_combout\,
	combout => \count1[21]~27_combout\);

-- Location: LCCOMB_X57_Y27_N20
\count1[21]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(21) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[21]~27_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(21),
	datac => \count1[21]~27_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(21));

-- Location: LCCOMB_X59_Y27_N12
\Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (count1(22) & ((GND) # (!\Add3~43\))) # (!count1(22) & (\Add3~43\ $ (GND)))
-- \Add3~45\ = CARRY((count1(22)) # (!\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X60_Y27_N12
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (count1(22) & (\Add1~43\ $ (GND))) # (!count1(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((count1(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X58_Y27_N12
\count1[22]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[22]~28_combout\ = (\count1[1]~2_combout\ & (\Add3~44_combout\)) # (!\count1[1]~2_combout\ & ((\Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~44_combout\,
	datac => \Add1~44_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[22]~28_combout\);

-- Location: LCCOMB_X57_Y27_N26
\count1[22]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(22) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[22]~28_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(22),
	datac => \count1[0]~5clkctrl_outclk\,
	datad => \count1[22]~28_combout\,
	combout => count1(22));

-- Location: LCCOMB_X59_Y27_N14
\Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (count1(23) & (\Add3~45\ & VCC)) # (!count1(23) & (!\Add3~45\))
-- \Add3~47\ = CARRY((!count1(23) & !\Add3~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X60_Y27_N14
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (count1(23) & (!\Add1~45\)) # (!count1(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!count1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X58_Y27_N26
\count1[23]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[23]~29_combout\ = (\count1[1]~2_combout\ & (\Add3~46_combout\)) # (!\count1[1]~2_combout\ & ((\Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~46_combout\,
	datac => \Add1~46_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[23]~29_combout\);

-- Location: LCCOMB_X57_Y27_N12
\count1[23]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(23) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[23]~29_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(23),
	datac => \count1[0]~5clkctrl_outclk\,
	datad => \count1[23]~29_combout\,
	combout => count1(23));

-- Location: LCCOMB_X60_Y27_N16
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (count1(24) & (\Add1~47\ $ (GND))) # (!count1(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((count1(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X59_Y27_N16
\Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (count1(24) & ((GND) # (!\Add3~47\))) # (!count1(24) & (\Add3~47\ $ (GND)))
-- \Add3~49\ = CARRY((count1(24)) # (!\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X57_Y27_N2
\count1[24]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[24]~30_combout\ = (\count1[1]~2_combout\ & ((\Add3~48_combout\))) # (!\count1[1]~2_combout\ & (\Add1~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~48_combout\,
	datac => \count1[1]~2_combout\,
	datad => \Add3~48_combout\,
	combout => \count1[24]~30_combout\);

-- Location: LCCOMB_X57_Y27_N10
\count1[24]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(24) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[24]~30_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(24),
	datac => \count1[24]~30_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(24));

-- Location: LCCOMB_X60_Y27_N18
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (count1(25) & (!\Add1~49\)) # (!count1(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!count1(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X59_Y27_N18
\Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (count1(25) & (\Add3~49\ & VCC)) # (!count1(25) & (!\Add3~49\))
-- \Add3~51\ = CARRY((!count1(25) & !\Add3~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(25),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X58_Y28_N0
\count1[25]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[25]~31_combout\ = (\count1[1]~2_combout\ & ((\Add3~50_combout\))) # (!\count1[1]~2_combout\ & (\Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~50_combout\,
	datac => \Add3~50_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[25]~31_combout\);

-- Location: LCCOMB_X58_Y28_N6
\count1[25]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(25) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[25]~31_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(25),
	datac => \count1[25]~31_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(25));

-- Location: LCCOMB_X59_Y27_N20
\Add3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (count1(26) & ((GND) # (!\Add3~51\))) # (!count1(26) & (\Add3~51\ $ (GND)))
-- \Add3~53\ = CARRY((count1(26)) # (!\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(26),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X60_Y27_N20
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (count1(26) & (\Add1~51\ $ (GND))) # (!count1(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((count1(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X58_Y27_N0
\count1[26]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[26]~32_combout\ = (\count1[1]~2_combout\ & (\Add3~52_combout\)) # (!\count1[1]~2_combout\ & ((\Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~52_combout\,
	datac => \count1[1]~2_combout\,
	datad => \Add1~52_combout\,
	combout => \count1[26]~32_combout\);

-- Location: LCCOMB_X58_Y27_N18
\count1[26]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(26) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & (\count1[26]~32_combout\)) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & ((count1(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[26]~32_combout\,
	datac => \count1[0]~5clkctrl_outclk\,
	datad => count1(26),
	combout => count1(26));

-- Location: LCCOMB_X59_Y27_N22
\Add3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (count1(27) & (\Add3~53\ & VCC)) # (!count1(27) & (!\Add3~53\))
-- \Add3~55\ = CARRY((!count1(27) & !\Add3~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(27),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X60_Y27_N22
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (count1(27) & (!\Add1~53\)) # (!count1(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!count1(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X54_Y27_N18
\count1[27]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[27]~33_combout\ = (\count1[1]~2_combout\ & (\Add3~54_combout\)) # (!\count1[1]~2_combout\ & ((\Add1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~54_combout\,
	datab => \count1[1]~2_combout\,
	datad => \Add1~54_combout\,
	combout => \count1[27]~33_combout\);

-- Location: LCCOMB_X54_Y27_N28
\count1[27]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(27) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[27]~33_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(27),
	datac => \count1[27]~33_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(27));

-- Location: LCCOMB_X60_Y27_N24
\Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (count1(28) & (\Add1~55\ $ (GND))) # (!count1(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((count1(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X59_Y27_N24
\Add3~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (count1(28) & ((GND) # (!\Add3~55\))) # (!count1(28) & (\Add3~55\ $ (GND)))
-- \Add3~57\ = CARRY((count1(28)) # (!\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(28),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X58_Y27_N30
\count1[28]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[28]~34_combout\ = (\count1[1]~2_combout\ & ((\Add3~56_combout\))) # (!\count1[1]~2_combout\ & (\Add1~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add3~56_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[28]~34_combout\);

-- Location: LCCOMB_X58_Y27_N8
\count1[28]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(28) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & (\count1[28]~34_combout\)) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & ((count1(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count1[28]~34_combout\,
	datac => \count1[0]~5clkctrl_outclk\,
	datad => count1(28),
	combout => count1(28));

-- Location: LCCOMB_X56_Y28_N8
\Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((count1(4) $ (count1(2) $ (!\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((count1(4) & ((count1(2)) # (!\Add4~3\))) # (!count1(4) & (count1(2) & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(4),
	datab => count1(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X56_Y28_N10
\Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (count1(3) & ((count1(5) & (\Add4~5\ & VCC)) # (!count1(5) & (!\Add4~5\)))) # (!count1(3) & ((count1(5) & (!\Add4~5\)) # (!count1(5) & ((\Add4~5\) # (GND)))))
-- \Add4~7\ = CARRY((count1(3) & (!count1(5) & !\Add4~5\)) # (!count1(3) & ((!\Add4~5\) # (!count1(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(3),
	datab => count1(5),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X56_Y28_N12
\Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((count1(6) $ (count1(4) $ (!\Add4~7\)))) # (GND)
-- \Add4~9\ = CARRY((count1(6) & ((count1(4)) # (!\Add4~7\))) # (!count1(6) & (count1(4) & !\Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(6),
	datab => count1(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X56_Y28_N14
\Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (count1(7) & ((count1(5) & (\Add4~9\ & VCC)) # (!count1(5) & (!\Add4~9\)))) # (!count1(7) & ((count1(5) & (!\Add4~9\)) # (!count1(5) & ((\Add4~9\) # (GND)))))
-- \Add4~11\ = CARRY((count1(7) & (!count1(5) & !\Add4~9\)) # (!count1(7) & ((!\Add4~9\) # (!count1(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(7),
	datab => count1(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X56_Y28_N16
\Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = ((count1(6) $ (count1(8) $ (!\Add4~11\)))) # (GND)
-- \Add4~13\ = CARRY((count1(6) & ((count1(8)) # (!\Add4~11\))) # (!count1(6) & (count1(8) & !\Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(6),
	datab => count1(8),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X56_Y28_N18
\Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (count1(7) & ((count1(9) & (\Add4~13\ & VCC)) # (!count1(9) & (!\Add4~13\)))) # (!count1(7) & ((count1(9) & (!\Add4~13\)) # (!count1(9) & ((\Add4~13\) # (GND)))))
-- \Add4~15\ = CARRY((count1(7) & (!count1(9) & !\Add4~13\)) # (!count1(7) & ((!\Add4~13\) # (!count1(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(7),
	datab => count1(9),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X56_Y28_N20
\Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = ((count1(10) $ (count1(8) $ (!\Add4~15\)))) # (GND)
-- \Add4~17\ = CARRY((count1(10) & ((count1(8)) # (!\Add4~15\))) # (!count1(10) & (count1(8) & !\Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(10),
	datab => count1(8),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X56_Y28_N22
\Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (count1(11) & ((count1(9) & (\Add4~17\ & VCC)) # (!count1(9) & (!\Add4~17\)))) # (!count1(11) & ((count1(9) & (!\Add4~17\)) # (!count1(9) & ((\Add4~17\) # (GND)))))
-- \Add4~19\ = CARRY((count1(11) & (!count1(9) & !\Add4~17\)) # (!count1(11) & ((!\Add4~17\) # (!count1(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(11),
	datab => count1(9),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X56_Y28_N24
\Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = ((count1(10) $ (count1(12) $ (!\Add4~19\)))) # (GND)
-- \Add4~21\ = CARRY((count1(10) & ((count1(12)) # (!\Add4~19\))) # (!count1(10) & (count1(12) & !\Add4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(10),
	datab => count1(12),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X56_Y28_N26
\Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (count1(11) & ((count1(13) & (\Add4~21\ & VCC)) # (!count1(13) & (!\Add4~21\)))) # (!count1(11) & ((count1(13) & (!\Add4~21\)) # (!count1(13) & ((\Add4~21\) # (GND)))))
-- \Add4~23\ = CARRY((count1(11) & (!count1(13) & !\Add4~21\)) # (!count1(11) & ((!\Add4~21\) # (!count1(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(11),
	datab => count1(13),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X56_Y28_N28
\Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = ((count1(14) $ (count1(12) $ (!\Add4~23\)))) # (GND)
-- \Add4~25\ = CARRY((count1(14) & ((count1(12)) # (!\Add4~23\))) # (!count1(14) & (count1(12) & !\Add4~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(14),
	datab => count1(12),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X56_Y28_N30
\Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (count1(15) & ((count1(13) & (\Add4~25\ & VCC)) # (!count1(13) & (!\Add4~25\)))) # (!count1(15) & ((count1(13) & (!\Add4~25\)) # (!count1(13) & ((\Add4~25\) # (GND)))))
-- \Add4~27\ = CARRY((count1(15) & (!count1(13) & !\Add4~25\)) # (!count1(15) & ((!\Add4~25\) # (!count1(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(15),
	datab => count1(13),
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X56_Y27_N0
\Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = ((count1(16) $ (count1(14) $ (!\Add4~27\)))) # (GND)
-- \Add4~29\ = CARRY((count1(16) & ((count1(14)) # (!\Add4~27\))) # (!count1(16) & (count1(14) & !\Add4~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(16),
	datab => count1(14),
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X56_Y27_N2
\Add4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (count1(17) & ((count1(15) & (\Add4~29\ & VCC)) # (!count1(15) & (!\Add4~29\)))) # (!count1(17) & ((count1(15) & (!\Add4~29\)) # (!count1(15) & ((\Add4~29\) # (GND)))))
-- \Add4~31\ = CARRY((count1(17) & (!count1(15) & !\Add4~29\)) # (!count1(17) & ((!\Add4~29\) # (!count1(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(17),
	datab => count1(15),
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X56_Y27_N4
\Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = ((count1(16) $ (count1(18) $ (!\Add4~31\)))) # (GND)
-- \Add4~33\ = CARRY((count1(16) & ((count1(18)) # (!\Add4~31\))) # (!count1(16) & (count1(18) & !\Add4~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(16),
	datab => count1(18),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: LCCOMB_X56_Y27_N6
\Add4~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (count1(17) & ((count1(19) & (\Add4~33\ & VCC)) # (!count1(19) & (!\Add4~33\)))) # (!count1(17) & ((count1(19) & (!\Add4~33\)) # (!count1(19) & ((\Add4~33\) # (GND)))))
-- \Add4~35\ = CARRY((count1(17) & (!count1(19) & !\Add4~33\)) # (!count1(17) & ((!\Add4~33\) # (!count1(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(17),
	datab => count1(19),
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: LCCOMB_X56_Y27_N8
\Add4~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = ((count1(20) $ (count1(18) $ (!\Add4~35\)))) # (GND)
-- \Add4~37\ = CARRY((count1(20) & ((count1(18)) # (!\Add4~35\))) # (!count1(20) & (count1(18) & !\Add4~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(20),
	datab => count1(18),
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: LCCOMB_X56_Y27_N10
\Add4~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (count1(21) & ((count1(19) & (\Add4~37\ & VCC)) # (!count1(19) & (!\Add4~37\)))) # (!count1(21) & ((count1(19) & (!\Add4~37\)) # (!count1(19) & ((\Add4~37\) # (GND)))))
-- \Add4~39\ = CARRY((count1(21) & (!count1(19) & !\Add4~37\)) # (!count1(21) & ((!\Add4~37\) # (!count1(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(21),
	datab => count1(19),
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: LCCOMB_X56_Y27_N12
\Add4~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = ((count1(20) $ (count1(22) $ (!\Add4~39\)))) # (GND)
-- \Add4~41\ = CARRY((count1(20) & ((count1(22)) # (!\Add4~39\))) # (!count1(20) & (count1(22) & !\Add4~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(20),
	datab => count1(22),
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: LCCOMB_X56_Y27_N14
\Add4~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (count1(21) & ((count1(23) & (\Add4~41\ & VCC)) # (!count1(23) & (!\Add4~41\)))) # (!count1(21) & ((count1(23) & (!\Add4~41\)) # (!count1(23) & ((\Add4~41\) # (GND)))))
-- \Add4~43\ = CARRY((count1(21) & (!count1(23) & !\Add4~41\)) # (!count1(21) & ((!\Add4~41\) # (!count1(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(21),
	datab => count1(23),
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: LCCOMB_X56_Y27_N16
\Add4~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = ((count1(22) $ (count1(24) $ (!\Add4~43\)))) # (GND)
-- \Add4~45\ = CARRY((count1(22) & ((count1(24)) # (!\Add4~43\))) # (!count1(22) & (count1(24) & !\Add4~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(22),
	datab => count1(24),
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: LCCOMB_X56_Y27_N18
\Add4~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (count1(25) & ((count1(23) & (\Add4~45\ & VCC)) # (!count1(23) & (!\Add4~45\)))) # (!count1(25) & ((count1(23) & (!\Add4~45\)) # (!count1(23) & ((\Add4~45\) # (GND)))))
-- \Add4~47\ = CARRY((count1(25) & (!count1(23) & !\Add4~45\)) # (!count1(25) & ((!\Add4~45\) # (!count1(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(25),
	datab => count1(23),
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: LCCOMB_X56_Y27_N20
\Add4~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = ((count1(26) $ (count1(24) $ (!\Add4~47\)))) # (GND)
-- \Add4~49\ = CARRY((count1(26) & ((count1(24)) # (!\Add4~47\))) # (!count1(26) & (count1(24) & !\Add4~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(26),
	datab => count1(24),
	datad => VCC,
	cin => \Add4~47\,
	combout => \Add4~48_combout\,
	cout => \Add4~49\);

-- Location: LCCOMB_X56_Y27_N22
\Add4~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = (count1(27) & ((count1(25) & (\Add4~49\ & VCC)) # (!count1(25) & (!\Add4~49\)))) # (!count1(27) & ((count1(25) & (!\Add4~49\)) # (!count1(25) & ((\Add4~49\) # (GND)))))
-- \Add4~51\ = CARRY((count1(27) & (!count1(25) & !\Add4~49\)) # (!count1(27) & ((!\Add4~49\) # (!count1(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(27),
	datab => count1(25),
	datad => VCC,
	cin => \Add4~49\,
	combout => \Add4~50_combout\,
	cout => \Add4~51\);

-- Location: LCCOMB_X56_Y27_N24
\Add4~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~52_combout\ = ((count1(26) $ (count1(28) $ (!\Add4~51\)))) # (GND)
-- \Add4~53\ = CARRY((count1(26) & ((count1(28)) # (!\Add4~51\))) # (!count1(26) & (count1(28) & !\Add4~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(26),
	datab => count1(28),
	datad => VCC,
	cin => \Add4~51\,
	combout => \Add4~52_combout\,
	cout => \Add4~53\);

-- Location: LCCOMB_X56_Y27_N26
\Add4~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~54_combout\ = (count1(27) & ((count1(29) & (\Add4~53\ & VCC)) # (!count1(29) & (!\Add4~53\)))) # (!count1(27) & ((count1(29) & (!\Add4~53\)) # (!count1(29) & ((\Add4~53\) # (GND)))))
-- \Add4~55\ = CARRY((count1(27) & (!count1(29) & !\Add4~53\)) # (!count1(27) & ((!\Add4~53\) # (!count1(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(27),
	datab => count1(29),
	datad => VCC,
	cin => \Add4~53\,
	combout => \Add4~54_combout\,
	cout => \Add4~55\);

-- Location: LCCOMB_X56_Y27_N28
\Add4~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~56_combout\ = count1(30) $ (\Add4~55\ $ (!count1(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(30),
	datad => count1(28),
	cin => \Add4~55\,
	combout => \Add4~56_combout\);

-- Location: LCCOMB_X55_Y28_N10
\count[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[5]~8_combout\ = ((count0(5) $ (\Add4~4_combout\ $ (!\count[4]~7\)))) # (GND)
-- \count[5]~9\ = CARRY((count0(5) & ((\Add4~4_combout\) # (!\count[4]~7\))) # (!count0(5) & (\Add4~4_combout\ & !\count[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(5),
	datab => \Add4~4_combout\,
	datad => VCC,
	cin => \count[4]~7\,
	combout => \count[5]~8_combout\,
	cout => \count[5]~9\);

-- Location: LCCOMB_X55_Y28_N12
\count[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[6]~10_combout\ = (count0(6) & ((\Add4~6_combout\ & (\count[5]~9\ & VCC)) # (!\Add4~6_combout\ & (!\count[5]~9\)))) # (!count0(6) & ((\Add4~6_combout\ & (!\count[5]~9\)) # (!\Add4~6_combout\ & ((\count[5]~9\) # (GND)))))
-- \count[6]~11\ = CARRY((count0(6) & (!\Add4~6_combout\ & !\count[5]~9\)) # (!count0(6) & ((!\count[5]~9\) # (!\Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(6),
	datab => \Add4~6_combout\,
	datad => VCC,
	cin => \count[5]~9\,
	combout => \count[6]~10_combout\,
	cout => \count[6]~11\);

-- Location: LCCOMB_X55_Y28_N14
\count[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[7]~12_combout\ = ((count0(7) $ (\Add4~8_combout\ $ (!\count[6]~11\)))) # (GND)
-- \count[7]~13\ = CARRY((count0(7) & ((\Add4~8_combout\) # (!\count[6]~11\))) # (!count0(7) & (\Add4~8_combout\ & !\count[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(7),
	datab => \Add4~8_combout\,
	datad => VCC,
	cin => \count[6]~11\,
	combout => \count[7]~12_combout\,
	cout => \count[7]~13\);

-- Location: LCCOMB_X55_Y28_N16
\count[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[8]~14_combout\ = (count0(8) & ((\Add4~10_combout\ & (\count[7]~13\ & VCC)) # (!\Add4~10_combout\ & (!\count[7]~13\)))) # (!count0(8) & ((\Add4~10_combout\ & (!\count[7]~13\)) # (!\Add4~10_combout\ & ((\count[7]~13\) # (GND)))))
-- \count[8]~15\ = CARRY((count0(8) & (!\Add4~10_combout\ & !\count[7]~13\)) # (!count0(8) & ((!\count[7]~13\) # (!\Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(8),
	datab => \Add4~10_combout\,
	datad => VCC,
	cin => \count[7]~13\,
	combout => \count[8]~14_combout\,
	cout => \count[8]~15\);

-- Location: LCCOMB_X55_Y28_N18
\count[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[9]~16_combout\ = ((count0(9) $ (\Add4~12_combout\ $ (!\count[8]~15\)))) # (GND)
-- \count[9]~17\ = CARRY((count0(9) & ((\Add4~12_combout\) # (!\count[8]~15\))) # (!count0(9) & (\Add4~12_combout\ & !\count[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(9),
	datab => \Add4~12_combout\,
	datad => VCC,
	cin => \count[8]~15\,
	combout => \count[9]~16_combout\,
	cout => \count[9]~17\);

-- Location: LCCOMB_X55_Y28_N20
\count[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[10]~18_combout\ = (count0(10) & ((\Add4~14_combout\ & (\count[9]~17\ & VCC)) # (!\Add4~14_combout\ & (!\count[9]~17\)))) # (!count0(10) & ((\Add4~14_combout\ & (!\count[9]~17\)) # (!\Add4~14_combout\ & ((\count[9]~17\) # (GND)))))
-- \count[10]~19\ = CARRY((count0(10) & (!\Add4~14_combout\ & !\count[9]~17\)) # (!count0(10) & ((!\count[9]~17\) # (!\Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(10),
	datab => \Add4~14_combout\,
	datad => VCC,
	cin => \count[9]~17\,
	combout => \count[10]~18_combout\,
	cout => \count[10]~19\);

-- Location: LCCOMB_X55_Y28_N22
\count[11]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[11]~20_combout\ = ((\Add4~16_combout\ $ (count0(11) $ (!\count[10]~19\)))) # (GND)
-- \count[11]~21\ = CARRY((\Add4~16_combout\ & ((count0(11)) # (!\count[10]~19\))) # (!\Add4~16_combout\ & (count0(11) & !\count[10]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~16_combout\,
	datab => count0(11),
	datad => VCC,
	cin => \count[10]~19\,
	combout => \count[11]~20_combout\,
	cout => \count[11]~21\);

-- Location: LCCOMB_X55_Y28_N24
\count[12]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[12]~22_combout\ = (count0(12) & ((\Add4~18_combout\ & (\count[11]~21\ & VCC)) # (!\Add4~18_combout\ & (!\count[11]~21\)))) # (!count0(12) & ((\Add4~18_combout\ & (!\count[11]~21\)) # (!\Add4~18_combout\ & ((\count[11]~21\) # (GND)))))
-- \count[12]~23\ = CARRY((count0(12) & (!\Add4~18_combout\ & !\count[11]~21\)) # (!count0(12) & ((!\count[11]~21\) # (!\Add4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(12),
	datab => \Add4~18_combout\,
	datad => VCC,
	cin => \count[11]~21\,
	combout => \count[12]~22_combout\,
	cout => \count[12]~23\);

-- Location: LCCOMB_X55_Y28_N26
\count[13]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[13]~24_combout\ = ((count0(13) $ (\Add4~20_combout\ $ (!\count[12]~23\)))) # (GND)
-- \count[13]~25\ = CARRY((count0(13) & ((\Add4~20_combout\) # (!\count[12]~23\))) # (!count0(13) & (\Add4~20_combout\ & !\count[12]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(13),
	datab => \Add4~20_combout\,
	datad => VCC,
	cin => \count[12]~23\,
	combout => \count[13]~24_combout\,
	cout => \count[13]~25\);

-- Location: LCCOMB_X55_Y28_N28
\count[14]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[14]~26_combout\ = (count0(14) & ((\Add4~22_combout\ & (\count[13]~25\ & VCC)) # (!\Add4~22_combout\ & (!\count[13]~25\)))) # (!count0(14) & ((\Add4~22_combout\ & (!\count[13]~25\)) # (!\Add4~22_combout\ & ((\count[13]~25\) # (GND)))))
-- \count[14]~27\ = CARRY((count0(14) & (!\Add4~22_combout\ & !\count[13]~25\)) # (!count0(14) & ((!\count[13]~25\) # (!\Add4~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(14),
	datab => \Add4~22_combout\,
	datad => VCC,
	cin => \count[13]~25\,
	combout => \count[14]~26_combout\,
	cout => \count[14]~27\);

-- Location: LCCOMB_X55_Y28_N30
\count[15]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[15]~28_combout\ = ((count0(15) $ (\Add4~24_combout\ $ (!\count[14]~27\)))) # (GND)
-- \count[15]~29\ = CARRY((count0(15) & ((\Add4~24_combout\) # (!\count[14]~27\))) # (!count0(15) & (\Add4~24_combout\ & !\count[14]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(15),
	datab => \Add4~24_combout\,
	datad => VCC,
	cin => \count[14]~27\,
	combout => \count[15]~28_combout\,
	cout => \count[15]~29\);

-- Location: LCCOMB_X55_Y27_N0
\count[16]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[16]~30_combout\ = (count0(16) & ((\Add4~26_combout\ & (\count[15]~29\ & VCC)) # (!\Add4~26_combout\ & (!\count[15]~29\)))) # (!count0(16) & ((\Add4~26_combout\ & (!\count[15]~29\)) # (!\Add4~26_combout\ & ((\count[15]~29\) # (GND)))))
-- \count[16]~31\ = CARRY((count0(16) & (!\Add4~26_combout\ & !\count[15]~29\)) # (!count0(16) & ((!\count[15]~29\) # (!\Add4~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(16),
	datab => \Add4~26_combout\,
	datad => VCC,
	cin => \count[15]~29\,
	combout => \count[16]~30_combout\,
	cout => \count[16]~31\);

-- Location: LCCOMB_X55_Y27_N2
\count[17]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[17]~32_combout\ = ((count0(17) $ (\Add4~28_combout\ $ (!\count[16]~31\)))) # (GND)
-- \count[17]~33\ = CARRY((count0(17) & ((\Add4~28_combout\) # (!\count[16]~31\))) # (!count0(17) & (\Add4~28_combout\ & !\count[16]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(17),
	datab => \Add4~28_combout\,
	datad => VCC,
	cin => \count[16]~31\,
	combout => \count[17]~32_combout\,
	cout => \count[17]~33\);

-- Location: LCCOMB_X55_Y27_N4
\count[18]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[18]~34_combout\ = (\Add4~30_combout\ & ((count0(18) & (\count[17]~33\ & VCC)) # (!count0(18) & (!\count[17]~33\)))) # (!\Add4~30_combout\ & ((count0(18) & (!\count[17]~33\)) # (!count0(18) & ((\count[17]~33\) # (GND)))))
-- \count[18]~35\ = CARRY((\Add4~30_combout\ & (!count0(18) & !\count[17]~33\)) # (!\Add4~30_combout\ & ((!\count[17]~33\) # (!count0(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~30_combout\,
	datab => count0(18),
	datad => VCC,
	cin => \count[17]~33\,
	combout => \count[18]~34_combout\,
	cout => \count[18]~35\);

-- Location: LCCOMB_X55_Y27_N6
\count[19]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[19]~36_combout\ = ((\Add4~32_combout\ $ (count0(19) $ (!\count[18]~35\)))) # (GND)
-- \count[19]~37\ = CARRY((\Add4~32_combout\ & ((count0(19)) # (!\count[18]~35\))) # (!\Add4~32_combout\ & (count0(19) & !\count[18]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~32_combout\,
	datab => count0(19),
	datad => VCC,
	cin => \count[18]~35\,
	combout => \count[19]~36_combout\,
	cout => \count[19]~37\);

-- Location: LCCOMB_X55_Y27_N8
\count[20]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[20]~38_combout\ = (\Add4~34_combout\ & ((count0(20) & (\count[19]~37\ & VCC)) # (!count0(20) & (!\count[19]~37\)))) # (!\Add4~34_combout\ & ((count0(20) & (!\count[19]~37\)) # (!count0(20) & ((\count[19]~37\) # (GND)))))
-- \count[20]~39\ = CARRY((\Add4~34_combout\ & (!count0(20) & !\count[19]~37\)) # (!\Add4~34_combout\ & ((!\count[19]~37\) # (!count0(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~34_combout\,
	datab => count0(20),
	datad => VCC,
	cin => \count[19]~37\,
	combout => \count[20]~38_combout\,
	cout => \count[20]~39\);

-- Location: LCCOMB_X55_Y27_N10
\count[21]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[21]~40_combout\ = ((count0(21) $ (\Add4~36_combout\ $ (!\count[20]~39\)))) # (GND)
-- \count[21]~41\ = CARRY((count0(21) & ((\Add4~36_combout\) # (!\count[20]~39\))) # (!count0(21) & (\Add4~36_combout\ & !\count[20]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(21),
	datab => \Add4~36_combout\,
	datad => VCC,
	cin => \count[20]~39\,
	combout => \count[21]~40_combout\,
	cout => \count[21]~41\);

-- Location: LCCOMB_X55_Y27_N12
\count[22]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[22]~42_combout\ = (count0(22) & ((\Add4~38_combout\ & (\count[21]~41\ & VCC)) # (!\Add4~38_combout\ & (!\count[21]~41\)))) # (!count0(22) & ((\Add4~38_combout\ & (!\count[21]~41\)) # (!\Add4~38_combout\ & ((\count[21]~41\) # (GND)))))
-- \count[22]~43\ = CARRY((count0(22) & (!\Add4~38_combout\ & !\count[21]~41\)) # (!count0(22) & ((!\count[21]~41\) # (!\Add4~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(22),
	datab => \Add4~38_combout\,
	datad => VCC,
	cin => \count[21]~41\,
	combout => \count[22]~42_combout\,
	cout => \count[22]~43\);

-- Location: LCCOMB_X55_Y27_N14
\count[23]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[23]~44_combout\ = ((count0(23) $ (\Add4~40_combout\ $ (!\count[22]~43\)))) # (GND)
-- \count[23]~45\ = CARRY((count0(23) & ((\Add4~40_combout\) # (!\count[22]~43\))) # (!count0(23) & (\Add4~40_combout\ & !\count[22]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(23),
	datab => \Add4~40_combout\,
	datad => VCC,
	cin => \count[22]~43\,
	combout => \count[23]~44_combout\,
	cout => \count[23]~45\);

-- Location: LCCOMB_X55_Y27_N16
\count[24]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[24]~46_combout\ = (count0(24) & ((\Add4~42_combout\ & (\count[23]~45\ & VCC)) # (!\Add4~42_combout\ & (!\count[23]~45\)))) # (!count0(24) & ((\Add4~42_combout\ & (!\count[23]~45\)) # (!\Add4~42_combout\ & ((\count[23]~45\) # (GND)))))
-- \count[24]~47\ = CARRY((count0(24) & (!\Add4~42_combout\ & !\count[23]~45\)) # (!count0(24) & ((!\count[23]~45\) # (!\Add4~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(24),
	datab => \Add4~42_combout\,
	datad => VCC,
	cin => \count[23]~45\,
	combout => \count[24]~46_combout\,
	cout => \count[24]~47\);

-- Location: LCCOMB_X55_Y27_N18
\count[25]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[25]~48_combout\ = ((count0(25) $ (\Add4~44_combout\ $ (!\count[24]~47\)))) # (GND)
-- \count[25]~49\ = CARRY((count0(25) & ((\Add4~44_combout\) # (!\count[24]~47\))) # (!count0(25) & (\Add4~44_combout\ & !\count[24]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(25),
	datab => \Add4~44_combout\,
	datad => VCC,
	cin => \count[24]~47\,
	combout => \count[25]~48_combout\,
	cout => \count[25]~49\);

-- Location: LCCOMB_X55_Y27_N20
\count[26]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[26]~50_combout\ = (count0(26) & ((\Add4~46_combout\ & (\count[25]~49\ & VCC)) # (!\Add4~46_combout\ & (!\count[25]~49\)))) # (!count0(26) & ((\Add4~46_combout\ & (!\count[25]~49\)) # (!\Add4~46_combout\ & ((\count[25]~49\) # (GND)))))
-- \count[26]~51\ = CARRY((count0(26) & (!\Add4~46_combout\ & !\count[25]~49\)) # (!count0(26) & ((!\count[25]~49\) # (!\Add4~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(26),
	datab => \Add4~46_combout\,
	datad => VCC,
	cin => \count[25]~49\,
	combout => \count[26]~50_combout\,
	cout => \count[26]~51\);

-- Location: LCCOMB_X55_Y27_N22
\count[27]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[27]~52_combout\ = ((\Add4~48_combout\ $ (count0(27) $ (!\count[26]~51\)))) # (GND)
-- \count[27]~53\ = CARRY((\Add4~48_combout\ & ((count0(27)) # (!\count[26]~51\))) # (!\Add4~48_combout\ & (count0(27) & !\count[26]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~48_combout\,
	datab => count0(27),
	datad => VCC,
	cin => \count[26]~51\,
	combout => \count[27]~52_combout\,
	cout => \count[27]~53\);

-- Location: LCCOMB_X55_Y27_N24
\count[28]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[28]~54_combout\ = (count0(28) & ((\Add4~50_combout\ & (\count[27]~53\ & VCC)) # (!\Add4~50_combout\ & (!\count[27]~53\)))) # (!count0(28) & ((\Add4~50_combout\ & (!\count[27]~53\)) # (!\Add4~50_combout\ & ((\count[27]~53\) # (GND)))))
-- \count[28]~55\ = CARRY((count0(28) & (!\Add4~50_combout\ & !\count[27]~53\)) # (!count0(28) & ((!\count[27]~53\) # (!\Add4~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(28),
	datab => \Add4~50_combout\,
	datad => VCC,
	cin => \count[27]~53\,
	combout => \count[28]~54_combout\,
	cout => \count[28]~55\);

-- Location: LCCOMB_X55_Y27_N26
\count[29]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[29]~56_combout\ = ((count0(29) $ (\Add4~52_combout\ $ (!\count[28]~55\)))) # (GND)
-- \count[29]~57\ = CARRY((count0(29) & ((\Add4~52_combout\) # (!\count[28]~55\))) # (!count0(29) & (\Add4~52_combout\ & !\count[28]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(29),
	datab => \Add4~52_combout\,
	datad => VCC,
	cin => \count[28]~55\,
	combout => \count[29]~56_combout\,
	cout => \count[29]~57\);

-- Location: LCCOMB_X55_Y27_N28
\count[30]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[30]~58_combout\ = (count0(30) & ((\Add4~54_combout\ & (\count[29]~57\ & VCC)) # (!\Add4~54_combout\ & (!\count[29]~57\)))) # (!count0(30) & ((\Add4~54_combout\ & (!\count[29]~57\)) # (!\Add4~54_combout\ & ((\count[29]~57\) # (GND)))))
-- \count[30]~59\ = CARRY((count0(30) & (!\Add4~54_combout\ & !\count[29]~57\)) # (!count0(30) & ((!\count[29]~57\) # (!\Add4~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(30),
	datab => \Add4~54_combout\,
	datad => VCC,
	cin => \count[29]~57\,
	combout => \count[30]~58_combout\,
	cout => \count[30]~59\);

-- Location: LCCOMB_X55_Y27_N30
\count[31]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[31]~60_combout\ = \Add4~56_combout\ $ (\count[30]~59\ $ (!count0(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~56_combout\,
	datad => count0(31),
	cin => \count[30]~59\,
	combout => \count[31]~60_combout\);

-- Location: LCCOMB_X54_Y28_N28
\count0[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[0]~1_combout\ = (\LessThan4~0_combout\ & (!\LessThan3~1_combout\ & ((\LessThan0~8_combout\)))) # (!\LessThan4~0_combout\ & ((\LessThan5~0_combout\) # ((!\LessThan3~1_combout\ & \LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \LessThan3~1_combout\,
	datac => \LessThan5~0_combout\,
	datad => \LessThan0~8_combout\,
	combout => \count0[0]~1_combout\);

-- Location: LCCOMB_X54_Y28_N0
\count0[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[0]~2_combout\ = (\count[31]~60_combout\) # ((\count0[0]~1_combout\) # (!\infOut~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[31]~60_combout\,
	datac => \infOut~input_o\,
	datad => \count0[0]~1_combout\,
	combout => \count0[0]~2_combout\);

-- Location: LCCOMB_X54_Y29_N26
\Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (count0(29) & (\Add2~57\ & VCC)) # (!count0(29) & (!\Add2~57\))
-- \Add2~59\ = CARRY((!count0(29) & !\Add2~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X52_Y29_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (count0(29) & (!\Add0~57\)) # (!count0(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!count0(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X55_Y29_N6
\count0[29]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[29]~34_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~58_combout\))) # (!\count0[0]~2_combout\ & (\Add2~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count0[0]~2_combout\,
	datab => \Add2~58_combout\,
	datac => \count0[1]~0_combout\,
	datad => \Add0~58_combout\,
	combout => \count0[29]~34_combout\);

-- Location: LCCOMB_X55_Y29_N18
\count0[29]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(29) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[29]~34_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(29),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[29]~34_combout\,
	combout => count0(29));

-- Location: LCCOMB_X54_Y29_N28
\Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (count0(30) & ((GND) # (!\Add2~59\))) # (!count0(30) & (\Add2~59\ $ (GND)))
-- \Add2~61\ = CARRY((count0(30)) # (!\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X54_Y29_N30
\Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = count0(31) $ (!\Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count0(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X52_Y29_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (count0(30) & (\Add0~59\ $ (GND))) # (!count0(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((count0(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count0(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X52_Y29_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (count0(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count0(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X54_Y28_N2
\count0[31]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[31]~36_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~62_combout\))) # (!\count0[0]~2_combout\ & (\Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add0~62_combout\,
	datac => \count0[1]~0_combout\,
	datad => \count0[0]~2_combout\,
	combout => \count0[31]~36_combout\);

-- Location: LCCOMB_X54_Y28_N30
\count0[31]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(31) = (\count0[0]~5_combout\ & ((\count0[31]~36_combout\))) # (!\count0[0]~5_combout\ & (count0(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(31),
	datab => \count0[31]~36_combout\,
	datad => \count0[0]~5_combout\,
	combout => count0(31));

-- Location: LCCOMB_X54_Y30_N0
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = count0(0) $ (VCC)
-- \Add2~1\ = CARRY(count0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X56_Y30_N16
\LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (\Equal0~7_combout\ & (\Equal0~4_combout\ & (\Equal0~5_combout\ & !count0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => count0(3),
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X56_Y30_N14
\count0[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[0]~6_combout\ = (count0(31)) # ((\Add2~0_combout\) # ((\Equal0~10_combout\ & \LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(31),
	datab => \Add2~0_combout\,
	datac => \Equal0~10_combout\,
	datad => \LessThan4~1_combout\,
	combout => \count0[0]~6_combout\);

-- Location: LCCOMB_X56_Y30_N28
\count0[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[0]~7_combout\ = (\count0[0]~2_combout\ & (((\Add0~0_combout\ & \LessThan1~0_combout\)))) # (!\count0[0]~2_combout\ & (\count0[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count0[0]~6_combout\,
	datab => \Add0~0_combout\,
	datac => \LessThan1~0_combout\,
	datad => \count0[0]~2_combout\,
	combout => \count0[0]~7_combout\);

-- Location: LCCOMB_X56_Y30_N8
\count0[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(0) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[0]~7_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(0),
	datac => \count0[0]~7_combout\,
	datad => \count0[0]~5clkctrl_outclk\,
	combout => count0(0));

-- Location: LCCOMB_X55_Y30_N28
\count0[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[1]~3_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~2_combout\))) # (!\count0[0]~2_combout\ & (\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add0~2_combout\,
	datac => \count0[0]~2_combout\,
	datad => \count0[1]~0_combout\,
	combout => \count0[1]~3_combout\);

-- Location: LCCOMB_X55_Y30_N24
\count0[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(1) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[1]~3_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(1),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[1]~3_combout\,
	combout => count0(1));

-- Location: LCCOMB_X56_Y30_N4
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!count0(1) & (!count0(0) & !count0(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(1),
	datac => count0(0),
	datad => count0(2),
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X55_Y30_N10
\count0[3]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[3]~37_combout\ = (count0(31)) # ((\Add2~6_combout\) # ((\Equal0~10_combout\ & \LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => count0(31),
	datac => \Add2~6_combout\,
	datad => \LessThan4~1_combout\,
	combout => \count0[3]~37_combout\);

-- Location: LCCOMB_X56_Y30_N30
\count0[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[3]~38_combout\ = (\count0[0]~2_combout\ & (((\Add0~6_combout\ & \LessThan1~0_combout\)))) # (!\count0[0]~2_combout\ & (\count0[3]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count0[3]~37_combout\,
	datab => \Add0~6_combout\,
	datac => \LessThan1~0_combout\,
	datad => \count0[0]~2_combout\,
	combout => \count0[3]~38_combout\);

-- Location: LCCOMB_X56_Y30_N26
\count0[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(3) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & (\count0[3]~38_combout\)) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & ((count0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count0[3]~38_combout\,
	datac => count0(3),
	datad => \count0[0]~5clkctrl_outclk\,
	combout => count0(3));

-- Location: LCCOMB_X56_Y30_N10
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (count0(31)) # ((\Equal0~8_combout\ & ((\Equal0~10_combout\) # (!count0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(3),
	datab => count0(31),
	datac => \Equal0~10_combout\,
	datad => \Equal0~8_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X52_Y28_N12
\count1[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[0]~4_combout\ = (\LessThan2~0_combout\ & !\LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan2~0_combout\,
	datad => \LessThan1~0_combout\,
	combout => \count1[0]~4_combout\);

-- Location: LCCOMB_X52_Y28_N20
\count1[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[0]~1_combout\ = (\LessThan0~10_combout\ & (!\smo~input_o\ & \infIn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datac => \smo~input_o\,
	datad => \infIn~input_o\,
	combout => \count1[0]~1_combout\);

-- Location: LCCOMB_X52_Y28_N18
\count1[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[0]~5_combout\ = (\count1[0]~4_combout\ & ((\count1[0]~1_combout\) # ((!\smo~input_o\ & \count1[1]~2_combout\)))) # (!\count1[0]~4_combout\ & (!\smo~input_o\ & (\count1[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[0]~4_combout\,
	datab => \smo~input_o\,
	datac => \count1[1]~2_combout\,
	datad => \count1[0]~1_combout\,
	combout => \count1[0]~5_combout\);

-- Location: CLKCTRL_G9
\count1[0]~5clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \count1[0]~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \count1[0]~5clkctrl_outclk\);

-- Location: LCCOMB_X59_Y27_N26
\Add3~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (count1(29) & (\Add3~57\ & VCC)) # (!count1(29) & (!\Add3~57\))
-- \Add3~59\ = CARRY((!count1(29) & !\Add3~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(29),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: LCCOMB_X60_Y27_N26
\Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (count1(29) & (!\Add1~57\)) # (!count1(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!count1(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X54_Y27_N30
\count1[29]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[29]~35_combout\ = (\count1[1]~2_combout\ & (\Add3~58_combout\)) # (!\count1[1]~2_combout\ & ((\Add1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count1[1]~2_combout\,
	datab => \Add3~58_combout\,
	datad => \Add1~58_combout\,
	combout => \count1[29]~35_combout\);

-- Location: LCCOMB_X54_Y27_N24
\count1[29]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(29) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[29]~35_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(29),
	datac => \count1[0]~5clkctrl_outclk\,
	datad => \count1[29]~35_combout\,
	combout => count1(29));

-- Location: LCCOMB_X59_Y27_N28
\Add3~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = (count1(30) & ((GND) # (!\Add3~59\))) # (!count1(30) & (\Add3~59\ $ (GND)))
-- \Add3~61\ = CARRY((count1(30)) # (!\Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(30),
	datad => VCC,
	cin => \Add3~59\,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: LCCOMB_X60_Y27_N28
\Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (count1(30) & (\Add1~59\ $ (GND))) # (!count1(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((count1(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X58_Y27_N4
\count1[30]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[30]~36_combout\ = (\count1[1]~2_combout\ & (\Add3~60_combout\)) # (!\count1[1]~2_combout\ & ((\Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~60_combout\,
	datac => \Add1~60_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[30]~36_combout\);

-- Location: LCCOMB_X58_Y27_N10
\count1[30]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(30) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[30]~36_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(30),
	datac => \count1[30]~36_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(30));

-- Location: LCCOMB_X59_Y27_N30
\Add3~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = count1(31) $ (!\Add3~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(31),
	cin => \Add3~61\,
	combout => \Add3~62_combout\);

-- Location: LCCOMB_X60_Y27_N30
\Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Add1~61\ $ (count1(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count1(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X56_Y29_N10
\count1[31]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count1[31]~3_combout\ = (\count1[1]~2_combout\ & (\Add3~62_combout\)) # (!\count1[1]~2_combout\ & ((\Add1~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~62_combout\,
	datac => \Add1~62_combout\,
	datad => \count1[1]~2_combout\,
	combout => \count1[31]~3_combout\);

-- Location: LCCOMB_X56_Y29_N4
\count1[31]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count1(31) = (GLOBAL(\count1[0]~5clkctrl_outclk\) & ((\count1[31]~3_combout\))) # (!GLOBAL(\count1[0]~5clkctrl_outclk\) & (count1(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(31),
	datac => \count1[31]~3_combout\,
	datad => \count1[0]~5clkctrl_outclk\,
	combout => count1(31));

-- Location: LCCOMB_X52_Y28_N22
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (count1(31)) # ((\Equal10~9_combout\ & ((!count1(0)) # (!count1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(31),
	datab => \Equal10~9_combout\,
	datac => count1(1),
	datad => count1(0),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X52_Y28_N4
\count0[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[0]~4_combout\ = (!\smo~input_o\ & (\count1[1]~0_combout\ & ((\LessThan4~0_combout\) # (!\LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \LessThan4~0_combout\,
	datac => \smo~input_o\,
	datad => \count1[1]~0_combout\,
	combout => \count0[0]~4_combout\);

-- Location: LCCOMB_X52_Y28_N24
\count0[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[0]~5_combout\ = (\count0[0]~4_combout\) # ((\count1[0]~1_combout\ & ((\LessThan2~0_combout\) # (\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \LessThan1~0_combout\,
	datac => \count0[0]~4_combout\,
	datad => \count1[0]~1_combout\,
	combout => \count0[0]~5_combout\);

-- Location: CLKCTRL_G5
\count0[0]~5clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \count0[0]~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \count0[0]~5clkctrl_outclk\);

-- Location: LCCOMB_X55_Y29_N0
\count0[30]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count0[30]~35_combout\ = (\count0[1]~0_combout\ & ((\count0[0]~2_combout\ & ((\Add0~60_combout\))) # (!\count0[0]~2_combout\ & (\Add2~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count0[0]~2_combout\,
	datab => \Add2~60_combout\,
	datac => \count0[1]~0_combout\,
	datad => \Add0~60_combout\,
	combout => \count0[30]~35_combout\);

-- Location: LCCOMB_X55_Y29_N28
\count0[30]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- count0(30) = (GLOBAL(\count0[0]~5clkctrl_outclk\) & ((\count0[30]~35_combout\))) # (!GLOBAL(\count0[0]~5clkctrl_outclk\) & (count0(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count0(30),
	datac => \count0[0]~5clkctrl_outclk\,
	datad => \count0[30]~35_combout\,
	combout => count0(30));

-- Location: LCCOMB_X54_Y28_N26
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\count[6]~10_combout\ & (!\count[5]~8_combout\ & (!\count[7]~12_combout\ & !\count[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[6]~10_combout\,
	datab => \count[5]~8_combout\,
	datac => \count[7]~12_combout\,
	datad => \count[8]~14_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X55_Y28_N0
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\count[12]~22_combout\ & (!\count[9]~16_combout\ & (!\count[11]~20_combout\ & !\count[10]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[12]~22_combout\,
	datab => \count[9]~16_combout\,
	datac => \count[11]~20_combout\,
	datad => \count[10]~18_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X54_Y28_N22
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!\count[15]~28_combout\ & (!\count[14]~26_combout\ & (!\count[13]~24_combout\ & !\count[16]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[15]~28_combout\,
	datab => \count[14]~26_combout\,
	datac => \count[13]~24_combout\,
	datad => \count[16]~30_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X54_Y28_N18
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!\count[17]~32_combout\ & (!\count[19]~36_combout\ & (!\count[20]~38_combout\ & !\count[18]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~32_combout\,
	datab => \count[19]~36_combout\,
	datac => \count[20]~38_combout\,
	datad => \count[18]~34_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X54_Y28_N6
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~0_combout\ & (\LessThan0~1_combout\ & (\LessThan0~2_combout\ & \LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X54_Y28_N16
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!\count[22]~42_combout\ & (!\count[21]~40_combout\ & (!\count[23]~44_combout\ & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[22]~42_combout\,
	datab => \count[21]~40_combout\,
	datac => \count[23]~44_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X54_Y28_N10
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!\count[24]~46_combout\ & (!\count[25]~48_combout\ & (!\count[26]~50_combout\ & \LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[24]~46_combout\,
	datab => \count[25]~48_combout\,
	datac => \count[26]~50_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X54_Y28_N12
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!\count[27]~52_combout\ & \LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[27]~52_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X54_Y28_N24
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!\count[30]~58_combout\ & (!\count[28]~54_combout\ & (!\count[29]~56_combout\ & \LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[30]~58_combout\,
	datab => \count[28]~54_combout\,
	datac => \count[29]~56_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X54_Y27_N12
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (((!\count[4]~6_combout\) # (!\count[1]~0_combout\)) # (!\count[2]~2_combout\)) # (!\count[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[3]~4_combout\,
	datab => \count[2]~2_combout\,
	datac => \count[1]~0_combout\,
	datad => \count[4]~6_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X54_Y27_N14
\LessThan0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (\count[31]~60_combout\) # ((\LessThan0~8_combout\ & \LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datac => \count[31]~60_combout\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X52_Y28_N8
\comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\smo~input_o\) # ((!\LessThan0~10_combout\) # (!\pirIn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \smo~input_o\,
	datac => \pirIn~input_o\,
	datad => \LessThan0~10_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X51_Y28_N16
\redIn$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \redIn$latch~combout\ = (\comb~0_combout\ & ((\redIn$latch~combout\) # (!\comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~1_combout\,
	datab => \comb~0_combout\,
	datad => \redIn$latch~combout\,
	combout => \redIn$latch~combout\);

-- Location: LCCOMB_X54_Y27_N8
\redOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \redOut~0_combout\ = (!\count[31]~60_combout\ & ((\LessThan3~1_combout\) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datac => \count[31]~60_combout\,
	datad => \LessThan3~1_combout\,
	combout => \redOut~0_combout\);

-- Location: IOIBUF_X40_Y0_N15
\pirOut~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pirOut,
	o => \pirOut~input_o\);

-- Location: LCCOMB_X54_Y27_N22
\comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\smo~input_o\ & ((!\pirOut~input_o\) # (!\redOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \smo~input_o\,
	datac => \redOut~0_combout\,
	datad => \pirOut~input_o\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X54_Y27_N4
\redOut~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \redOut~1_combout\ = (\smo~input_o\) # ((\infOut~input_o\) # (\pirOut~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \smo~input_o\,
	datac => \infOut~input_o\,
	datad => \pirOut~input_o\,
	combout => \redOut~1_combout\);

-- Location: LCCOMB_X54_Y27_N20
\redOut$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \redOut$latch~combout\ = (\comb~2_combout\ & ((\redOut$latch~combout\) # (!\redOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~2_combout\,
	datac => \redOut~1_combout\,
	datad => \redOut$latch~combout\,
	combout => \redOut$latch~combout\);

-- Location: LCCOMB_X51_Y28_N6
\greenIn$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \greenIn$latch~combout\ = (\comb~1_combout\ & ((\greenIn$latch~combout\) # (!\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~1_combout\,
	datab => \comb~0_combout\,
	datad => \greenIn$latch~combout\,
	combout => \greenIn$latch~combout\);

-- Location: LCCOMB_X54_Y27_N16
\redOut~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \redOut~2_combout\ = (\smo~input_o\) # ((\pirOut~input_o\ & (\redOut~0_combout\)) # (!\pirOut~input_o\ & ((!\infOut~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \smo~input_o\,
	datab => \redOut~0_combout\,
	datac => \infOut~input_o\,
	datad => \pirOut~input_o\,
	combout => \redOut~2_combout\);

-- Location: LCCOMB_X54_Y27_N10
\greenOut$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \greenOut$latch~combout\ = (\redOut~1_combout\ & ((\redOut~2_combout\) # (\greenOut$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \redOut~2_combout\,
	datac => \redOut~1_combout\,
	datad => \greenOut$latch~combout\,
	combout => \greenOut$latch~combout\);

-- Location: IOIBUF_X34_Y0_N29
\clk50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50,
	o => \clk50~input_o\);

-- Location: CLKCTRL_G19
\clk50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50~inputclkctrl_outclk\);

-- Location: LCCOMB_X51_Y40_N8
\x|counterPulse|count[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[0]~21_combout\ = \x|counterPulse|count\(0) $ (\x|en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x|counterPulse|count\(0),
	datad => \x|en~combout\,
	combout => \x|counterPulse|count[0]~21_combout\);

-- Location: LCCOMB_X50_Y36_N4
\x|comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|comb~7_combout\ = (\x|comb~6_combout\ & !\x|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|comb~6_combout\,
	datac => \x|Equal0~6_combout\,
	combout => \x|comb~7_combout\);

-- Location: LCCOMB_X50_Y36_N2
\x|reset1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|reset1~combout\ = (!\x|comb~7_combout\ & ((\x|Equal0~6_combout\) # (\x|reset1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|Equal0~6_combout\,
	datac => \x|comb~7_combout\,
	datad => \x|reset1~combout\,
	combout => \x|reset1~combout\);

-- Location: CLKCTRL_G14
\x|reset1~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \x|reset1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \x|reset1~clkctrl_outclk\);

-- Location: FF_X51_Y40_N9
\x|counterPulse|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[0]~21_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(0));

-- Location: LCCOMB_X51_Y40_N12
\x|counterPulse|count[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[1]~22_combout\ = (\x|counterPulse|count\(1) & (\x|counterPulse|count\(0) $ (VCC))) # (!\x|counterPulse|count\(1) & (\x|counterPulse|count\(0) & VCC))
-- \x|counterPulse|count[1]~23\ = CARRY((\x|counterPulse|count\(1) & \x|counterPulse|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterPulse|count\(1),
	datab => \x|counterPulse|count\(0),
	datad => VCC,
	combout => \x|counterPulse|count[1]~22_combout\,
	cout => \x|counterPulse|count[1]~23\);

-- Location: FF_X51_Y40_N13
\x|counterPulse|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[1]~22_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(1));

-- Location: LCCOMB_X51_Y40_N14
\x|counterPulse|count[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[2]~24_combout\ = (\x|counterPulse|count\(2) & (!\x|counterPulse|count[1]~23\)) # (!\x|counterPulse|count\(2) & ((\x|counterPulse|count[1]~23\) # (GND)))
-- \x|counterPulse|count[2]~25\ = CARRY((!\x|counterPulse|count[1]~23\) # (!\x|counterPulse|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterPulse|count\(2),
	datad => VCC,
	cin => \x|counterPulse|count[1]~23\,
	combout => \x|counterPulse|count[2]~24_combout\,
	cout => \x|counterPulse|count[2]~25\);

-- Location: FF_X51_Y40_N15
\x|counterPulse|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[2]~24_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(2));

-- Location: LCCOMB_X51_Y40_N16
\x|counterPulse|count[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[3]~26_combout\ = (\x|counterPulse|count\(3) & (\x|counterPulse|count[2]~25\ $ (GND))) # (!\x|counterPulse|count\(3) & (!\x|counterPulse|count[2]~25\ & VCC))
-- \x|counterPulse|count[3]~27\ = CARRY((\x|counterPulse|count\(3) & !\x|counterPulse|count[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterPulse|count\(3),
	datad => VCC,
	cin => \x|counterPulse|count[2]~25\,
	combout => \x|counterPulse|count[3]~26_combout\,
	cout => \x|counterPulse|count[3]~27\);

-- Location: FF_X51_Y40_N17
\x|counterPulse|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[3]~26_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(3));

-- Location: LCCOMB_X51_Y40_N18
\x|counterPulse|count[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[4]~28_combout\ = (\x|counterPulse|count\(4) & (!\x|counterPulse|count[3]~27\)) # (!\x|counterPulse|count\(4) & ((\x|counterPulse|count[3]~27\) # (GND)))
-- \x|counterPulse|count[4]~29\ = CARRY((!\x|counterPulse|count[3]~27\) # (!\x|counterPulse|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterPulse|count\(4),
	datad => VCC,
	cin => \x|counterPulse|count[3]~27\,
	combout => \x|counterPulse|count[4]~28_combout\,
	cout => \x|counterPulse|count[4]~29\);

-- Location: FF_X51_Y40_N19
\x|counterPulse|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[4]~28_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(4));

-- Location: LCCOMB_X51_Y40_N20
\x|counterPulse|count[5]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[5]~30_combout\ = (\x|counterPulse|count\(5) & (\x|counterPulse|count[4]~29\ $ (GND))) # (!\x|counterPulse|count\(5) & (!\x|counterPulse|count[4]~29\ & VCC))
-- \x|counterPulse|count[5]~31\ = CARRY((\x|counterPulse|count\(5) & !\x|counterPulse|count[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterPulse|count\(5),
	datad => VCC,
	cin => \x|counterPulse|count[4]~29\,
	combout => \x|counterPulse|count[5]~30_combout\,
	cout => \x|counterPulse|count[5]~31\);

-- Location: FF_X51_Y40_N21
\x|counterPulse|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[5]~30_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(5));

-- Location: LCCOMB_X51_Y40_N22
\x|counterPulse|count[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[6]~32_combout\ = (\x|counterPulse|count\(6) & (!\x|counterPulse|count[5]~31\)) # (!\x|counterPulse|count\(6) & ((\x|counterPulse|count[5]~31\) # (GND)))
-- \x|counterPulse|count[6]~33\ = CARRY((!\x|counterPulse|count[5]~31\) # (!\x|counterPulse|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterPulse|count\(6),
	datad => VCC,
	cin => \x|counterPulse|count[5]~31\,
	combout => \x|counterPulse|count[6]~32_combout\,
	cout => \x|counterPulse|count[6]~33\);

-- Location: FF_X51_Y40_N23
\x|counterPulse|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[6]~32_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(6));

-- Location: LCCOMB_X51_Y40_N24
\x|counterPulse|count[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[7]~34_combout\ = (\x|counterPulse|count\(7) & (\x|counterPulse|count[6]~33\ $ (GND))) # (!\x|counterPulse|count\(7) & (!\x|counterPulse|count[6]~33\ & VCC))
-- \x|counterPulse|count[7]~35\ = CARRY((\x|counterPulse|count\(7) & !\x|counterPulse|count[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterPulse|count\(7),
	datad => VCC,
	cin => \x|counterPulse|count[6]~33\,
	combout => \x|counterPulse|count[7]~34_combout\,
	cout => \x|counterPulse|count[7]~35\);

-- Location: FF_X51_Y40_N25
\x|counterPulse|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[7]~34_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(7));

-- Location: LCCOMB_X51_Y40_N26
\x|counterPulse|count[8]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[8]~36_combout\ = (\x|counterPulse|count\(8) & (!\x|counterPulse|count[7]~35\)) # (!\x|counterPulse|count\(8) & ((\x|counterPulse|count[7]~35\) # (GND)))
-- \x|counterPulse|count[8]~37\ = CARRY((!\x|counterPulse|count[7]~35\) # (!\x|counterPulse|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterPulse|count\(8),
	datad => VCC,
	cin => \x|counterPulse|count[7]~35\,
	combout => \x|counterPulse|count[8]~36_combout\,
	cout => \x|counterPulse|count[8]~37\);

-- Location: FF_X51_Y40_N27
\x|counterPulse|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[8]~36_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(8));

-- Location: LCCOMB_X51_Y40_N28
\x|counterPulse|count[9]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[9]~38_combout\ = (\x|counterPulse|count\(9) & (\x|counterPulse|count[8]~37\ $ (GND))) # (!\x|counterPulse|count\(9) & (!\x|counterPulse|count[8]~37\ & VCC))
-- \x|counterPulse|count[9]~39\ = CARRY((\x|counterPulse|count\(9) & !\x|counterPulse|count[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterPulse|count\(9),
	datad => VCC,
	cin => \x|counterPulse|count[8]~37\,
	combout => \x|counterPulse|count[9]~38_combout\,
	cout => \x|counterPulse|count[9]~39\);

-- Location: FF_X51_Y40_N29
\x|counterPulse|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[9]~38_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(9));

-- Location: LCCOMB_X51_Y40_N30
\x|counterPulse|count[10]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[10]~40_combout\ = (\x|counterPulse|count\(10) & (!\x|counterPulse|count[9]~39\)) # (!\x|counterPulse|count\(10) & ((\x|counterPulse|count[9]~39\) # (GND)))
-- \x|counterPulse|count[10]~41\ = CARRY((!\x|counterPulse|count[9]~39\) # (!\x|counterPulse|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterPulse|count\(10),
	datad => VCC,
	cin => \x|counterPulse|count[9]~39\,
	combout => \x|counterPulse|count[10]~40_combout\,
	cout => \x|counterPulse|count[10]~41\);

-- Location: FF_X51_Y40_N31
\x|counterPulse|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[10]~40_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(10));

-- Location: LCCOMB_X51_Y39_N0
\x|counterPulse|count[11]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[11]~42_combout\ = (\x|counterPulse|count\(11) & (\x|counterPulse|count[10]~41\ $ (GND))) # (!\x|counterPulse|count\(11) & (!\x|counterPulse|count[10]~41\ & VCC))
-- \x|counterPulse|count[11]~43\ = CARRY((\x|counterPulse|count\(11) & !\x|counterPulse|count[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterPulse|count\(11),
	datad => VCC,
	cin => \x|counterPulse|count[10]~41\,
	combout => \x|counterPulse|count[11]~42_combout\,
	cout => \x|counterPulse|count[11]~43\);

-- Location: FF_X51_Y39_N1
\x|counterPulse|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[11]~42_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(11));

-- Location: LCCOMB_X51_Y40_N10
\x|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|Equal0~2_combout\ = (!\x|counterPulse|count\(8) & (!\x|counterPulse|count\(9) & (!\x|counterPulse|count\(10) & !\x|counterPulse|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterPulse|count\(8),
	datab => \x|counterPulse|count\(9),
	datac => \x|counterPulse|count\(10),
	datad => \x|counterPulse|count\(11),
	combout => \x|Equal0~2_combout\);

-- Location: LCCOMB_X51_Y40_N0
\x|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|Equal0~1_combout\ = (!\x|counterPulse|count\(5) & (!\x|counterPulse|count\(4) & (!\x|counterPulse|count\(6) & !\x|counterPulse|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterPulse|count\(5),
	datab => \x|counterPulse|count\(4),
	datac => \x|counterPulse|count\(6),
	datad => \x|counterPulse|count\(7),
	combout => \x|Equal0~1_combout\);

-- Location: LCCOMB_X51_Y39_N2
\x|counterPulse|count[12]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[12]~44_combout\ = (\x|counterPulse|count\(12) & (!\x|counterPulse|count[11]~43\)) # (!\x|counterPulse|count\(12) & ((\x|counterPulse|count[11]~43\) # (GND)))
-- \x|counterPulse|count[12]~45\ = CARRY((!\x|counterPulse|count[11]~43\) # (!\x|counterPulse|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterPulse|count\(12),
	datad => VCC,
	cin => \x|counterPulse|count[11]~43\,
	combout => \x|counterPulse|count[12]~44_combout\,
	cout => \x|counterPulse|count[12]~45\);

-- Location: FF_X51_Y39_N3
\x|counterPulse|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[12]~44_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(12));

-- Location: LCCOMB_X51_Y39_N4
\x|counterPulse|count[13]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[13]~46_combout\ = (\x|counterPulse|count\(13) & (\x|counterPulse|count[12]~45\ $ (GND))) # (!\x|counterPulse|count\(13) & (!\x|counterPulse|count[12]~45\ & VCC))
-- \x|counterPulse|count[13]~47\ = CARRY((\x|counterPulse|count\(13) & !\x|counterPulse|count[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterPulse|count\(13),
	datad => VCC,
	cin => \x|counterPulse|count[12]~45\,
	combout => \x|counterPulse|count[13]~46_combout\,
	cout => \x|counterPulse|count[13]~47\);

-- Location: FF_X51_Y39_N5
\x|counterPulse|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[13]~46_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(13));

-- Location: LCCOMB_X51_Y39_N6
\x|counterPulse|count[14]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[14]~48_combout\ = (\x|counterPulse|count\(14) & (!\x|counterPulse|count[13]~47\)) # (!\x|counterPulse|count\(14) & ((\x|counterPulse|count[13]~47\) # (GND)))
-- \x|counterPulse|count[14]~49\ = CARRY((!\x|counterPulse|count[13]~47\) # (!\x|counterPulse|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterPulse|count\(14),
	datad => VCC,
	cin => \x|counterPulse|count[13]~47\,
	combout => \x|counterPulse|count[14]~48_combout\,
	cout => \x|counterPulse|count[14]~49\);

-- Location: FF_X51_Y39_N7
\x|counterPulse|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[14]~48_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(14));

-- Location: LCCOMB_X51_Y39_N8
\x|counterPulse|count[15]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[15]~50_combout\ = (\x|counterPulse|count\(15) & (\x|counterPulse|count[14]~49\ $ (GND))) # (!\x|counterPulse|count\(15) & (!\x|counterPulse|count[14]~49\ & VCC))
-- \x|counterPulse|count[15]~51\ = CARRY((\x|counterPulse|count\(15) & !\x|counterPulse|count[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterPulse|count\(15),
	datad => VCC,
	cin => \x|counterPulse|count[14]~49\,
	combout => \x|counterPulse|count[15]~50_combout\,
	cout => \x|counterPulse|count[15]~51\);

-- Location: FF_X51_Y39_N9
\x|counterPulse|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[15]~50_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(15));

-- Location: LCCOMB_X51_Y39_N26
\x|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|Equal0~3_combout\ = (!\x|counterPulse|count\(14) & (!\x|counterPulse|count\(15) & (!\x|counterPulse|count\(13) & !\x|counterPulse|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterPulse|count\(14),
	datab => \x|counterPulse|count\(15),
	datac => \x|counterPulse|count\(13),
	datad => \x|counterPulse|count\(12),
	combout => \x|Equal0~3_combout\);

-- Location: LCCOMB_X51_Y40_N2
\x|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|Equal0~0_combout\ = (!\x|counterPulse|count\(2) & (!\x|counterPulse|count\(3) & (\x|counterPulse|count\(1) & \x|counterPulse|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterPulse|count\(2),
	datab => \x|counterPulse|count\(3),
	datac => \x|counterPulse|count\(1),
	datad => \x|counterPulse|count\(0),
	combout => \x|Equal0~0_combout\);

-- Location: LCCOMB_X51_Y40_N4
\x|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|Equal0~4_combout\ = (\x|Equal0~2_combout\ & (\x|Equal0~1_combout\ & (\x|Equal0~3_combout\ & \x|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|Equal0~2_combout\,
	datab => \x|Equal0~1_combout\,
	datac => \x|Equal0~3_combout\,
	datad => \x|Equal0~0_combout\,
	combout => \x|Equal0~4_combout\);

-- Location: LCCOMB_X51_Y39_N10
\x|counterPulse|count[16]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[16]~52_combout\ = (\x|counterPulse|count\(16) & (!\x|counterPulse|count[15]~51\)) # (!\x|counterPulse|count\(16) & ((\x|counterPulse|count[15]~51\) # (GND)))
-- \x|counterPulse|count[16]~53\ = CARRY((!\x|counterPulse|count[15]~51\) # (!\x|counterPulse|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterPulse|count\(16),
	datad => VCC,
	cin => \x|counterPulse|count[15]~51\,
	combout => \x|counterPulse|count[16]~52_combout\,
	cout => \x|counterPulse|count[16]~53\);

-- Location: FF_X51_Y39_N11
\x|counterPulse|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[16]~52_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(16));

-- Location: LCCOMB_X51_Y39_N12
\x|counterPulse|count[17]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[17]~54_combout\ = (\x|counterPulse|count\(17) & (\x|counterPulse|count[16]~53\ $ (GND))) # (!\x|counterPulse|count\(17) & (!\x|counterPulse|count[16]~53\ & VCC))
-- \x|counterPulse|count[17]~55\ = CARRY((\x|counterPulse|count\(17) & !\x|counterPulse|count[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterPulse|count\(17),
	datad => VCC,
	cin => \x|counterPulse|count[16]~53\,
	combout => \x|counterPulse|count[17]~54_combout\,
	cout => \x|counterPulse|count[17]~55\);

-- Location: FF_X51_Y39_N13
\x|counterPulse|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[17]~54_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(17));

-- Location: LCCOMB_X51_Y39_N14
\x|counterPulse|count[18]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[18]~56_combout\ = (\x|counterPulse|count\(18) & (!\x|counterPulse|count[17]~55\)) # (!\x|counterPulse|count\(18) & ((\x|counterPulse|count[17]~55\) # (GND)))
-- \x|counterPulse|count[18]~57\ = CARRY((!\x|counterPulse|count[17]~55\) # (!\x|counterPulse|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterPulse|count\(18),
	datad => VCC,
	cin => \x|counterPulse|count[17]~55\,
	combout => \x|counterPulse|count[18]~56_combout\,
	cout => \x|counterPulse|count[18]~57\);

-- Location: FF_X51_Y39_N15
\x|counterPulse|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[18]~56_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(18));

-- Location: LCCOMB_X51_Y39_N16
\x|counterPulse|count[19]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[19]~58_combout\ = (\x|counterPulse|count\(19) & (\x|counterPulse|count[18]~57\ $ (GND))) # (!\x|counterPulse|count\(19) & (!\x|counterPulse|count[18]~57\ & VCC))
-- \x|counterPulse|count[19]~59\ = CARRY((\x|counterPulse|count\(19) & !\x|counterPulse|count[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterPulse|count\(19),
	datad => VCC,
	cin => \x|counterPulse|count[18]~57\,
	combout => \x|counterPulse|count[19]~58_combout\,
	cout => \x|counterPulse|count[19]~59\);

-- Location: FF_X51_Y39_N17
\x|counterPulse|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[19]~58_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(19));

-- Location: LCCOMB_X51_Y39_N18
\x|counterPulse|count[20]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[20]~60_combout\ = (\x|counterPulse|count\(20) & (!\x|counterPulse|count[19]~59\)) # (!\x|counterPulse|count\(20) & ((\x|counterPulse|count[19]~59\) # (GND)))
-- \x|counterPulse|count[20]~61\ = CARRY((!\x|counterPulse|count[19]~59\) # (!\x|counterPulse|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterPulse|count\(20),
	datad => VCC,
	cin => \x|counterPulse|count[19]~59\,
	combout => \x|counterPulse|count[20]~60_combout\,
	cout => \x|counterPulse|count[20]~61\);

-- Location: FF_X51_Y39_N19
\x|counterPulse|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[20]~60_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(20));

-- Location: LCCOMB_X51_Y39_N28
\x|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|Equal0~5_combout\ = (!\x|counterPulse|count\(16) & (!\x|counterPulse|count\(19) & (!\x|counterPulse|count\(18) & !\x|counterPulse|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterPulse|count\(16),
	datab => \x|counterPulse|count\(19),
	datac => \x|counterPulse|count\(18),
	datad => \x|counterPulse|count\(17),
	combout => \x|Equal0~5_combout\);

-- Location: LCCOMB_X51_Y39_N20
\x|counterPulse|count[21]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterPulse|count[21]~62_combout\ = \x|counterPulse|count[20]~61\ $ (!\x|counterPulse|count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \x|counterPulse|count\(21),
	cin => \x|counterPulse|count[20]~61\,
	combout => \x|counterPulse|count[21]~62_combout\);

-- Location: FF_X51_Y39_N21
\x|counterPulse|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterPulse|count[21]~62_combout\,
	clrn => \x|ALT_INV_reset1~clkctrl_outclk\,
	ena => \x|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterPulse|count\(21));

-- Location: LCCOMB_X51_Y39_N22
\x|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|Equal0~6_combout\ = (\x|Equal0~4_combout\ & (!\x|counterPulse|count\(20) & (\x|Equal0~5_combout\ & !\x|counterPulse|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|Equal0~4_combout\,
	datab => \x|counterPulse|count\(20),
	datac => \x|Equal0~5_combout\,
	datad => \x|counterPulse|count\(21),
	combout => \x|Equal0~6_combout\);

-- Location: LCCOMB_X50_Y36_N20
\x|en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|en~combout\ = (!\x|Equal0~6_combout\ & ((\x|comb~6_combout\) # (\x|en~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|comb~6_combout\,
	datac => \x|Equal0~6_combout\,
	datad => \x|en~combout\,
	combout => \x|en~combout\);

-- Location: LCCOMB_X52_Y40_N4
\x|counterZero|count[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[0]~25_combout\ = \x|counterZero|count\(0) $ (!\x|en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x|counterZero|count\(0),
	datad => \x|en~combout\,
	combout => \x|counterZero|count[0]~25_combout\);

-- Location: LCCOMB_X50_Y36_N0
\x|reset2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|reset2~combout\ = (!\x|Equal0~6_combout\ & ((\x|comb~6_combout\) # (\x|reset2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|comb~6_combout\,
	datac => \x|Equal0~6_combout\,
	datad => \x|reset2~combout\,
	combout => \x|reset2~combout\);

-- Location: CLKCTRL_G12
\x|reset2~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \x|reset2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \x|reset2~clkctrl_outclk\);

-- Location: FF_X52_Y40_N5
\x|counterZero|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[0]~25_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(0));

-- Location: LCCOMB_X52_Y40_N12
\x|counterZero|count[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[1]~21_combout\ = (\x|counterZero|count\(1) & (\x|counterZero|count\(0) $ (VCC))) # (!\x|counterZero|count\(1) & (\x|counterZero|count\(0) & VCC))
-- \x|counterZero|count[1]~22\ = CARRY((\x|counterZero|count\(1) & \x|counterZero|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterZero|count\(1),
	datab => \x|counterZero|count\(0),
	datad => VCC,
	combout => \x|counterZero|count[1]~21_combout\,
	cout => \x|counterZero|count[1]~22\);

-- Location: FF_X52_Y40_N13
\x|counterZero|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[1]~21_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(1));

-- Location: LCCOMB_X52_Y40_N14
\x|counterZero|count[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[2]~23_combout\ = (\x|counterZero|count\(2) & (!\x|counterZero|count[1]~22\)) # (!\x|counterZero|count\(2) & ((\x|counterZero|count[1]~22\) # (GND)))
-- \x|counterZero|count[2]~24\ = CARRY((!\x|counterZero|count[1]~22\) # (!\x|counterZero|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterZero|count\(2),
	datad => VCC,
	cin => \x|counterZero|count[1]~22\,
	combout => \x|counterZero|count[2]~23_combout\,
	cout => \x|counterZero|count[2]~24\);

-- Location: FF_X52_Y40_N15
\x|counterZero|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[2]~23_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(2));

-- Location: LCCOMB_X52_Y40_N16
\x|counterZero|count[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[3]~26_combout\ = (\x|counterZero|count\(3) & (\x|counterZero|count[2]~24\ $ (GND))) # (!\x|counterZero|count\(3) & (!\x|counterZero|count[2]~24\ & VCC))
-- \x|counterZero|count[3]~27\ = CARRY((\x|counterZero|count\(3) & !\x|counterZero|count[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterZero|count\(3),
	datad => VCC,
	cin => \x|counterZero|count[2]~24\,
	combout => \x|counterZero|count[3]~26_combout\,
	cout => \x|counterZero|count[3]~27\);

-- Location: FF_X52_Y40_N17
\x|counterZero|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[3]~26_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(3));

-- Location: LCCOMB_X52_Y40_N18
\x|counterZero|count[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[4]~28_combout\ = (\x|counterZero|count\(4) & (!\x|counterZero|count[3]~27\)) # (!\x|counterZero|count\(4) & ((\x|counterZero|count[3]~27\) # (GND)))
-- \x|counterZero|count[4]~29\ = CARRY((!\x|counterZero|count[3]~27\) # (!\x|counterZero|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterZero|count\(4),
	datad => VCC,
	cin => \x|counterZero|count[3]~27\,
	combout => \x|counterZero|count[4]~28_combout\,
	cout => \x|counterZero|count[4]~29\);

-- Location: FF_X52_Y40_N19
\x|counterZero|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[4]~28_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(4));

-- Location: LCCOMB_X52_Y40_N20
\x|counterZero|count[5]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[5]~30_combout\ = (\x|counterZero|count\(5) & (\x|counterZero|count[4]~29\ $ (GND))) # (!\x|counterZero|count\(5) & (!\x|counterZero|count[4]~29\ & VCC))
-- \x|counterZero|count[5]~31\ = CARRY((\x|counterZero|count\(5) & !\x|counterZero|count[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterZero|count\(5),
	datad => VCC,
	cin => \x|counterZero|count[4]~29\,
	combout => \x|counterZero|count[5]~30_combout\,
	cout => \x|counterZero|count[5]~31\);

-- Location: FF_X52_Y40_N21
\x|counterZero|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[5]~30_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(5));

-- Location: LCCOMB_X52_Y40_N22
\x|counterZero|count[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[6]~32_combout\ = (\x|counterZero|count\(6) & (!\x|counterZero|count[5]~31\)) # (!\x|counterZero|count\(6) & ((\x|counterZero|count[5]~31\) # (GND)))
-- \x|counterZero|count[6]~33\ = CARRY((!\x|counterZero|count[5]~31\) # (!\x|counterZero|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterZero|count\(6),
	datad => VCC,
	cin => \x|counterZero|count[5]~31\,
	combout => \x|counterZero|count[6]~32_combout\,
	cout => \x|counterZero|count[6]~33\);

-- Location: FF_X52_Y40_N23
\x|counterZero|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[6]~32_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(6));

-- Location: LCCOMB_X52_Y40_N24
\x|counterZero|count[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[7]~34_combout\ = (\x|counterZero|count\(7) & (\x|counterZero|count[6]~33\ $ (GND))) # (!\x|counterZero|count\(7) & (!\x|counterZero|count[6]~33\ & VCC))
-- \x|counterZero|count[7]~35\ = CARRY((\x|counterZero|count\(7) & !\x|counterZero|count[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterZero|count\(7),
	datad => VCC,
	cin => \x|counterZero|count[6]~33\,
	combout => \x|counterZero|count[7]~34_combout\,
	cout => \x|counterZero|count[7]~35\);

-- Location: FF_X52_Y40_N25
\x|counterZero|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[7]~34_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(7));

-- Location: LCCOMB_X52_Y40_N26
\x|counterZero|count[8]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[8]~36_combout\ = (\x|counterZero|count\(8) & (!\x|counterZero|count[7]~35\)) # (!\x|counterZero|count\(8) & ((\x|counterZero|count[7]~35\) # (GND)))
-- \x|counterZero|count[8]~37\ = CARRY((!\x|counterZero|count[7]~35\) # (!\x|counterZero|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterZero|count\(8),
	datad => VCC,
	cin => \x|counterZero|count[7]~35\,
	combout => \x|counterZero|count[8]~36_combout\,
	cout => \x|counterZero|count[8]~37\);

-- Location: FF_X52_Y40_N27
\x|counterZero|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[8]~36_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(8));

-- Location: LCCOMB_X52_Y40_N28
\x|counterZero|count[9]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[9]~38_combout\ = (\x|counterZero|count\(9) & (\x|counterZero|count[8]~37\ $ (GND))) # (!\x|counterZero|count\(9) & (!\x|counterZero|count[8]~37\ & VCC))
-- \x|counterZero|count[9]~39\ = CARRY((\x|counterZero|count\(9) & !\x|counterZero|count[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterZero|count\(9),
	datad => VCC,
	cin => \x|counterZero|count[8]~37\,
	combout => \x|counterZero|count[9]~38_combout\,
	cout => \x|counterZero|count[9]~39\);

-- Location: FF_X52_Y40_N29
\x|counterZero|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[9]~38_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(9));

-- Location: LCCOMB_X52_Y40_N30
\x|counterZero|count[10]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[10]~40_combout\ = (\x|counterZero|count\(10) & (!\x|counterZero|count[9]~39\)) # (!\x|counterZero|count\(10) & ((\x|counterZero|count[9]~39\) # (GND)))
-- \x|counterZero|count[10]~41\ = CARRY((!\x|counterZero|count[9]~39\) # (!\x|counterZero|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterZero|count\(10),
	datad => VCC,
	cin => \x|counterZero|count[9]~39\,
	combout => \x|counterZero|count[10]~40_combout\,
	cout => \x|counterZero|count[10]~41\);

-- Location: FF_X52_Y40_N31
\x|counterZero|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[10]~40_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(10));

-- Location: LCCOMB_X52_Y39_N0
\x|counterZero|count[11]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[11]~42_combout\ = (\x|counterZero|count\(11) & (\x|counterZero|count[10]~41\ $ (GND))) # (!\x|counterZero|count\(11) & (!\x|counterZero|count[10]~41\ & VCC))
-- \x|counterZero|count[11]~43\ = CARRY((\x|counterZero|count\(11) & !\x|counterZero|count[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterZero|count\(11),
	datad => VCC,
	cin => \x|counterZero|count[10]~41\,
	combout => \x|counterZero|count[11]~42_combout\,
	cout => \x|counterZero|count[11]~43\);

-- Location: FF_X52_Y39_N1
\x|counterZero|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[11]~42_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(11));

-- Location: LCCOMB_X52_Y40_N10
\x|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|comb~2_combout\ = (!\x|counterZero|count\(8) & (!\x|counterZero|count\(9) & (!\x|counterZero|count\(10) & !\x|counterZero|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterZero|count\(8),
	datab => \x|counterZero|count\(9),
	datac => \x|counterZero|count\(10),
	datad => \x|counterZero|count\(11),
	combout => \x|comb~2_combout\);

-- Location: LCCOMB_X52_Y40_N8
\x|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|comb~1_combout\ = (!\x|counterZero|count\(6) & (!\x|counterZero|count\(5) & (!\x|counterZero|count\(4) & !\x|counterZero|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterZero|count\(6),
	datab => \x|counterZero|count\(5),
	datac => \x|counterZero|count\(4),
	datad => \x|counterZero|count\(7),
	combout => \x|comb~1_combout\);

-- Location: LCCOMB_X52_Y39_N2
\x|counterZero|count[12]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[12]~44_combout\ = (\x|counterZero|count\(12) & (!\x|counterZero|count[11]~43\)) # (!\x|counterZero|count\(12) & ((\x|counterZero|count[11]~43\) # (GND)))
-- \x|counterZero|count[12]~45\ = CARRY((!\x|counterZero|count[11]~43\) # (!\x|counterZero|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterZero|count\(12),
	datad => VCC,
	cin => \x|counterZero|count[11]~43\,
	combout => \x|counterZero|count[12]~44_combout\,
	cout => \x|counterZero|count[12]~45\);

-- Location: FF_X52_Y39_N3
\x|counterZero|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[12]~44_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(12));

-- Location: LCCOMB_X52_Y39_N4
\x|counterZero|count[13]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[13]~46_combout\ = (\x|counterZero|count\(13) & (\x|counterZero|count[12]~45\ $ (GND))) # (!\x|counterZero|count\(13) & (!\x|counterZero|count[12]~45\ & VCC))
-- \x|counterZero|count[13]~47\ = CARRY((\x|counterZero|count\(13) & !\x|counterZero|count[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterZero|count\(13),
	datad => VCC,
	cin => \x|counterZero|count[12]~45\,
	combout => \x|counterZero|count[13]~46_combout\,
	cout => \x|counterZero|count[13]~47\);

-- Location: FF_X52_Y39_N5
\x|counterZero|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[13]~46_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(13));

-- Location: LCCOMB_X52_Y39_N6
\x|counterZero|count[14]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[14]~48_combout\ = (\x|counterZero|count\(14) & (!\x|counterZero|count[13]~47\)) # (!\x|counterZero|count\(14) & ((\x|counterZero|count[13]~47\) # (GND)))
-- \x|counterZero|count[14]~49\ = CARRY((!\x|counterZero|count[13]~47\) # (!\x|counterZero|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterZero|count\(14),
	datad => VCC,
	cin => \x|counterZero|count[13]~47\,
	combout => \x|counterZero|count[14]~48_combout\,
	cout => \x|counterZero|count[14]~49\);

-- Location: FF_X52_Y39_N7
\x|counterZero|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[14]~48_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(14));

-- Location: LCCOMB_X52_Y39_N8
\x|counterZero|count[15]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[15]~50_combout\ = (\x|counterZero|count\(15) & (\x|counterZero|count[14]~49\ $ (GND))) # (!\x|counterZero|count\(15) & (!\x|counterZero|count[14]~49\ & VCC))
-- \x|counterZero|count[15]~51\ = CARRY((\x|counterZero|count\(15) & !\x|counterZero|count[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterZero|count\(15),
	datad => VCC,
	cin => \x|counterZero|count[14]~49\,
	combout => \x|counterZero|count[15]~50_combout\,
	cout => \x|counterZero|count[15]~51\);

-- Location: FF_X52_Y39_N9
\x|counterZero|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[15]~50_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(15));

-- Location: LCCOMB_X52_Y39_N22
\x|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|comb~3_combout\ = (!\x|counterZero|count\(14) & (!\x|counterZero|count\(15) & (!\x|counterZero|count\(13) & !\x|counterZero|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterZero|count\(14),
	datab => \x|counterZero|count\(15),
	datac => \x|counterZero|count\(13),
	datad => \x|counterZero|count\(12),
	combout => \x|comb~3_combout\);

-- Location: LCCOMB_X52_Y40_N2
\x|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|comb~0_combout\ = (\x|counterZero|count\(2) & (!\x|counterZero|count\(3) & (\x|counterZero|count\(1) & !\x|counterZero|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterZero|count\(2),
	datab => \x|counterZero|count\(3),
	datac => \x|counterZero|count\(1),
	datad => \x|counterZero|count\(0),
	combout => \x|comb~0_combout\);

-- Location: LCCOMB_X52_Y40_N0
\x|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|comb~4_combout\ = (\x|comb~2_combout\ & (\x|comb~1_combout\ & (\x|comb~3_combout\ & \x|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|comb~2_combout\,
	datab => \x|comb~1_combout\,
	datac => \x|comb~3_combout\,
	datad => \x|comb~0_combout\,
	combout => \x|comb~4_combout\);

-- Location: LCCOMB_X52_Y39_N10
\x|counterZero|count[16]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[16]~52_combout\ = (\x|counterZero|count\(16) & (!\x|counterZero|count[15]~51\)) # (!\x|counterZero|count\(16) & ((\x|counterZero|count[15]~51\) # (GND)))
-- \x|counterZero|count[16]~53\ = CARRY((!\x|counterZero|count[15]~51\) # (!\x|counterZero|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterZero|count\(16),
	datad => VCC,
	cin => \x|counterZero|count[15]~51\,
	combout => \x|counterZero|count[16]~52_combout\,
	cout => \x|counterZero|count[16]~53\);

-- Location: FF_X52_Y39_N11
\x|counterZero|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[16]~52_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(16));

-- Location: LCCOMB_X52_Y39_N12
\x|counterZero|count[17]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[17]~54_combout\ = (\x|counterZero|count\(17) & (\x|counterZero|count[16]~53\ $ (GND))) # (!\x|counterZero|count\(17) & (!\x|counterZero|count[16]~53\ & VCC))
-- \x|counterZero|count[17]~55\ = CARRY((\x|counterZero|count\(17) & !\x|counterZero|count[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterZero|count\(17),
	datad => VCC,
	cin => \x|counterZero|count[16]~53\,
	combout => \x|counterZero|count[17]~54_combout\,
	cout => \x|counterZero|count[17]~55\);

-- Location: FF_X52_Y39_N13
\x|counterZero|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[17]~54_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(17));

-- Location: LCCOMB_X52_Y39_N14
\x|counterZero|count[18]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[18]~56_combout\ = (\x|counterZero|count\(18) & (!\x|counterZero|count[17]~55\)) # (!\x|counterZero|count\(18) & ((\x|counterZero|count[17]~55\) # (GND)))
-- \x|counterZero|count[18]~57\ = CARRY((!\x|counterZero|count[17]~55\) # (!\x|counterZero|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterZero|count\(18),
	datad => VCC,
	cin => \x|counterZero|count[17]~55\,
	combout => \x|counterZero|count[18]~56_combout\,
	cout => \x|counterZero|count[18]~57\);

-- Location: FF_X52_Y39_N15
\x|counterZero|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[18]~56_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(18));

-- Location: LCCOMB_X52_Y39_N16
\x|counterZero|count[19]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[19]~58_combout\ = (\x|counterZero|count\(19) & (\x|counterZero|count[18]~57\ $ (GND))) # (!\x|counterZero|count\(19) & (!\x|counterZero|count[18]~57\ & VCC))
-- \x|counterZero|count[19]~59\ = CARRY((\x|counterZero|count\(19) & !\x|counterZero|count[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterZero|count\(19),
	datad => VCC,
	cin => \x|counterZero|count[18]~57\,
	combout => \x|counterZero|count[19]~58_combout\,
	cout => \x|counterZero|count[19]~59\);

-- Location: FF_X52_Y39_N17
\x|counterZero|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[19]~58_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(19));

-- Location: LCCOMB_X52_Y39_N18
\x|counterZero|count[20]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[20]~60_combout\ = (\x|counterZero|count\(20) & (!\x|counterZero|count[19]~59\)) # (!\x|counterZero|count\(20) & ((\x|counterZero|count[19]~59\) # (GND)))
-- \x|counterZero|count[20]~61\ = CARRY((!\x|counterZero|count[19]~59\) # (!\x|counterZero|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x|counterZero|count\(20),
	datad => VCC,
	cin => \x|counterZero|count[19]~59\,
	combout => \x|counterZero|count[20]~60_combout\,
	cout => \x|counterZero|count[20]~61\);

-- Location: FF_X52_Y39_N19
\x|counterZero|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[20]~60_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(20));

-- Location: LCCOMB_X52_Y39_N28
\x|comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|comb~5_combout\ = (!\x|counterZero|count\(16) & (!\x|counterZero|count\(19) & (!\x|counterZero|count\(18) & !\x|counterZero|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|counterZero|count\(16),
	datab => \x|counterZero|count\(19),
	datac => \x|counterZero|count\(18),
	datad => \x|counterZero|count\(17),
	combout => \x|comb~5_combout\);

-- Location: LCCOMB_X52_Y39_N20
\x|counterZero|count[21]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|counterZero|count[21]~62_combout\ = \x|counterZero|count[20]~61\ $ (!\x|counterZero|count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \x|counterZero|count\(21),
	cin => \x|counterZero|count[20]~61\,
	combout => \x|counterZero|count[21]~62_combout\);

-- Location: FF_X52_Y39_N21
\x|counterZero|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \x|counterZero|count[21]~62_combout\,
	clrn => \x|ALT_INV_reset2~clkctrl_outclk\,
	ena => \x|ALT_INV_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x|counterZero|count\(21));

-- Location: LCCOMB_X52_Y39_N26
\x|comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|comb~6_combout\ = (\x|comb~4_combout\ & (!\x|counterZero|count\(20) & (\x|comb~5_combout\ & !\x|counterZero|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|comb~4_combout\,
	datab => \x|counterZero|count\(20),
	datac => \x|comb~5_combout\,
	datad => \x|counterZero|count\(21),
	combout => \x|comb~6_combout\);

-- Location: LCCOMB_X50_Y36_N18
\x|pulse\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x|pulse~combout\ = (!\x|Equal0~6_combout\ & ((\x|comb~6_combout\) # (\x|pulse~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x|comb~6_combout\,
	datac => \x|Equal0~6_combout\,
	datad => \x|pulse~combout\,
	combout => \x|pulse~combout\);

-- Location: LCCOMB_X15_Y1_N28
\pulseIn~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pulseIn~0_combout\ = (\x|pulse~combout\) # ((\smo~input_o\) # ((!\infIn~input_o\ & !\pirIn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \infIn~input_o\,
	datab => \x|pulse~combout\,
	datac => \smo~input_o\,
	datad => \pirIn~input_o\,
	combout => \pulseIn~0_combout\);

-- Location: LCCOMB_X15_Y1_N18
\pulseIn~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pulseIn~1_combout\ = (\smo~input_o\) # ((\LessThan0~10_combout\) # ((!\pirIn~input_o\ & !\infIn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \smo~input_o\,
	datab => \pirIn~input_o\,
	datac => \LessThan0~10_combout\,
	datad => \infIn~input_o\,
	combout => \pulseIn~1_combout\);

-- Location: LCCOMB_X15_Y1_N30
pulseIn : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pulseIn~combout\ = (\pulseIn~1_combout\ & (\pulseIn~0_combout\)) # (!\pulseIn~1_combout\ & ((\pulseIn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulseIn~0_combout\,
	datac => \pulseIn~combout\,
	datad => \pulseIn~1_combout\,
	combout => \pulseIn~combout\);

-- Location: LCCOMB_X54_Y27_N2
\pulseOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pulseOut~0_combout\ = (\x|pulse~combout\) # ((!\smo~input_o\ & (!\pirOut~input_o\ & !\infOut~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \smo~input_o\,
	datab => \pirOut~input_o\,
	datac => \x|pulse~combout\,
	datad => \infOut~input_o\,
	combout => \pulseOut~0_combout\);

-- Location: LCCOMB_X54_Y27_N0
\pulseOut~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pulseOut~1_combout\ = (\smo~input_o\) # ((\redOut~0_combout\) # ((!\pirOut~input_o\ & !\infOut~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pirOut~input_o\,
	datab => \smo~input_o\,
	datac => \redOut~0_combout\,
	datad => \infOut~input_o\,
	combout => \pulseOut~1_combout\);

-- Location: LCCOMB_X54_Y27_N26
pulseOut : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pulseOut~combout\ = (\pulseOut~1_combout\ & ((\pulseOut~0_combout\))) # (!\pulseOut~1_combout\ & (\pulseOut~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseOut~combout\,
	datac => \pulseOut~0_combout\,
	datad => \pulseOut~1_combout\,
	combout => \pulseOut~combout\);

-- Location: LCCOMB_X60_Y34_N20
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!count0(3) & (!count0(31) & \Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(3),
	datac => count0(31),
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X60_Y34_N26
\WideNor0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (count0(1)) # ((count0(2) $ (!count0(0))) # (!\Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(2),
	datab => count0(1),
	datac => count0(0),
	datad => \Equal0~9_combout\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X60_Y34_N28
\WideNor0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = (\Equal0~9_combout\ & ((count0(0)) # ((count0(2) & !count0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(2),
	datab => count0(1),
	datac => count0(0),
	datad => \Equal0~9_combout\,
	combout => \WideNor0~1_combout\);

-- Location: LCCOMB_X56_Y30_N6
\Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (count0(3) & (!count0(1) & (!count0(31) & !count0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(3),
	datab => count0(1),
	datac => count0(31),
	datad => count0(2),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X56_Y30_N24
\Equal8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (\Equal8~0_combout\ & (\Equal0~4_combout\ & (\Equal0~5_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X60_Y34_N10
\WideNor0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = (count0(0)) # (((count0(2) & !count0(1))) # (!\Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(2),
	datab => count0(1),
	datac => count0(0),
	datad => \Equal0~9_combout\,
	combout => \WideNor0~2_combout\);

-- Location: LCCOMB_X60_Y34_N2
WideOr5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = ((!\WideNor0~1_combout\ & (!\Equal8~1_combout\ & \WideNor0~2_combout\))) # (!\WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \WideNor0~1_combout\,
	datac => \Equal8~1_combout\,
	datad => \WideNor0~2_combout\,
	combout => \WideOr5~combout\);

-- Location: LCCOMB_X60_Y34_N6
\WideOr4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~2_combout\ = (count0(2) & (\Equal0~9_combout\ & (count0(1) $ (count0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(2),
	datab => count0(1),
	datac => count0(0),
	datad => \Equal0~9_combout\,
	combout => \WideOr4~2_combout\);

-- Location: LCCOMB_X60_Y34_N4
WideOr4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\WideOr4~2_combout\) # ((!\WideNor0~1_combout\ & (!\Equal8~1_combout\ & \WideNor0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~2_combout\,
	datab => \WideNor0~1_combout\,
	datac => \Equal8~1_combout\,
	datad => \WideNor0~2_combout\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X60_Y34_N12
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!count0(2) & (count0(1) & (!count0(0) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(2),
	datab => count0(1),
	datac => count0(0),
	datad => \Equal0~9_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X60_Y34_N18
\l1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l1~2_combout\ = (\Equal2~0_combout\) # ((!\WideNor0~1_combout\ & (!\Equal8~1_combout\ & \WideNor0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \WideNor0~1_combout\,
	datac => \Equal8~1_combout\,
	datad => \WideNor0~2_combout\,
	combout => \l1~2_combout\);

-- Location: LCCOMB_X60_Y34_N22
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (count0(2) & !count0(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count0(2),
	datad => count0(1),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X60_Y34_N0
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!count0(3) & (count0(0) & (!count0(31) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(3),
	datab => count0(0),
	datac => count0(31),
	datad => \Equal0~8_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X60_Y34_N24
\WideNor0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = (\WideNor0~1_combout\) # ((\Equal8~1_combout\) # (!\WideNor0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideNor0~1_combout\,
	datac => \Equal8~1_combout\,
	datad => \WideNor0~2_combout\,
	combout => \WideNor0~3_combout\);

-- Location: LCCOMB_X60_Y34_N30
\WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\WideNor0~3_combout\ & ((count0(2) $ (count0(1))) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \WideNor0~3_combout\,
	datac => count0(2),
	datad => count0(1),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X60_Y34_N16
WideOr3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = ((\Equal4~0_combout\ & (!count0(0) & \Equal0~9_combout\))) # (!\WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => count0(0),
	datac => \WideOr0~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \WideOr3~combout\);

-- Location: LCCOMB_X56_Y30_N22
\WideNor0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~4_combout\ = (\WideNor0~2_combout\ & (((count0(0)) # (!\Equal0~8_combout\)) # (!\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal0~8_combout\,
	datac => count0(0),
	datad => \WideNor0~2_combout\,
	combout => \WideNor0~4_combout\);

-- Location: LCCOMB_X60_Y34_N14
WideOr1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = ((!count0(2) & (count0(1) & \Equal0~9_combout\))) # (!\WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count0(2),
	datab => count0(1),
	datac => \WideOr0~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X60_Y34_N8
WideOr0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ((\Equal0~9_combout\ & \Equal0~10_combout\)) # (!\WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~10_combout\,
	combout => \WideOr0~combout\);

-- Location: LCCOMB_X57_Y29_N26
\l2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l2~0_combout\ = ((count1(31)) # ((!count1(1) & count1(0)))) # (!\Equal10~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(1),
	datab => \Equal10~9_combout\,
	datac => count1(31),
	datad => count1(0),
	combout => \l2~0_combout\);

-- Location: LCCOMB_X57_Y29_N4
\WideNor1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor1~0_combout\ = (!count1(31) & \Equal10~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count1(31),
	datad => \Equal10~9_combout\,
	combout => \WideNor1~0_combout\);

-- Location: LCCOMB_X56_Y29_N24
\l2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l2~1_combout\ = (count1(31)) # (((count1(1) & !count1(0))) # (!\Equal10~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(1),
	datab => count1(31),
	datac => count1(0),
	datad => \Equal10~9_combout\,
	combout => \l2~1_combout\);

-- Location: LCCOMB_X57_Y29_N22
\WideNor1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor1~1_combout\ = ((count1(31)) # (count1(0))) # (!\Equal10~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal10~9_combout\,
	datac => count1(31),
	datad => count1(0),
	combout => \WideNor1~1_combout\);

-- Location: LCCOMB_X57_Y29_N0
\Equal10~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~10_combout\ = (!count1(1) & (\Equal10~9_combout\ & (!count1(31) & !count1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(1),
	datab => \Equal10~9_combout\,
	datac => count1(31),
	datad => count1(0),
	combout => \Equal10~10_combout\);

-- Location: LCCOMB_X57_Y29_N10
\l2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \l2~2_combout\ = (!count1(31) & (count1(1) & \Equal10~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(31),
	datac => count1(1),
	datad => \Equal10~9_combout\,
	combout => \l2~2_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
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

-- Location: ADCBLOCK_X43_Y52_N0
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

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
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
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_redIn <= \redIn~output_o\;

ww_redOut <= \redOut~output_o\;

ww_redSmo <= \redSmo~output_o\;

ww_greenIn <= \greenIn~output_o\;

ww_greenOut <= \greenOut~output_o\;

ww_pulseI <= \pulseI~output_o\;

ww_pulseO <= \pulseO~output_o\;

ww_l1(0) <= \l1[0]~output_o\;

ww_l1(1) <= \l1[1]~output_o\;

ww_l1(2) <= \l1[2]~output_o\;

ww_l1(3) <= \l1[3]~output_o\;

ww_l1(4) <= \l1[4]~output_o\;

ww_l1(5) <= \l1[5]~output_o\;

ww_l1(6) <= \l1[6]~output_o\;

ww_l2(0) <= \l2[0]~output_o\;

ww_l2(1) <= \l2[1]~output_o\;

ww_l2(2) <= \l2[2]~output_o\;

ww_l2(3) <= \l2[3]~output_o\;

ww_l2(4) <= \l2[4]~output_o\;

ww_l2(5) <= \l2[5]~output_o\;

ww_l2(6) <= \l2[6]~output_o\;
END structure;


