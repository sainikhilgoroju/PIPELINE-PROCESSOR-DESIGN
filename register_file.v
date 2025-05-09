module register_file (
    input  wire         clk, 
    input  wire         we,       // Write Enable
    input  wire [4:0]   r1, r2,   // Read Registers
    input  wire [4:0]   wd,       // Write Register
    input  wire [31:0]  wdata,    // Write Data
    output wire [31:0]  d1, d2    // Register Outputs
);

    reg [31:0] registers [0:31];

    // Read registers
    assign d1 = registers[r1];
    assign d2 = registers[r2];

    always @(posedge clk) begin
        if (we) registers[wd] <= wdata; // Write data on positive clock edge
    end
endmodule
