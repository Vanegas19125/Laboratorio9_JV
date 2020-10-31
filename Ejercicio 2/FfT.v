module  FlipFlopD1b(input d,enable,reset,clk,output reg q);
    always @(posedge clk, posedge reset) begin  
        if (reset) q = 0; 
        else if (enable) q = d; 
    end
endmodule


module FlipFlopT(input enable, reset, clk, output wire q );

    FlipFlopD1b FF(~q,enable, reset,clk,q); //Ecuacion obtenida de LogicFriday
endmodule