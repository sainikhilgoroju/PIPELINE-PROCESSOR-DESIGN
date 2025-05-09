module cpu (
    input wire clk
);

    reg [31:0] pc = 0;

    wire [31:0] instr, d1, d2, alu_out, mem_out;
    wire [2:0] alu_op;
    
    // Fetch stage
    instr_mem IM(.pc(pc), .instruction(instr));

    // Decode Stage
    register_file RF(
        .clk(clk), .we(1'b1),
        .r1(instr[25:21]), .r2(instr[20:16]), 
        .wd(instr[15:11]), .wdata(alu_out),
        .d1(d1), .d2(d2)
    );

    // Execution Stage
    alu ALU(.a(d1), .b(d2), .op(instr[31:29]), .result(alu_out));

    // Write Back Stage
    always @(posedge clk) begin
        pc <= pc + 4;
    end

endmodule
