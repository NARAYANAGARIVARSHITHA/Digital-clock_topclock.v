`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 11:27:52 PM
// Design Name: 
// Module Name: Top
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


module Top(
input clk,
input [13:0]bin,
output DP,
output [3:0] digit_sel,
output [6:0]seg
    );
    wire [15:0]bcd;
  
    bin2bcd uut1(.bin(bin),.bcd(bcd));
    
    display_bcd_7segment_4digit uut2 (.bcd(bcd),
 .seg(seg), .digit_sel(digit_sel), .DP(DP), .clk(clk) );
    
endmodule
