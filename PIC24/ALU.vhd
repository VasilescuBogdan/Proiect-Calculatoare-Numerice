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
			  IOR_lit5: in STD_LOGIC_VECTOR(4 downto 0);
			  BTST_bit4: in STD_LOGIC_VECTOR(3 downto 0);
           ALUOP : in  STD_LOGIC_VECTOR (2 downto 0);
			  NF : out STD_LOGIC;
			  ZF : out STD_LOGIC;
			  OVF : out STD_LOGIC;
			  CF : out STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (15 downto 0));
end ALU;

architecture Behavioral of ALU is
	signal cY : STD_LOGIC_VECTOR (16 downto 0);
	signal is_zero : STD_LOGIC;
	signal is_overflow : STD_LOGIC;
begin
	
	with ALUOP select
	cY <= (('0'&RdData1) + ('0'&RdData2)) when "000",          -- ADD Wb ,Ws, Wd
         (('0'&RdData1) + ('0'&(not RdData2)) + 1) when "001",  -- SUB Wb, Ws, Wd
         (('0'&RdData1) and ('0'&RdData2)) when "010",        -- AND Wb, Ws, Wd
         (('0'&RdData1) or ('0'&RdData2)) when "011",   -- IOR Wb, Ws, Wd
			(('0'&RdData1) or (b"0_0000_0000_000"&IOR_lit5)) when "110",   -- IOR Wb, Ws, Wd
			(b"0_0000_0000"&RdData2(7 downto 0)) when "100", -- ZE Ws, Wnd
			RdData2(conv_integer(BTST_bit4))&x"0000" when "111", --BTST.C Ws, #bit4
			--result when "101", --FF1R Ws, Wnd
		   x"0000"&'0' when others;
	
	Y <= cY(15 downto 0);
	
	--N Flag
	NF <= cY(15) when rising_edge(Clk) and CE_NF = '1';
	
	--Z Flag
	is_zero <= '1' when cY(15 downto 0) = x"0000" else '0';
	ZF <= is_zero when rising_edge(Clk) and CE_ZF = '1';
	
	--OV Flag
	is_overflow <= '1' when ((ALUOP = "000" and RdData1(15) = RdData2(15) and cY(15) = (not RdData1(15))) or  -- ADD Wb ,Ws, Wd 
                   (ALUOP = "001" and RdData1(15) = (not RdData2(15)) and cY(15) = RdData2(15))) 
						 else '0'; -- SUB Wb, Ws, Wd
	OVF <= is_overflow when rising_edge(Clk) and CE_OVF = '1';
	
	--C Flag
	CF <= cY(16) when rising_edge(Clk) and CE_CF = '1';
			
	
end Behavioral;

