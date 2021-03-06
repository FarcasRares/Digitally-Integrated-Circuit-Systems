
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCD7SIMULARE is
--  Port ( );
end BCD7SIMULARE;

architecture Behavioral of BCD7SIMULARE is
component BCD7 is
Port ( BCDin : in STD_LOGIC_VECTOR (3 downto 0);
        bcdOUT:out STD_LOGIC_VECTOR (6 downto 0);
     clk:in std_logic);
end component BCD7;
signal BCDin:std_logic_vector( 3 downto 0 );
signal BCDout:std_logic_vector(6 downto 0 );
signal clk:std_logic;

begin
UUT: BCD7 port map(BCDin=>BCDin, bcdOUT=>BCDout,clk=>clk);
process
begin 
clk<='1'; wait for 10ns;
clk<='0'; wait for 10ns;
end process;
test: process
begin
 
BCDin <= "0000";
wait for 100 ns;
BCDin <= "0001";
wait for 100 ns;
BCDin <= "0010";
wait for 100 ns;
BCDin <= "0011";
wait for 100 ns;
BCDin <= "0100";
wait for 100 ns;
BCDin <= "0101";
wait for 100 ns;
BCDin <= "0110";
wait for 100 ns;
BCDin <= "0111";
wait for 100 ns;
BCDin <= "1000";
wait for 100 ns;
BCDin <= "1001";
wait for 100 ns;
end process;
 


end Behavioral;
