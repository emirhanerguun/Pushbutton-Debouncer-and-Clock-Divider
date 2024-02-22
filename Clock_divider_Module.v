`timescale 1ns / 1ps

module Clock_divider_Module (input [1:0] sel,input clock_in,output reg out);

wire clock_out0;
wire clock_out1;
wire clock_out2;
wire clock_out3;
Clock_divider_sub  #(.DIVISOR(2)) DUT0(.clock_in(clock_in),.clock_out(clock_out0));
Clock_divider_sub  #(.DIVISOR(4)) DUT1(.clock_in(clock_in),.clock_out(clock_out1));
Clock_divider_sub  #(.DIVISOR(8)) DUT2 (.clock_in(clock_in),.clock_out(clock_out2));
Clock_divider_sub  #(.DIVISOR(16)) DUT3(.clock_in(clock_in),.clock_out(clock_out3));


 always @ (*)
 begin
 case(sel) 
2'b00 : out=clock_out0;
2'b01 : out=clock_out1;
2'b10 : out=clock_out2;
2'b11 : out=clock_out3;
default : out=clock_out0;
endcase
end
endmodule