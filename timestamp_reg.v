//This 32-bit register will grab the value from nano_timer
module timestamp_reg (
	input evnt,
	input [31:0] nano_timer_out,
	output reg [31:0] time_stamp
); 

	// Trigger on the rising edge of an event from the Front End Board
	always @ (posedge evnt)
	begin 
	   time_stamp = nano_timer_out;
	end
endmodule