library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity sim_fibonacci is
--  Port ( );
end sim_fibonacci;

architecture Behavioral of sim_fibonacci is
component fibonacci is
    Port ( clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           f : out STD_LOGIC_VECTOR (13 downto 0));
end component fibonacci;


signal clk,clr:std_logic;
signal f:std_logic_vector(13 downto 0);

begin

UUT: fibonacci port map(clk=>clk,clr=>'0',f=>f);

process begin
clk<='1'; wait for 10ns;
clk<='0'; wait for 10ns;

end process;
process begin
clr<='1'; wait for 1ns;
clr<='0'; wait for 100000ns;
end process;
end Behavioral;
