`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2022 11:11:47
// Design Name: 
// Module Name: wallaceAdderTB
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


module wallaceAdderTB;
reg [3:0]A,B,C;
wire [5:0]S;

wallaceAdder uut(
        .A(A),
        .B(B),
        .C(C),
        .S(S));

initial begin
    A <= 4'b0000;
    B <= 4'b0000;
    C <= 4'b0000;
end
   
always begin
    A <= 4'b0001;
    B <= 4'b0010;
    C <= 4'b0100;
    #10;
    A <= 4'b1001;
    B <= 4'b1100;
    C <= 4'b1111;
    #10;
    A <= 4'b1111;
    B <= 4'b1111;
    C <= 4'b1111;
    #10;
end

endmodule
