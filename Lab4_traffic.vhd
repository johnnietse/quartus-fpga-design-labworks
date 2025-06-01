library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Lab4_traffic is
port(
button_in : in std_logic;
reset : in std_logic;
Light1_Green : out std_logic;
Light1_Yellow : out std_logic;
Light1_Red : out std_logic;
Light2_Green : out std_logic;
Light2_Yellow : out std_logic;
Light2_Red : out std_logic;
Light3_Green : out std_logic;
Light3_Yellow : out std_logic;
Light3_Red : out std_logic;
Hex_Display : out std_logic_vector(7 DOWNTO 0)
);
end entity;

architecture rtl of Lab4_traffic is
--Why do we not need a Red states?
type lights_state is (Straight_Green, Straight_Green2, Straight_Yellow, T_Green, T_Green2, T_Yellow);
signal State : lights_state;
begin
process(button_in) is
begin
if rising_edge(button_in) then
if reset = '0' then
-- set things to Straight_Green to reset
State <= Straight_Green;
Light1_Green <= '1';
Light1_Yellow <= '0';
Light1_Red <= '0';
Light2_Green <= '0';
Light2_Yellow <= '0';
Light2_Red <= '1';
Light3_Green <= '1';
Light3_Yellow <= '0';
Light3_Red <= '0';
Hex_Display <= "1000000";
else
Light1_Green <= '0';
Light1_Yellow <= '0';
Light1_Red <= '0';
Light2_Green <= '0';
Light2_Yellow <= '0';
Light2_Red <= '0';
Light3_Green <= '0';
Light3_Yellow <= '0';
Light3_Red <= '0';
case State is
when Straight_Green =>
Light1_Green <= '1';
Light1_Yellow <= '0';
Light1_Red <= '0';
Light2_Green <= '0';
Light2_Yellow <= '0';
Light2_Red <= '1';
Light3_Green <= '1';
Light3_Yellow <= '0';
Light3_Red <= '0';
Hex_Display <= "1000000";
State <= Straight_Green2;

when Straight_Green2 =>
Light1_Green <= '1';
Light1_Yellow <= '0';
Light1_Red <= '0';
Light2_Green <= '0';
Light2_Yellow <= '0';
Light2_Red <= '1';
Light3_Green <= '1';
Light3_Yellow <= '0';
Light3_Red <= '0';
Hex_Display <= "1000000";
State <= Straight_Yellow;

when Straight_Yellow=>
Light1_Green <= '0';
Light1_Yellow <= '1';
Light1_Red <= '0';
Light2_Green <= '0';
Light2_Yellow <= '0';
Light2_Red <= '1';
Light3_Green <= '0';
Light3_Yellow <= '1';
Light3_Red <= '0';
Hex_Display <= "1111001";
State <= T_Green;

when T_Green=>
Light1_Green <= '0';
Light1_Yellow <= '0';
Light1_Red <= '1';
Light2_Green <= '1';
Light2_Yellow <= '0';
Light2_Red <= '0';
Light3_Green <= '0';
Light3_Yellow <= '0';
Light3_Red <= '1';
Hex_Display <= "0100100";
State <= T_Green2;

when T_Green2=>
Light1_Green <= '0';
Light1_Yellow <= '0';
Light1_Red <= '1';
Light2_Green <= '1';
Light2_Yellow <= '0';
Light2_Red <= '0';
Light3_Green <= '0';
Light3_Yellow <= '0';
Light3_Red <= '1';
Hex_Display <= "0100100";
State <= T_Yellow;

when T_Yellow=>
Light1_Green <= '0';
Light1_Yellow <= '0';
Light1_Red <= '1';
Light2_Green <= '0';
Light2_Yellow <= '1';
Light2_Red <= '0';
Light3_Green <= '0';
Light3_Yellow <= '0';
Light3_Red <= '1';
Hex_Display <= "0110000";
State <= Straight_Green;

end case;
end if;
end if;
end process;
end architecture;
