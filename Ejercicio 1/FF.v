module  FFD1b(input d,enable,reset,clk,output reg q);

    always @(posedge clk, posedge reset) begin //Reset
        if (reset) q = 0; //Si se activa el reset, la salida es 0
        else if (enable) q = d; //si el enable esta en 1, y el reset en 0, D pasa a Q
        //
    end

endmodule

module FFD2b(input wire [1:0] d, input wire enable, reset, clk, output wire [1:0] q );

    FFD1b FF1(d[0], enable, reset,clk, q[0]);
    FFD1b FF2(d[1], enable, reset,clk, q[1]);
    //Flip flop 1 y 2

endmodule

module FFD4b(input [3:0] d, input wire enable, reset, clk, output wire [3:0] q );

    FFD2b FF1(d[1:0], enable, reset,clk, q[1:0]); 
    FFD2b FF2(d[3:2], enable, reset,clk, q[3:2]); 
    //Flip Flops de los bits 0 y 1, 2 y 3
endmodule