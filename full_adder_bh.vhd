----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2022 18:44:16
-- Design Name: 
-- Module Name: full_adder_bh - Behavioral
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

entity full_adder_bh is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);
end full_adder_bh;

architecture Behavioral of full_adder_bh is
       signal  s1,s2,c1,c2: std_logic;

  component half_adder_df is 
  Port(a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC;
           c : out STD_LOGIC);
           end component;
           
begin

HA1 :half_adder_df
      port map(
              a=>A,
              b=>B,
              s=>s1,
              c=>c1
              );
               
  HA2 :  half_adder_df
      port map(
           a=>s1,
           b=>C_in,
           s=>s2,
           c=>c2
           );      
           S<=s2;
           C_out<= c1 or c2;      
end Behavioral;
