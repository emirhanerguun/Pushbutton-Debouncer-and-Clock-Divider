`timescale 1ns / 1ps



module debounce(
input pb,clk_in,
output led,
output reg [3:0] count=4'b0
);
wire clk_out;
wire Q1,Q2,Q2_bar;



Clock_divider u1(clk_in,clk_out);
D_FF d1(.clk(clk_out),.D(pb),.Q(Q1));
D_FF d2(.clk(clk_out),.D(Q1),.Q(Q2));

assign Q2_bar=~Q2;
//assign led=Q1 & Q2_bar;
assign led=Q2;

always @(posedge led)
begin
count<=count+4'b1;
end

endmodule