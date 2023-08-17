----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2023 10:21:27 PM
-- Design Name: 
-- Module Name: async_reset_d_flip_flop - Behavioral
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

entity async_reset_d_flip_flop is
    Port ( D : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q_Not : out STD_LOGIC);
end async_reset_d_flip_flop;

architecture Behavioral of async_reset_d_flip_flop is

    signal q_reg : STD_LOGIC;

begin

process(clk, rst)
 begin 
  if rst = '1' then
   q_reg <= '0';
  elsif rising_edge(clk) then 
   q_reg <= D;
  end if;
 end process;
Q <= q_reg;
Q_Not <= NOT q_reg;
end Behavioral;
