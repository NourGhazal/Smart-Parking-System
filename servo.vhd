LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;
ENTITY servo IS 
PORT (infIn,infOut,smo,pirIn,pirOut,clk50 : IN std_logic; redIn,redOut,redSmo,greenIn,greenOut,pulseI,pulseO: OUT  std_logic;
		l1 : OUT std_logic_vector(6 DOWNTO 0):= "1000000" ;
		l2 : OUT std_logic_vector(6 DOWNTO 0):="1000000");
END servo;

ARCHITECTURE struct OF servo IS

COMPONENT pulse_enable IS 
PORT(clk : IN std_logic ;
	 pulse : OUT std_logic
);
END COMPONENT pulse_enable;

COMPONENT pulse_disable IS 
PORT(clk : IN std_logic ;
	 pulse : OUT std_logic
);
END COMPONENT pulse_disable;

SIGNAL clke : std_logic;
SIGNAL  clkd :std_logic;
SIGNAL pulseOut : std_logic;
SIGNAL pulseIn : std_logic;
SIGNAL  count :integer := 0; 
SIGNAL  count0 :integer := 0; 
SIGNAL  count1 :integer := 0; 
BEGIN
x : pulse_enable PORT MAP(clk50,clke);
y : pulse_disable PORT MAP(clk50,clkd);

PROCESS(infIn,infOut,smo,pirIn,pirOut)
BEGIN
IF(smo='0')THEN
  redSmo <= '0';
  --In servo
  IF( pirIn = '1' and count<30)THEN
     pulseIn <=  clke;
     greenIn <= '1';
     redIn <= '0';
  END IF;
  IF(infIn='1' and count<30)THEN
    pulseIn<=clke;
    IF(count0<9) THEN
      count0 <= count0+1;
    ELSif(count1<3) THEN
      count1 <= count1 +1;
      count0 <= 0;
    END IF;
  END IF;
  IF(pirIn = '0' AND infIn = '0')THEN
    pulseIn<=clkd;
    greenIn <= '0';
    redIn <= '1';
  END IF;
 -- Out servo
  IF( pirOut = '1' and count>0)THEN
    pulseOut <=  clke;
    greenOut <= '1';
    redOut <= '0';
  END IF;
  IF(infOut='1' and count>0)THEN
    pulseOut<=clke;
    IF(count0>0) THEN
      count0 <= count0-1;
    ELSIf(count1>0) THEN
      count1 <= count1 -1;
      count0 <= 9;
    END IF;
  END IF;
  IF(pirOut = '0' AND infOut = '0')THEN
   pulseOut<=clkd;
   greenOut <= '0';
   redOut <= '1';
  END IF;
ELSE
 pulseIn <=  clkd;
 redIn <= '1';
 greenIn <= '0';
 redSmo <= '1';
 pulseOut <= clke;
 redOut <='0';
 greenOut <='1';
END IF;

CASE count0 IS 
			WHEN 0 => l1 <= "1000000";
			WHEN 1 => l1 <= "1111001";
			WHEN 2 => l1 <= "0100100";
			WHEN 3 => l1 <= "0110000";
			WHEN 4 => l1 <= "0011001";
			WHEN 5 => l1 <= "0010010";
			WHEN 6 => l1 <= "0000010";
			WHEN 7 => l1 <= "1111000";
			WHEN 8 => l1 <= "0000000";
			WHEN 9 => l1 <= "0010000";
			WHEN OTHERS => l1 <= "1111111";
END CASE; 
CASE count1 IS 
			WHEN 0 => l2 <= "1000000";
			WHEN 1 => l2 <= "1111001";
			WHEN 2 => l2 <= "0100100";
			WHEN 3 => l2 <= "0110000";
			WHEN OTHERS => l2 <= "1111111";
END CASE;

END PROCESS;

pulseI <= pulseIn;
pulseO <= pulseOut;
count <= count0 + (10*count1);
END struct;