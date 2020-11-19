module (input wire i_clk,
				output wire o_baud_tick);

	localparam SIZE_DIV_CNT = 10;

	reg [SIZE_DIV_CNT-1:0] BaudDivCnt;

	always @(posedge i_clk) begin
		BaudDivCnt <= BaudDivCnt + 1;
	end

	assign o_baud_tick = BaudDivCnt[SIZE_DIV_CNT-1];

endmodule
