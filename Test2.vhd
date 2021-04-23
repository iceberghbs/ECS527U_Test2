library IEEE;
use IEEE.std_logic_1164.all;

entity Test2 is
port (
    Go:  in  std_logic;
    CLK: in  std_logic;
    Q:   out std_logic_vector(1 downto 0)
);
end Test2;

architecture Test2_arch of Test2 is
signal D0, D1, Q0, Q1 : std_logic;
signal P : std_logic;
begin
    -- LOW ACTIVE
    P <= NOT Go;
    -- NAND GATE
    D0 <= NOT (Q0 AND Q1);
    -- INPUT OF SECOND D FLIP FLOP
    D1 <= Q0;
    -- OUTPUT
    Q(1) <= Q1;
    Q(0) <= Q0;
    
    updateDFF:process(CLK)
    begin
    
        if P='1' then  -- RESET
            Q1 <= '1';
            Q0 <= '1';
        elsif rising_edge(CLK) then  -- next state
            Q1 <= D1;
            Q0 <= D0;
        end if;
    
    end process;

end Test2_arch;
