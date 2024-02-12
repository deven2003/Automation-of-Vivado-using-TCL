`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2024 11:18:23
// Design Name: 
// Module Name: mux21
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux21(
    input a,
    input b,
    input s,
    output reg q
    );
always@(*)
begin
if(s)
q<=b;
else
q<=a;
end
endmodule
