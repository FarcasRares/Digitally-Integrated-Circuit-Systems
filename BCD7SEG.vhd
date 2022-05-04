library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity BCD7 is
Port ( BCDin : in STD_LOGIC_VECTOR (3 downto 0);
        bcdOUT:out STD_LOGIC_VECTOR (6 downto 0);
        clk:in std_logic);
end BCD7;
 
architecture Behavioral of BCD7 is
 
begin
 
process(BCDin,clk)
begin
if rising_edge(clk) then
case BCDin is
when "0000" =>
bcdOUT <= "0000001";
when "0001" =>
bcdOUT <= "1001111"; 
when "0010" =>
bcdOUT <= "0010010"; 
when "0011" =>
bcdOUT <= "0000110";
when "0100" =>
bcdOUT <= "1001100"; 
when "0101" =>
bcdOUT <= "0100100";
when "0110" =>
bcdOUT <= "0100000"; 
when "0111" =>
bcdOUT <= "0001111"; 
when "1000" =>
bcdOUT <= "0000000";
when "1001" =>
bcdOUT <= "0000100"; 
when others =>
bcdOUT <= "1111111";
end case;
end if;
end process;
 
end Behavioral;
