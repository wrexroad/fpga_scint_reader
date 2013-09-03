library verilog;
use verilog.vl_types.all;
entity event_trig is
    port(
        evnt            : in     vl_logic;
        wtfull          : in     vl_logic;
        wtreq           : out    vl_logic
    );
end event_trig;
