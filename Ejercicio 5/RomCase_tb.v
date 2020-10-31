module testbench();
    reg [6:0] direccion;
    wire [12:0] valor ;
    Rom memoria(direccion,valor);
    initial begin
        #1 $display("|Direccion| valor ");
        $display("-------------------------");
        $monitor("| %b | %b",direccion,valor);
    end
    initial begin
         direccion = 7'b10110; 
        #1 direccion = 7'b010; 
        #1 direccion = 7'b10110; 
        #1 direccion = 7'b0000111;
        #1 direccion = 7'b0000101; 
        #1 direccion = 7'b0000011; 
        #1 direccion = 7'b0001101; 
        #1 direccion = 7'b0001111; 
        #1 direccion = 7'b0001001; 
        #1 direccion = 7'b0001011; 
        #1 direccion = 7'b0010101; 
        #1 direccion = 7'b0010111; 
        #1 direccion = 7'b0010001; 
        #1 direccion = 7'b0011111; 
        #1 direccion = 7'b0011001; 
        #1 direccion = 7'b0100011; 
        #1 direccion = 7'b0100101; 
        #1 direccion = 7'b0101111; 
        #1 direccion = 7'b0101101;
        #1 direccion = 7'b0110101; 
        #1 direccion = 7'b0110011;
        #1 direccion = 7'b0111111; 
        #1 direccion = 7'b0111001;
        #1 direccion = 7'b1000111; 
        #1 direccion = 7'b1000011;
        #1 direccion = 7'b1000101; 
        #1 direccion = 7'b1000001; 
        #1 direccion = 7'b1001111;
        #1 direccion = 7'b1001011; 
        #1 direccion = 7'b1001101; 
        #1 direccion = 7'b1001001; 
        #1 direccion = 7'b1010111; 
        #1 direccion = 7'b1010001; 
        #1 direccion = 7'b1011111; 
        #1 direccion = 7'b1011011; 
        #1 direccion = 7'b1100011; 
        #1 direccion = 7'b1100111; 
        #1 direccion = 7'b1101011; 
        #1 direccion = 7'b1101111; 
        #1 direccion = 7'b1110111; 
        #1 direccion = 7'b1110101;
        #1 direccion = 7'b1111101; 
        #1 direccion = 7'b1111111; 
    end
endmodule