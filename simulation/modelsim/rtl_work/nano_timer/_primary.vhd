library verilog;
use verilog.vl_types.all;
entity nano_timer is
    port(
        clock           : in     vl_logic;
        nano_timer_out  : out    vl_logic_vector(31 downto 0)
    );
end nano_timer;
