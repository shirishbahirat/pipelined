module tb_ifid;

reg reset;
reg [31:0] instruction;
wire [31:0] ifid_reg;

initial begin
    $from_myhdl(
        reset,
        instruction
    );
    $to_myhdl(
        ifid_reg
    );
end

ifid dut(
    reset,
    instruction,
    ifid_reg
);

endmodule
