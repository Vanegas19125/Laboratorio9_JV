module  FlipFlopD1b(input d,enable,reset,clk,output reg q);
    always @(posedge clk, posedge reset) begin  
        if (reset) q = 0; 
        else if (enable) q = d; 
    end
endmodule

module FlipFlopJK(input wire J,K, enable, reset, clk, output wire q );
    wire d;
    assign d = ~K & q | J & ~q; 
    FlipFlopD1b FF(d,enable,reset,clk,q);
endmodule