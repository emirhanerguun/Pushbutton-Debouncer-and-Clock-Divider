`timescale 1ns / 1ps

module Clock_divider_tb();
reg clock_in=1'b1;
wire clock_out;
reg [1:0] sel=2'b00;
Clock_divider_2 uut (.clock_in(clock_in),.out(clock_out),.sel(sel));

initial
begin
sel=2'b00;
#500
sel=2'b01;
#500
sel=2'b10;
#500
sel=2'b11; 
#500;
end 

always 
begin
#10 clock_in=~clock_in;
end
endmodule
