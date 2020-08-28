module RAM (KEY,SW,HEX0,HEX2,HEX4,HEX5);
	input [9:0] SW;
	input [0:0]KEY;
	output [6:0] HEX0, HEX2, HEX4, HEX5;
	wire [3:0] q;
	ram32x4 ram(
		.address(SW[8:4]),
		.clock(~KEY[0]),
		.data(SW[3:0]),
		.wren(SW[9]),
		.q(q)
	);
	
	HEX front_address(
		.HEX0(SW[8]),
		.B(HEX5)
		);
	
	HEXr rear_address(
		.HEX0(SW[7:4]),
		.B(HEX4)
		);
	
	HEX input_data(
		.HEX0(SW[3:0]),
		.B(HEX2)
		);
		
	HEX memory_data(
		.HEX0(q),
		.B(HEX0)
		);

endmodule

module HEX(HEX0, B);
input [3:0] B;
output [6:0] HEX0;

     assign HEX0[0] = (B[0] & B[1] & ~B[2] & B[3]) | (~B[0] & ~B[1] & B[2] & ~B[3]) | (B[0] & ~B[1] & B[2] & B[3]) | (B[0] & ~B[1] & ~B[2] & ~B[3]);
     assign HEX0[1] = ~B[0] & B[2] & B[3] | ~B[0] & B[1] & B[2] | B[0] & B[1] & B[3] | B[0] & ~B[1] & B[2] & ~B[3];
	  assign HEX0[2] = ~B[0] & B[1] & ~B[2] & ~B[3] | ~B[0] & B[2] & B[3] | B[1] & B[2] & B[3];
	  assign HEX0[3] = ~B[0] & ~B[1] & B[2] & ~B[3] | ~B[0] & B[1] & ~B[2] & B[3] | B[0] & B[1] & B[2] | B[0] & ~B[1] & ~B[2] & ~B[3];
	  assign HEX0[4] = ~B[1] & B[2] & ~B[3] | B[0] & ~B[3] | B[0] & ~B[1] & ~B[2];
     assign HEX0[5] = B[1] & ~B[2] & ~B[3] | B[0] & ~B[2] & ~B[3] | B[0] & B[1] & ~B[3] | B[0] & ~B[1] & B[2] & B[3];
	  assign HEX0[6] = ~B[1] & ~B[2] & ~B[3] | ~B[0] & ~B[1] & B[2] & B[3] | B[0] & B[1] & B[2] & ~B[3];
endmodule  
