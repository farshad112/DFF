//////////////////////////////////////////////////////////////////////
// File Name: simple_tb.sv
// Author: Farshad
// Email: farshad112@gmail.com
// Date Created: 17-Nov-2018
// Description: DFF Testbench
// License: MIT opensource License v3.0
// Copyright (c) 2018, Farshad
/* ###################### License Begin ##############################
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
######################### License End ################################ */
///////////////////////////////////////////////////////////////////// 
`timescale 1ns/1ps

module dff_tb();
			reg D;		// input D
			reg clk;		// input clk
			reg rstn;	// reset (active low)
			wire Q;		// output
			wire Qb;		// complementary output
    
	// clock generation block
	initial begin
		clk = 0;
		forever begin
			#(10ns) clk = ~clk;
		end // forever
	end	

	// Test block
	initial begin
		rstn = 0;
		#40ns;
		rstn = 1;
		D = 0;
		#20ns;
		D = 1;
	end // initial

	// monitor results
	initial begin
		$monitor("@:%0t :: rstn:%0b, D:%0b, Q:%0b, Qb:%0b", $time, rstn, D, Q, Qb);
	end	

	// finish simulation
	initial begin
		# 1000ns;
		$finish();
	end // initial

    // Instantiation of DUT
    dff D_DUT(
    			.D(D),
    			.clk(clk),
    			.rstn(rstn),
    			.Q(Q),
    			.Qb(Qb)
    	);
endmodule 