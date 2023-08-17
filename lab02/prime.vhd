----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 03:51:20 PM
-- Design Name: 
-- Module Name: prime - Behavioral
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

entity prime is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           s1 : in std_logic;
           s2 : in std_logic;
           s3 : in std_logic;
           s4 : in std_logic;
           s5 : in std_logic;
           s6 : in std_logic; 
           s7 : in std_logic;
           isprime : out STD_LOGIC);
end prime;

architecture Behavioral of prime is

begin

isprime <= (NOT input(3) AND NOT input(2) AND input(1)) OR
            (NOT input(3) AND input(2) AND input(0)) OR 
            (input(1) AND input(0)) OR
            (input(2) AND NOT input(1) AND input(0));

end Behavioral;
