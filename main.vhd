----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.03.2021 13:04:42
-- Design Name: 
-- Module Name: main - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
    Port(
        LED : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
        CLK : in STD_LOGIC
        );
end main;

architecture Behavioral of main is
    begin
    process(CLK)
     variable x : boolean := false;
    begin
        if rising_edge(CLK) then
            if x then
                x := not (x);
                LED <= (others => '1');
            else
                x := not (x);
                LED <= (others => '0');
            end if;
        end if;
        end process;
    
end Behavioral;
