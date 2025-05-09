module data_mem (
    input  wire        clk,
    input  wire [31:0] addr, 
    input  wire [31:0] wdata,
    input  wire        we, // Write Enable
    output reg [31:0]  rdata
);

    reg [31:0] memory [0:31];

    initial begin
        memory[4] = 32'd100; // Example: Preload memory at address 16 with 100
    end

    always @(posedge clk) begin
        if (we) memory[addr >> 2] <= wdata; // Memory Write
        rdata <= memory[addr >> 2];         // Memory Read
    end
endmodule
