`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2021 04:32:19 AM
// Design Name: 
// Module Name: cronometru_simulare
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


module cronometru_simulare;
    reg clk_out, reset, pauza;
    //wire carry_out1;
    wire [3:0]MIN_BCD0, MIN_BCD1, SEC_BCD0, SEC_BCD1;

    cronometru_test c1(MIN_BCD0, MIN_BCD1, SEC_BCD0, SEC_BCD1, clk_out, reset, pauza);


///numarator n1(valoare_bin1, carry_out1, clk_out, reset, pauza);
///numarator_min n2(valoare_bin2, carry_out1, reset, pauza);

always #1 clk_out = ~clk_out;

initial
    begin
        clk_out = 1'b1;
        reset = 1'b1;
        pauza = 1'b0;
        #1 reset = 1'b0;
    end
endmodule
