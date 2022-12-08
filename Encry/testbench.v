`include "AES_main.v"

module testbench();

    reg [127:0] data_in, key;
	reg clk;
	wire  [127:0] data_out;

    aes_main a(clk,data_in,key,data_out);

	initial
	begin
		$dumpfile ("myfile.vcd");
		$dumpvars;
	end

    initial begin
		clk = 0; forever #50 clk = ~clk;
	end
	
	initial begin
	// Resetting the machine
		key = 128'h00000000009876543210987654321098; data_in=128'h01234567890123456789012345678901;
	
	end

	initial 
    #50000   $finish;

endmodule