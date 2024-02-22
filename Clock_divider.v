`timescale 1ns / 1ps

module Clock_divider_sub #(parameter DIVISOR=2) (

input clock_in,
//input [1:0] sel,
//output reg out,
output wire clock_out
    );
    
 reg[31:0] counter=32'd0;
 
 
assign clock_out = (counter<DIVISOR/2) ? 1'b1:1'b0;

 always @ (posedge clock_in)
 begin
  counter <=counter+1;
  if(counter>=(DIVISOR-1)) begin
   counter <=0; end
  
 end
endmodule