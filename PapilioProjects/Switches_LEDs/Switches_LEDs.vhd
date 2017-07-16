----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:28:49 07/16/2017 
-- Design Name: 
-- Module Name:    Switches_LEDs - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Switches_LEDs is
    Port ( switch_0 : in  STD_LOGIC;
           switch_1 : in  STD_LOGIC;
           LED_0 : out  STD_LOGIC;
           LED_1 : out  STD_LOGIC);
end Switches_LEDs;

architecture Behavioral of Switches_LEDs is
begin
	LED_0 <= switch_0;
	LED_1 <= switch_1;
end Behavioral;

