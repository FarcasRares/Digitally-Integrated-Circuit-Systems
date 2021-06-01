-- Farcas Rares, Docan Tudor, Samuel Doroscan

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity toplevel is
 Port (clk: in STD_LOGIC;
       clear: in STD_LOGIC;
       BCDOUT: out STD_LOGIC_VECTOR(27 downto 0);
       clr:in STD_LOGIC
       );
end toplevel;

 architecture Behavioral of toplevel is
component BCD7 is
Port ( BCDin : in STD_LOGIC_VECTOR (3 downto 0);
        bcdOUT:out STD_LOGIC_VECTOR (6 downto 0);
        clk:in std_logic);
end component BCD7;

component fibonacci is
    Port ( clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           f : out STD_LOGIC_VECTOR (13 downto 0));
end component fibonacci;

signal fibOUT:std_logic_vector( 13 downto 0); --semnalele de iesire din FIB
signal cnt: std_logic_vector(27 downto 0):=x"0000000";
signal clk_div: std_logic;
signal allOUT:std_LOGIC_VECTOR(27 downto 0);
signal BCdin:std_logic_vector(3 downto 0);
signal BCDout1,BCDout2,BCDout3,BCDout4:std_logic_vector(6 downto 0);
begin
process(clk,clr)
begin
    if clr ='1' then
    cnt<=x"0000000";
    elsif rising_edge(clk) then
    if cnt=x"2FAF07F" then
    cnt<= x"0000000";
    clk_div<='1';
    else 
    cnt<= cnt+1;
    clk_div<='0';
    end if;
    end if;
  --divizorul de frecventa, cu raport de divizare 50Mhz - 1   
    
end process;
generatorfib: fibonacci port map(clk=>clk_div,clr=>'0',f=>fibOUT);
U1: BCD7 port map(
BCDin(0)=>fibOUT(0),
BCDin(1)=>fibOUT(1),
BCDin(2)=>fibOUT(2),
BCDin(3)=>fibOUT(3),
BCDout=>BCDout1,

clk=>clk_div
);
U2: BCD7 port map(
BCDin(0)=>fibOUT(4),
BCDin(1)=>fibOUT(5),
BCDin(2)=>fibOUT(6),
BCDin(3)=>fibOUT(7),
BCDout=>BCDout2,
clk=>clk_div
);
U3: BCD7 port map(
BCDin(0)=>fibOUT(8),
BCDin(1)=>fibOUT(9),
BCDin(2)=>fibOUT(10),
BCDin(3)=>fibOUT(11),
BCDout=>BCDout3,
clk=>clk_div
);
U4: BCD7 port map(
BCDin(0)=>fibOUT(12),
BCDin(1)=>fibOUT(13),
BCDin(2)=>'0',
BCDin(3)=>'0',
clk=>clk_div,
BCDout=>BCDout4
);
allOUT<= BCDout1 & BCDout2 & BCDout3 & BCDout4; --concatenare de biti 
BCDOUT<=allOUT; 


end Behavioral;
