----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 04:41:07 PM
-- Design Name: 
-- Module Name: evenodd - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity evenodd is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           even : out STD_LOGIC;
           odd : out STD_LOGIC);
end evenodd;

architecture Behavioral of evenodd is

begin

    odd <= input(0);
    even <= NOT input(0);

end Behavioral;
