----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:40:55 04/08/2021 
-- Design Name: 
-- Module Name:    PC_Update - Behavioral 
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

entity PC_Update is
    Port ( 
		   PC : in  STD_LOGIC_VECTOR (5 downto 0);
         New_PC : out  STD_LOGIC_VECTOR (5 downto 0);
			NF : in STD_LOGIC;
			OVF : in STD_LOGIC;
			ZF : in STD_LOGIC;
			CF : in STD_LOGIC;
			Offset 	  : in STD_LOGIC_VECTOR(4 downto 0);
			BranchType : in STD_LOGIC_VECTOR(2 downto 0);
			Branch 	  : in STD_LOGIC
			);
			
end PC_Update;

architecture Behavioral of PC_Update is
		signal PC_temp : STD_LOGIC_VECTOR(5 downto 0);
		signal depl  : STD_LOGIC_VECTOR(5 downto 0);
begin
	PC_temp <= PC + 2;
	depl <= Offset&"0";
	New_PC <= (PC_temp + depl) when (Branch = '1' and ((BranchType = b"011" and NF = '1')   -- BRA N,Expr
															    or  (BranchType = b"000" and OVF = '1')  	-- BRA OV,Expr
															    or  (BranchType = b"010" and ZF = '1')   	-- BRA Z,Expr
															    or  (BranchType = b"001" and CF = '1') 	-- BRA C,Expr
															    or  (BranchType = b"111"))) else			-- BRA Expr
				  PC_temp;
end Behavioral;

