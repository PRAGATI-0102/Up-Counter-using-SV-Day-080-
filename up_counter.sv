`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2023 11:48:08 PM
// Design Name: 
// Module Name: up_counter
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


module up_counter#(parameter width = 4)(
    input logic clk, 
    input logic rst, 
    output logic [width-1:0] count);

    always@(posedge clk, negedge rst)
        begin
            if(~rst)
                begin 
                    count <= 0;
                end
            else
                begin
                    count <= count + 1;
                end
        end
endmodule
