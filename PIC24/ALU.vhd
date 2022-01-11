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
    Port ( RdData1 : in  STD_LOGIC_VECTOR (15 downto 0);
           RdData2 : in  STD_LOGIC_VECTOR (15 downto 0);
			  Clk : in STD_LOGIC;
			  CE_NF : in STD_LOGIC;
			  CE_ZF : in STD_LOGIC;
			  CE_OVF : in STD_LOGIC;
			  CE_CF : in STD_LOGIC;
           ALUOP : in  STD_LOGIC_VECTOR (1 downto 0);
			  NF : out STD_LOGIC;
			  ZF : out STD_LOGIC;
			  OVF : out STD_LOGIC;
			  CF : out STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (15 downto 0));
end ALU;

architecture Behavioral of ALU is
	signa cY : out STD_LOGIC_VECTOR (15 downto 0);
begin
	with ALUOP select
	cY <= RdData1 + RdData2 when "00",
		  RdData1 - RdData2 when "01",
		  RdData1 and RdData2 when "10",
		  RdData1 or RdData2 when "11",
		  x"000000" when others;
	Y <= cY;
	NF <= cY(15) when rising_edge(Clk) and CE_NF = '1';
	ZF <= (cY = x"0000") when rising_edge(Clk) and CE_ZF = '1';
	
end Behavioral;

