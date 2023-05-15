library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_UNSIGNED.all;


entity adder is
    port(
        
        adder_a: in std_logic_vector(15 downto 0);
        adder_b: in std_logic_vector(15 downto 0);

        adder_out : out std_logic_vector(15 downto 0)
  
    );
end entity adder ;


architecture working of adder is
    
    begin
        adder_process:process(adder_a,adder_b)
        begin
           adder_out <= adder_a + adder_b;
        end process adder_process;
end architecture working;
    