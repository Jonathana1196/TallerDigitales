/**
Modulo que cuando se presiona el boton este codificara la posicionJugada para escribirla en los
registros correspondientes.
*/
module decodificadorPos(input[3:0] posicionJugada, input habilitarJugador, output wire [15:0] habilitarJugada);
    reg[15:0] temp1;
    assign habilitarJugada = (habilitarJugador == 1'b1) ? temp1 : 16'd0;
    always @(*) begin
        case(posicionJugada)
            4'd0 : temp1 <= 16'b0000000000000001;
            4'd1 : temp1 <= 16'b0000000000000010; 
            4'd2 : temp1 <= 16'b0000000000000100;
            4'd3 : temp1 <= 16'b0000000000001000;
            4'd4 : temp1 <= 16'b0000000000010000;
            4'd5 : temp1 <= 16'b0000000000100000;
            4'd6 : temp1 <= 16'b0000000001000000;
            4'd7 : temp1 <= 16'b0000000010000000;
            4'd8 : temp1 <= 16'b0000000100000000;
            4'd9 : temp1 <= 16'b0000001000000000;
            4'd10: temp1 <= 16'b0000010000000000;
            4'd11: temp1 <= 16'b0000100000000000;
            4'd12: temp1 <= 16'b0001000000000000;
            4'd13: temp1 <= 16'b0010000000000000;
            4'd14: temp1 <= 16'b0100000000000000;
            4'd15: temp1 <= 16'b1000000000000000;
            default: temp1 <= 16'b0000000000000001; 
        endcase 
    end 
endmodule 