`timescale 1ns / 1ps

module lfsr
    #(parameter seed = 10'h26E)
    (input clk, sh_en, rst_n, output [15:0] Q_out, output reg max_tick_reg);
    
    reg [15:0] Q_state;
    wire [15:0] Q_ns;
    wire Q_fb;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            Q_state <= seed;
            max_tick_reg <= 1'b0;
        end else if (sh_en) begin
            Q_state <= Q_ns;
            if (Q_ns == seed)
                max_tick_reg <= 1'b1;
        end
    end
    
    // Next State Logic
    assign Q_fb = Q_state[15] ^ Q_state[14] ^ Q_state[12] ^ Q_state[3];
    assign Q_ns = {Q_state[14:0], Q_fb};
    
    // Output Logic
    assign Q_out = Q_state;
    
endmodule
