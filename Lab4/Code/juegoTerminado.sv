/*
Modulo que se encarga de determinar si el juego se ha acabado, ya sea que alguno de los jugadores
haya ganado o que hayan empatado, ya que esto ocurre cuando ya o quedan mas casillas vacias
entonces este se encarga de detectar esto.
*/
module juegoTerminado(input [1:0] pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, output wire juegoFinalizado);
    
    wire temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8;
    // detect no more space     
    assign temp0 = pos0[1] | pos0[0];
    assign temp1 = pos1[1] | pos1[0];
    assign temp2 = pos2[1] | pos2[0];
    assign temp3 = pos3[1] | pos3[0];
    assign temp4 = pos4[1] | pos4[0];
    assign temp5 = pos5[1] | pos5[0];
    assign temp6 = pos6[1] | pos6[0];
    assign temp7 = pos7[1] | pos7[0];
    assign temp8 = pos8[1] | pos8[0];
    // output
    assign juegoFinalizado = ((((((((temp0 & temp1) & temp2) & temp3) & temp4) & temp5) & temp6) & temp7) & temp8);

endmodule 