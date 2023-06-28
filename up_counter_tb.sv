`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2023 11:51:40 PM
// Design Name: 
// Module Name: up_counter_tb
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


module up_counter_tb();

    parameter width = 4;
    
    logic clk;
    logic rst;
    logic [width-1:0] count;
    
    up_counter dut(.*);
    
    always #5 clk = ~clk;
    
    initial 
        begin
            clk = 0;
            rst = 0;
            #20;
            rst = 1;
            #200;
            $finish();
        end
endmodule
