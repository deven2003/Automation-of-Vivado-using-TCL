`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2024 13:06:33
// Design Name: 
// Module Name: multiply
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


module multiply(
    input [8:0] A,
    input [8:0] B,
    output [16:0] P
);

reg [16:0] product; 

always @* begin
    product = A * B;
end

assign P = product; 

endmodule
