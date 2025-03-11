`timescale 1ns / 1ps

module lfsr
    #(parameter seed = 10'h26E)
    (input clk, sh_en, rst_n, output [9:0] Q_out);
    
    reg [9:0] Q_state;
    wire [9:0] Q_ns;
    
    always @(posedge clk) begin
        if (!rst_n)
            Q_state <= seed;
        else if (sh_en)
            Q_state <= Q_ns;
    end
    
    // Next State Logic
    assign Q_fb = Q_state[9] ^ Q_state[6];
    assign Q_ns = {Q_state[8:0],Q_fb};
    
    // Output Logic
    assign Q_out = Q_state;
    
endmodule
