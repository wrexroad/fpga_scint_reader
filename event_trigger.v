// Trigger on event positive edge if the FIFO is not full

module FF (input clk, input d, output reg q);
   always @ (posedge clk)
	   q <= d;
endmodule

module AND_1 (input a, input b, output reg f);
   always @ (a or b)
	   f <= a & b;
endmodule

module NOT_1 (input a, output reg not_a);
   always @ (a)
	   not_a <= ~a;
endmodule

module event_trig (input clk, input evnt, input wtfull, output reg wtreq); 
   wire sig, not_sig, test;
	FF ff1(clk, evnt, sig);
	NOT_1 not1(sig, not_sig);
	AND_1 and1(sig, evnt, test);
endmodule
