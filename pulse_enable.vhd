LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY pulse_enable IS
     PORT (clk: IN STD_LOGIC;
	   pulse : OUT STD_LOGIC);
END pulse_enable;

ARCHITECTURE behav OF pulse_enable IS
COMPONENT Counter IS
	GENERIC (n:POSITIVE := 22);
	PORT (clk,enable,reset:IN STD_LOGIC;
        counter_output: OUT STD_LOGIc_VECTOR (n-1 DOWNTO 0));
END COMPONENT;

SIGNAL pulse_width : STD_LOGIC_VECTOR(21 DOWNTO 0):="0000000000000000000000";
SIGNAL pulse_Zero : STD_LOGIC_VECTOR(21 DOWNTO 0):="0000000000000000000000";
SIGNAL en : STD_LOGIC :='1';
SIGNAL reset1 :STD_LOGIC :='0';
SIGNAL reset2 :STD_LOGIC :='1';
BEGIN
counterPulse : Counter GENERIC MAP(22) PORT MAP(clk,en,reset1,pulse_width);
counterZero  : Counter GENERIC MAP(22) PORT MAP(clk,"not"(en),reset2,pulse_Zero);

pulseGenerator: PROCESS(pulse_width,pulse_Zero)
                BEGIN  
		  IF(pulse_width = "0000000000000000000011") THEN -- 100000    2 ms / 20 ns --0000011000011010100000
		    reset1 <= '1';
			 reset2 <= '0';
		    pulse <= '0';
			 en <= '0';
		  ELSIF(pulse_Zero = "0000000000000000000110")THEN
		    reset2 <= '1';
			 reset1 <= '0';
		    pulse <='1';
			 en <='1';
		  END IF;
		  
	        END PROCESS pulseGenerator;
END behav;