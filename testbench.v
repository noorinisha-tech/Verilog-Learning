module tb;

    reg  [3:0] a, b;      // inputs
    wire [4:0] sum;       // output

    // Instantiate DUT
    adder uut (
        .a(a),
        .b(b),
        .sum(sum)
    );

    initial begin
        // Dump waveform
        $dumpfile("output.vcd");
        $dumpvars(0, tb);

        // Test vectors
        a = 4'd0;  b = 4'd0;
        #5;

        a = 4'd3;  b = 4'd2;
        #5;

        a = 4'd7;  b = 4'd1;
        #5;

        a = 4'd15; b = 4'd1;   // overflow case
        #5;

        $finish;
    end

endmodule 