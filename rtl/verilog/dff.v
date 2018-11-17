//////////////////////////////////////////////////////////////////////
// File Name: dff.v
// Author: Farshad
// Email: farshad112@gmail.com
// Date Created: 17-Nov-2018
// Description: D Flipflop
// License: MIT opensource License v3.0
// Copyright (c) 2018, Farshad
/* ###################### License Begin ##############################
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
######################### License End ################################ */
///////////////////////////////////////////////////////////////////// 

`timescale 1ns/1ps

module dff(
			input wire D,		// input D
			input wire clk,		// input clk
			input wire rstn,	// reset (active low)
			output reg Q,		// output
			output wire Qb		// complementary output
		);

	assign Qb = ~Q;	
		
	always @(posedge clk or rstn) begin
		if(!rstn) begin
			Q = 0;
		end
		else begin
			Q = D;
		end		
	end
endmodule