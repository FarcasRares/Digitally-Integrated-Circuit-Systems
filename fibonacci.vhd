library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity fibonacci is
    Port ( clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           f : out STD_LOGIC_VECTOR (13 downto 0));
end fibonacci;

architecture Behavioral of fibonacci is
signal sig1,sig0:STD_LOGIC_VECTOR(13 downto 0);
constant fib_max:integer:=987;
begin
Proc1: process(clk,clr)
begin
    if clr = '1' then
        sig0<="00000000000000";
        sig1<="00000000000001";
        elsif rising_edge(clk) then -- actioneaza pe frontul pozitiv
        if sig1<fib_max then
        sig1<=sig1+sig0;
        sig0<=sig1;
        else
         sig0<="00000000000000";
        sig1<="00000000000001";
        end if;
        end if;
        end process;
        f<=sig1;

       -- divizam 50MHz la 1Hz -- 2FA F07F
       
end Behavioral;
