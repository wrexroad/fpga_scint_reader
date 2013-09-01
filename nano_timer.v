//This is a 32-bit counter that is used to keep track of nanoseconds
//between GPS PPS signal
module nano_timer (input clock , output reg [31:0] nano_timer_out); 

	// Trigger on the rising edge of the system clock
	always @ (posedge clock)
	begin 
	   nano_timer_out <= #1 nano_timer_out + 1;
	end 
endmodule