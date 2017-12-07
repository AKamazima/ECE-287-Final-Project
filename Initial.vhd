library IEEE;
use IEEE.STD_LOGIC_1164.all;

use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Initial is

	port(
		CLK_50MHz : in std_logic;  --clock signal
      S1, S2, S3 : in std_logic; --speed 10, speed 100, speed 1000
		LEDG3, LEDG2, LEDG1, LEDG0 : out std_logic); --LED to blink PIN_E25 PIN_E22 PIN_E21 , LEDG1, LEDG0
end Initial;

architecture Behavior of Initial is
			signal counter : std_logic_vector(24 downto 0);  -- signal that does the counting
			signal counter2 : std_logic_vector(24 downto 0);  -- signal that does the counting
			signal counter3 : std_logic_vector(24 downto 0);  -- signal that does the counting
			signal counter4 : std_logic_vector(24 downto 0);  -- signal that does the counting
			signal CLK_1Hz : std_logic; -- to drive the LED 3
			signal CLK_5Hz : std_logic; -- to drive the LED 2
			signal CLK_10Hz : std_logic; -- to drive the LED 1
			signal CLK_20Hz : std_logic; -- to drive the LED 0
		begin --Behavior
		
		-- purpose: LED blinking
		-- type   : sequential
		-- inputs : CLK_50MHz, <reset>
		-- outputs:
		
		Prescaler: process (CLK_50MHz)
		begin  -- process Prescaler
			if CLK_50MHz'event and CLK_50MHz = '1' then  -- rising clock edge
            if  S3 <= '1' then
					if counter < "1011111010111100001000000" then
						counter <= counter + 1;
						LEDG3 <= CLK_1Hz;
					else
						CLK_1Hz <= not CLK_1Hz;
						counter <= (others => '0');
					end if;
				end if;
				if  S2 <= '1' then
					if counter2 < "10011000100101101000000" then
						counter2 <= counter2 + 1;
						LEDG2 <= CLK_5Hz;
					else
						CLK_5Hz <= not CLK_5Hz;
						counter2 <= (others => '0');
					end if;
				end if;
				if  S1 <= '1' then
					if counter3 < "1001100010010110100000" then
						counter3 <= counter3 + 1;
						LEDG1 <= CLK_10Hz;
					else
						CLK_10Hz <= not CLK_10Hz;
						counter3 <= (others => '0');
					end if;
				end if;
				--if counter4 < "100110001001011010000" then
					--counter4 <= counter4 + 1;
				--else
					--CLK_20Hz <= not CLK_20Hz;
					--counter4 <= (others => '0');
			end if;
		end process Prescaler;
		LEDG3 <= CLK_20Hz;
	end Behavior;