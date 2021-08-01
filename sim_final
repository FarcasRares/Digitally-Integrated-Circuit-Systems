library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity simulare_finala is
--  Port ( );
end simulare_finala;

architecture Behavioral of simulare_finala is
component toplevel is
 Port (clk: in STD_LOGIC;
       clear: in STD_LOGIC;
       BCDOUT: out STD_LOGIC_VECTOR(27 downto 0);
       clr:in STD_LOGIC
       );
end component toplevel;
signal clk:std_logic;
signal BCDOUT:STD_LOGIC_VECTOR(27 DOWNTO 0);
begin
UUT: toplevel port map(clk=>clk,clear=>'0',BCDOUT=>BCDOUT,clr=>'0');
process
begin
clk<='1'; wait for 10ns;
clk<='1'; wait for 10ns;
end process;
end Behavioral;
