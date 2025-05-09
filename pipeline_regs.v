module pipeline_regs (
    input  wire        clk,
    input  wire [31:0] instr_in, d1_in, d2_in,
    output reg [31:0] instr_out, d1_out, d2_out
);

    always @(posedge clk) begin
        instr_out <= instr_in;
        d1_out    <= d1_in;
        d2_out    <= d2_in;
    end
endmodule
