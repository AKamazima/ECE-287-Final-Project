library IEEE;
use IEEE.STD_LOGIC_1164.all;

use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Final is
	port(
			CLK_50MHz : in std_logic;  --clock signal
			LEDG3, LEDG2, LEDG1, LEDG0 : out std_logic); --LED to blink PIN_E25 PIN_E22 PIN_E21 , LEDG1, LEDG0
			end Final;
			
architecture Behavior of Final is
	signal counter : std_logic_vector(24 downto 0);  -- signal that does the counting
			signal counter2 : std_logic_vector(24 downto 0);  -- signal that does the counting
			signal counter3 : std_logic_vector(24 downto 0);  -- signal that does the counting
			signal counter4 : std_logic_vector(24 downto 0);  -- signal that does the counting
			signal CLK_1Hz : std_logic; -- to drive the LED 3
			signal CLK_5Hz : std_logic; -- to drive the LED 2
			signal CLK_10Hz : std_logic; -- to drive the LED 1
			signal CLK_20Hz : std_logic; -- to drive the LED 0

begin
	Prescaler: process (CLK_50MHz)
		begin  -- process Prescaler
			if CLK_50MHz'event and CLK_50MHz = '1' then  -- rising clock edge
				if counter < "1011111010111100001000000" then --25000000
					counter <= counter + 1;
				else
					CLK_1Hz <= not CLK_1Hz;
					counter <= (others => '0');
				end if;
				if counter2 < "101111101011110000100000" then --12500000
					counter2 <= counter2 + 1;
				else
					CLK_5Hz <= not CLK_5Hz;
					counter2 <= (others => '0');
				end if;
				if counter3 < "100110001001011010000000" then --10000000
					counter3 <= counter3 + 1;
				else
					CLK_10Hz <= not CLK_10Hz;
					counter3 <= (others => '0');
				end if;
				if counter4 < "10011000100101101000000" then --5000000
					counter4 <= counter4 + 1;
				else
					CLK_20Hz <= not CLK_20Hz;
					counter4 <= (others => '0');
				end if;
			end if;
		end process Prescaler;
		
		LEDG3 <= CLK_1Hz;
		LEDG2 <= CLK_5Hz;
		LEDG1 <= CLK_10Hz;
		LEDG0 <= CLK_20Hz;
	
end Behavior;