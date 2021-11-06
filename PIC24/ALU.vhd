----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:28:34 04/27/2021 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( RdData1 : in  STD_LOGIC_VECTOR (23 downto 0);
           RdData2 : in  STD_LOGIC_VECTOR (23 downto 0);
           FAddr : in  STD_LOGIC_VECTOR (15 downto 0);
           ALUSrc : in  STD_LOGIC;
           ALUOP : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (23 downto 0));
end ALU;

architecture Behavioral of ALU is
	signal SEAddr : std_logic_vector(23 downto 0);
	signal OP1 : std_logic_vector(23 downto 0);
	signal OP2 : std_logic_vector(23 downto 0);
	
begin

	SEAddr(15 downto 0) <= FAddr;
	SEAddr(31 downto 16) <= x"0000" when FAddr(15) = '0' else x"FFFF";
	OP2 <= RdData2 when ALUSrc = '0' else SEAddr;
	OP1 <= RdData1;
	
	with ALUOP select
	Y <= OP1 + OP2 when "00",
		  OP1 - OP2 when "01",
		  OP1 and OP2 when "10",
		  OP1 or OP2 when "11",
		  x"0000_0000" when others;
end Behavioral;

