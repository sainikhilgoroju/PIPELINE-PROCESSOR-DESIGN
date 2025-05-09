`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2025 08:31:23
// Design Name: 
// Module Name: cpu_tb
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


`timescale 1ns / 1ps

module cpu_tb;

    reg clk;
    cpu uut (.clk(clk));

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Clock period of 10ns
    end

    initial begin
        #100;
        $stop; // Stop simulation after some cycles
    end
endmodule
