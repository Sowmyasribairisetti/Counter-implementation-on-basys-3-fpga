`timescale 1ns / 1ps

module test_bench();
    reg clk = 0;
    reg rst;
    wire [6:0] LED_out;
    wire [3:0] LED_anode;
    
    counter dut(clk,rst,LED_out,LED_anode);
    
    always #10 clk=~clk;
    
    initial begin
        rst = 1;
        #250 rst =0;
        
    end


endmodule
