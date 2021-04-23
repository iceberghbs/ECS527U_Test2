library IEEE;
use IEEE.std_logic_1164.all;

entity Test2_tb is
end Test2_tb;

architecture sim of Test2_tb is
constant clk_prd : time := 10ns;
signal CLK100Mhz : std_logic;
signal Go :std_logic;
signal Q : std_logic_vector(1 DOWNTO 0);

COMPONENT Test2
port (
    Go:  in  std_logic;
    CLK: in  std_logic;
    Q:   out std_logic_vector(1 downto 0)
);
END COMPONENT;
begin
    uut:Test2
        PORT MAP(Go=>GO, CLK=>CLK100Mhz, Q=>Q);
       
    clock:process
    begin
    CLK100Mhz<='0'; wait for clk_prd/2;
    CLK100Mhz<='1'; wait for clk_prd/2;
    end process;
     
    process
    begin
        Go<='0';wait for 50ns;
        Go<='1';wait;
    end process;

end sim;
