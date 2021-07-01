`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2021 04:12:18 AM
// Design Name: 
// Module Name: cronometru_test
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


module cronometru_test(MIN_BCD0, MIN_BCD1, SEC_BCD0, SEC_BCD1, clk, reset, pauza);
    input clk, reset, pauza;
    output [3:0] MIN_BCD0, MIN_BCD1, SEC_BCD0, SEC_BCD1;
    wire SEC_carry_out, MIN_carry_out;
    wire [5:0]SEC_valoare_bin;
    wire [5:0]MIN_valoare_bin;

    numarator n1(SEC_valoare_bin, SEC_carry_out, clk, reset, pauza);
    numarator n2(MIN_valoare_bin, MIN_carry_out, SEC_carry_out, reset, pauza);
    bin2bcd c1(SEC_BCD1, SEC_BCD0, SEC_valoare_bin);
    bin2bcd c2(MIN_BCD1, MIN_BCD0, MIN_valoare_bin);
endmodule
