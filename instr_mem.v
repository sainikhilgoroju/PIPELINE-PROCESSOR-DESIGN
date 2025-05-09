`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2025 08:27:33
// Design Name: 
// Module Name: instr_mem
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


module instr_mem (
    input  wire [31:0] pc,         // Program counter
    output reg  [31:0] instruction // Output instruction
);

    reg [31:0] memory [0:15]; // Instruction memory (16 locations)

    initial begin
        // Example Instructions (ADD, SUB, LOAD)
        memory[0]  = 32'b000000_00010_00011_00001_00000000000; // ADD R1, R2, R3
        memory[1]  = 32'b000001_00100_00101_00110_00000000000; // SUB R6, R4, R5
        memory[2]  = 32'b000010_00001_00000_00000_00000010000; // LOAD R1, [16]
        memory[3]  = 32'b000000_00110_00011_00111_00000000000; // ADD R7, R6, R3
    end

    always @(*) begin
        instruction = memory[pc >> 2]; // Fetch instruction (PC is byte-addressed)
    end
endmodule
