----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2023 10:06:24 PM
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
entity top is
 Port ( sw : in STD_LOGIC_VECTOR (2 downto 0);
 LED : out STD_LOGIC_VECTOR (1 downto 0));
end top;
architecture Behavioral of top is
component async_reset_d_flip_flop
 Port (D : in STD_LOGIC;
 rst : in STD_LOGIC;
 clk : in STD_LOGIC;
 Q : out STD_LOGIC;
 Q_Not : out STD_LOGIC);
end component;
begin
sr_insta0 : async_reset_d_flip_flop port map(sw(0), sw(1), sw(2), LED(0), LED(1));
end Behavioral; 