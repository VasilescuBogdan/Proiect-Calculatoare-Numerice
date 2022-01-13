----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:09:09 04/27/2021 
-- Design Name: 
-- Module Name:    File_Regs - Behavioral 
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

entity File_Regs is
    Port ( RdReg1 : in  STD_LOGIC_VECTOR (3 downto 0);
           RdData1 : out  STD_LOGIC_VECTOR (15 downto 0);
           RdReg2 : in  STD_LOGIC_VECTOR (3 downto 0);
           RdData2 : out  STD_LOGIC_VECTOR (15 downto 0);
           WrReg : in  STD_LOGIC_VECTOR (3 downto 0);
           WrData : in  STD_LOGIC_VECTOR (15 downto 0);
           WrEn : in  STD_LOGIC;
           Clk : in  STD_LOGIC);
end File_Regs;

architecture Behavioral of File_Regs is
	type tRegs is array (0 to 15) of std_logic_vector(15 downto 0);
	signal Regs: tRegs;
	
begin
	
	RdData1 <= Regs( conv_integer(RdReg1) );
	RdData2 <= Regs( conv_integer(RdReg2) );
	Regs( conv_integer(WrReg) ) <= WRData when rising_edge(Clk) and WrEn = '1';

end Behavioral;

