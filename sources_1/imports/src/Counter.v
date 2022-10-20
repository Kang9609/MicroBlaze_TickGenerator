`timescale 1ns / 1ps

module Counter(
    input i_clk,
    input i_reset,
    input i_clear,
    output [13:0] o_counter
    );

    reg [13:0] r_counter = 0;
    assign o_counter = r_counter;

    always @(posedge i_clk, posedge i_reset, posedge i_clear) begin
        if (!i_reset || i_clear) begin
            r_counter <= 0;
        end
        else begin
            r_counter <= r_counter + 1;
        end
    end

endmodule
