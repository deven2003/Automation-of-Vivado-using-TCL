`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2024 02:41:33
// Design Name: 
// Module Name: multiply_not_synth
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


module multiply_not_synth(
    input [800000000:0] A,
    input [800000000:0] B,
    output [16:0] P
);

reg [1600000000:0] product; 

always @* begin
    product = A * B;
end

assign P = product; 

endmodule
