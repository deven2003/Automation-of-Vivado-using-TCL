`timescale 1ns / 1ps

module dff(D,clk,Q);
input D,clk;
output reg Q;
always@(posedge clk)
Q<=D;
endmodule