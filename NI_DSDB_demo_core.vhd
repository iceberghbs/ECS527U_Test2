----------------------------------------------------------------------------------
-- Company:  Queen Mary University of London
-- Design Name: NI_DSDS_demo_core
-- Module Name: NI_DSDB_demo_core - Behavioral
-- Project Name: ECS527U Lab Test 2
-- Target Devices: NI DSDB Board
-- Tool Versions: Vivado 2017.03
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NI_DSDB_demo_core is
    port (
        sw: in std_logic_vector(7 downto 0);
        elvis_dio: in std_logic_vector(15 downto 0);
        led: out std_logic_vector(7 downto 0);
        btn: in std_logic_vector(3 downto 0);
        CLK: in std_logic;
        ss3: out std_logic_vector(3 downto 0);
        ss2: out std_logic_vector(3 downto 0);
        ss1: out std_logic_vector(3 downto 0);
        ss0: out std_logic_vector(3 downto 0)
    );
end NI_DSDB_demo_core;

architecture structural of NI_DSDB_demo_core is
    component Test2 is
    port (
        Go:  in  std_logic;
        CLK: in  std_logic;
        Q:   out std_logic_vector(1 downto 0)
    );
    end component;
    signal Q: std_logic_vector(1 downto 0);
begin
    U0: Test2 port map (Go => elvis_dio(0), CLK => CLK, Q => Q);

    ss3 <= (others => '0');
    ss2 <= (others => '0');
    ss1 <= (others => '0');
    ss0 <= "00" & Q;

    led <= (others => '0');
end structural;
