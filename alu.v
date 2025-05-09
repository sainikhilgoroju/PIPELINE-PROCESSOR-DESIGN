module alu (
    input  wire [31:0] a, b,
    input  wire [2:0]  op,  // Operation selector
    output reg  [31:0] result
);

    always @(*) begin
        case (op)
            3'b000: result = a + b; // ADD
            3'b001: result = a - b; // SUB
            default: result = 0;
        endcase
    end
endmodule
