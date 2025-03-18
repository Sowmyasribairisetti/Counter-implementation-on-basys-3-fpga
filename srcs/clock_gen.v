`timescale 1ns / 1ps

module clock_gen(input clk, input rst, output reg clk_1s=0);
    
    
    reg [26:0] counter=0;
    always @(posedge clk) begin
        if(counter == 27'b0101_1111_0101_1110_0001_0000_000) begin
            counter <= 27'b000_0000_0000_0000_0000_0000_0000;
            clk_1s <= ~clk_1s;
        end
        else begin
            counter <= counter + 1;
            clk_1s <= clk_1s;
        end
    end  
    
    /*
    reg [3:0] counter=4'b0000;
    always @(posedge clk) begin
        if(counter == 4'b1010) begin
            counter <= 4'b0000;
            clk_1s <= ~clk_1s;
        end
        else begin
            counter <= counter + 1;
            clk_1s <= clk_1s;
        end
    end
    */
       
endmodule
