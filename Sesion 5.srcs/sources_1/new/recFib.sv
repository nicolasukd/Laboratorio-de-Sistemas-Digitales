`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.07.2019 22:28:31
// Design Name: 
// Module Name: recFib
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


module recFib(
    input logic [3:0]SW,
    output logic [7:0]AN,
    output logic CA,CB,CC,CD,CE,CF,CG,DP,
    output logic [3:0]LED
    );
    logic fib;
    logic [6:0]sevenSeg;
    assign AN = 8'b11111110;
    BCDto7 U0(.BCD(SW),.sevenSeg(sevenSeg));
    fibRec U1(.BCD(SW),.fib(fib));
    assign DP = ~fib;
    assign LED = SW;
    assign CA = sevenSeg[6];
    assign CB = sevenSeg[5];
    assign CC = sevenSeg[4];
    assign CD = sevenSeg[3];
    assign CE = sevenSeg[2];
    assign CF = sevenSeg[1];
    assign CG = sevenSeg[0];
endmodule
