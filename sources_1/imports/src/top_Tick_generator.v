`timescale 1ns / 1ps

module top_Tick_generator
(
    input i_clk,
    input i_reset,
    input i_clear,
    output [13:0] o_tick
);

    wire w_clk_1khz;

    clock_Divider unit0
    (
        .i_clk(i_clk),
        .i_reset(i_reset),
        .o_clk(w_clk_1khz)
    );    
    
    
    Counter unit1
    (
        .i_clk(w_clk_1khz),
        .i_reset(i_reset),
        .i_clear(i_clear),
        .o_counter(o_tick)
    );
endmodule
