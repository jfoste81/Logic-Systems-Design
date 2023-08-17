----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 04:28:50 PM
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    Port ( sw : in STD_LOGIC_VECTOR (3 downto 0);
           LED : out STD_LOGIC_VECTOR (2 downto 0));
end top;

architecture Behavioral of top is

component prime
    Port ( input : in STD_LOGIC_VECTOR ( 3 downto 0);
           isprime : out STD_LOGIC);
end component;

component evenOdd
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           even : out STD_LOGIC;
           odd : out STD_LOGIC);
end component;   

begin

prime_insta0: prime port map(
    input => sw,
    isprime => led(0)
    );

evenOdd_insta0: evenOdd port map(
    input => sw,
    even => led(1),
    odd => led(2)
    );


end Behavioral;
