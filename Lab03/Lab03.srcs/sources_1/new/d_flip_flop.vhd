----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2023 10:12:52 PM
-- Design Name: 
-- Module Name: d_flip_flop - Behavioral
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

entity d_flip_flop is
    Port ( D : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q_Not : out STD_LOGIC);
end d_flip_flop;

architecture Behavioral of d_flip_flop is

    component d_latch
        Port( D : in STD_LOGIC;
              E : in STD_LOGIC;
              Q : out STD_LOGIC;
              Q_Not : out STD_LOGIC);
    end component;
    
    signal s0 : STD_LOGIC;        

begin

    sr_insta0 : d_latch port map(D, NOT clk, s0, OPEN);
    
    sr_insta1 : d_latch port map(s0, clk, Q, Q_Not);

end Behavioral;
