----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:55:21 04/27/2021 
-- Design Name: 
-- Module Name:    ctrl - Behavioral 
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

entity ctrl is
    Port ( OP : in  STD_LOGIC_VECTOR (4 downto 0);
           IOR_Funct : in STD_LOGIC_VECTOR (1 downto 0);
           ALUOP : out  STD_LOGIC_VECTOR (2 downto 0);
           MemWr : out  STD_LOGIC;
           Mem2Reg : out  STD_LOGIC;
           RegWr : out  STD_LOGIC;
           RegDest : out  STD_LOGIC;
			  Branch : out STD_LOGIC;
			  CE_NF    : out  STD_LOGIC;
           CE_OVF   : out  STD_LOGIC;
           CE_ZF    : out  STD_LOGIC;
           CE_CF    : out  STD_LOGIC);
end ctrl;

architecture Behavioral of ctrl is

begin

	MemWr <= '1' when OP = "10001" else '0';
	Mem2Reg <= '1' when OP = "10000" else '0';
	RegWr   <= '0' when (OP = "10001" or OP = "00110" or OP = "10100") else '1';
	RegDest <= '1' when OP = "10000" else '0';
	ALUOP <= "000" when OP="01000" else			--ADD Wb, Ws, Wd
				"001" when OP="01010" else			--SUB Wb, Ws, Wd
				"010" when OP="01100" else			--AND Wb, Ws, Wd
				"110" when OP="01110" and IOR_Funct = "11" else 	--IOR Wb, #lit5, Wd
				"011" when OP="01110" else   		--IOR Wb, Ws, Wd
				"101" when OP="11001" else       --FF1R Ws, Wnd
				"111" when OP="10100" else			--BTST.C Ws, #bit4
				"100" when OP="11111";      		--ZE Ws, Wnd
				
	Branch <= '1' when (OP = "00110") else
				 '0';
				 
	CE_NF <= '1' when (OP="01000" or    --ADD Wb, Ws, Wd
							 OP="01010" or    --SUB Wb, Ws, Wd
							 OP="01100" or    --AND Wb, Ws, Wd
							 OP="01110" or    --IOR Wb, Ws, Wd and IOR Wb, #lit5, Wd
							 OP="11111") else --ZE Ws, Wnd
							 '0';
	
	CE_OVF <= '1' when (OP="01000" or    --ADD Wb, Ws, Wd
							  OP="01010") else --SUB Wb, Ws, Wd
			   '0';
			  
	CE_ZF <= '1' when (OP="01000" or    --ADD Wb, Ws, Wd
							 OP="01010" or    --SUB Wb, Ws, Wd
							 OP="01100" or    --AND Wb, Ws, Wd
							 OP="01110" or    --IOR Wb, Ws, Wd and IOR Wb, #lit5, Wd
							 OP="11111") else --ZE Ws, Wnd
							 '0';
	
	CE_CF <= '1' when (OP="01000" or    --ADD Wb, Ws, Wd
							 OP="01010" or    --SUB Wb, Ws, Wd
							 OP="11001" or		--FF1R Ws, Wnd
							 OP="10100" or		--BTST.C Ws, #bit4
							 OP="11111") else	--ZE Ws, Wnd
			    '0';

	
end Behavioral;

