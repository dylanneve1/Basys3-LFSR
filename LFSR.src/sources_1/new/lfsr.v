`timescale 1ns / 1ps

module lfsr(input clk, sh_en, rst_n, output [15:0] Q_out, output reg max_tick_reg, output reg [15:0] ticks);
    
    localparam seed = 16'b0000000101000101;
    
    reg [15:0] Q_state;
    wire [15:0] Q_ns;
    wire Q_fb;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            Q_state <= seed;
            max_tick_reg <= 1'b0;
            ticks <= 16'b0;
        end else if (sh_en) begin
            Q_state <= Q_ns;
            if (Q_ns == seed) begin
                max_tick_reg <= 1'b1;
                ticks <= ticks + 1;
            end else
                max_tick_reg <= 1'b0;
        end
    end
    
    // Next State Logic
    assign Q_fb = ~(Q_state[15] ^ Q_state[14] ^ Q_state[12] ^ Q_state[3]);
    assign Q_ns = {Q_state[14:0], Q_fb};
    
    // Output Logic
    assign Q_out = Q_state;
    
endmodule
