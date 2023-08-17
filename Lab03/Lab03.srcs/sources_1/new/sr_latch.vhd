----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2023 10:05:53 PM
-- Design Name: 
-- Module Name: sr_latch - Behavioral
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

entity sr_latch is
    Port ( S : in STD_LOGIC;
           R : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q_Not : out STD_LOGIC);
end sr_latch;

architecture Behavioral of sr_latch is

signal internal_q, internal_qnot : STD_LOGIC := '0';

begin

    internal_q  <= R NOR internal_qnot;
    internal_qnot <= S NOR internal_Q;
    
    Q <= internal_q;
    Q_Not <= internal_qnot;

end Behavioral;
