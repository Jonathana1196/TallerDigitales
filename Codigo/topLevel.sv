module topLevel (A, B, S, Disp1, Disp2, F);

    input logic[3:0] A, B;//Entradas
	
    logic [3:0] Q;// Resultado Binario
	
    input logic[4:0] S; ///Selector de operadores
	
    wire [3:0] w1,w2; //Decenas y Unidades del rsultado
	
    output logic[4:0] F; //Flags
	output logic[7:0] Disp1,Disp2; //Display de 7 segmentos
	
    alu #(4) alu_module(A, B,S, Q, F);
	multiplicacion #(4) mult_module(Q,4'b1010,w1);//Calcular Decenas
	modulo #(4) mod_module(Q,4'b1010,w2);//Calcular unidades
	decoderBCD decodificador1(w1,Disp1);// Decodificador para Decenas
	decoderBCD decodificador2(w2,Disp2);// Decodificador para Unidades

endmodule 