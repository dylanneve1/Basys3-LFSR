`timescale 1ns / 1ps

module lfsr
    #(parameter seed = 10'h26E)
    (input clk, rst_n, output reg max_tick_reg, output [9:0] Q_out);
    
    reg [9:0] Q_state;
    wire [9:0] Q_ns;
    wire Q_fb;
    
    assign Q_fb = Q_state[9] ^ Q_state[6];
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            Q_state <= seed;
            max_tick_reg <= 1'b0;
        end else begin
            if ((Q_state != seed) && ({Q_state[8:0], Q_fb} == seed))
                max_tick_reg <= 1'b1;
            else
                max_tick_reg <= 1'b0;
            Q_state <= {Q_state[8:0], Q_fb};
        end
    end
    
    // Output Logic
    assign Q_out = Q_state;
    
endmodule
