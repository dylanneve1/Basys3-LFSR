`timescale 1ns/1ps

module lfsr_tb;

    reg clk, sh_en, rst_n;
    wire [15:0] Q_out;
    wire max_tick_reg;

    lfsr uut (
        .clk(clk),
        .sh_en(sh_en),
        .rst_n(rst_n),
        .Q_out(Q_out),
        .max_tick_reg(max_tick_reg)
    );

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin
        rst_n = 0;
        sh_en = 0;    // Disable shifting during reset
        #100;         // Hold reset for 10 cycles (10 ns period => 100 ns)
        rst_n = 1;    // Deassert reset
        sh_en = 1;    // Enable shifting after reset

        #15000;
        $finish;
    end

    initial begin
        $monitor("Time=%t, Q_out=%h, max_tick_reg=%b", $time, Q_out, max_tick_reg);
    end

endmodule