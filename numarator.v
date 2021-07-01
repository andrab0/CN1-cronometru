`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2021 04:07:05 AM
// Design Name: 
// Module Name: numarator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module numarator(valoare_bin, carry_out, clk_out, reset, pauza);
input clk_out, reset, pauza;
output [5:0]valoare_bin;
output carry_out;
reg carry_out;
reg [5:0]valoare_bin;

always @(posedge clk_out,posedge reset)
    begin
       if(reset) begin
           valoare_bin = 6'b000000;
           carry_out = 0;
           end
       else begin
         if(~pauza)
               begin
                valoare_bin = valoare_bin + 1;
                carry_out = 0;
                if(valoare_bin > 59)
                    begin
                        valoare_bin = 6'b000000;
                        carry_out = 1'b1;
                    end
                end
           end      
    end
endmodule
