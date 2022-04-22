`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2022 09:13:16
// Design Name: 
// Module Name: wallaceAdder
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


module wallaceAdder(S,A,B,C);
input [3:0]A,B,C;
output [5:0]S;
wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9;
fullAdder FA1(S[0],N0,A[0],B[0],C[0]);
fullAdder FA2(N1,N2,A[1],B[1],C[1]);
fullAdder FA3(N3,N4,A[2],B[2],C[2]);
fullAdder FA4(N5,N6,A[3],B[3],C[3]);
halfAdder HA1(S[1],N7,N1,N0);
fullAdder FA5(S[2],N8,N2,N3,N7);
fullAdder FA6(S[3],N9,N4,N5,N8);
halfAdder HA2(S[4],S[5],N6,N9);
endmodule
