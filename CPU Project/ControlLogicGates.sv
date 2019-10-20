// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus Prime License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// Generated by Quartus Prime Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition
// Created on Tue Nov 15 21:44:24 2016

// synthesis message_off 10175

`timescale 1ns/1ns

module ControlLogicGates (
    input reset, input clock, input r, input si, input ze, input eq, input ov, input ready, input [4:0] opi, input [31:0] ir,
    output tr_load, output tr_wdb, output [2:0] op, output reg_wdb, output reg_we, output [4:0] reg_ra, output ac_wdb, output ac_lmul, output ac_lreg, output ac_load, output ir_wab, output ir_wdb, output ir_ldb, output ir_load, output dr_lmul, output dr_load, output sp_wab, output sp_dec, output sp_inc, output sp_set, output pc_wab, output pc_wdb, output pc_lad, output pc_clear, output pc_inc, output pc_load, output pc_set, output ar_load, output mem_wab, output mem_wdb, output start, output rwn, output test1, output test2, output test3);

    enum int unsigned { state1=0, state2=1, state4=2, state5=3, state7=4, state6=5, state3=6, state8=7, state9=8, state10=9 } fstate, reg_fstate;

    always_ff @(posedge clock)
    begin
        if (clock) begin
            fstate <= reg_fstate;
        end
    end

    always_comb begin
        if (reset) begin
            reg_fstate <= state1;
            tr_load <= 1'b0;
            tr_wdb <= 1'b0;
            op <= 3'b000;
            reg_wdb <= 1'b0;
            reg_we <= 1'b0;
            reg_ra <= 5'b00000;
            ac_wdb <= 1'b0;
            ac_lmul <= 1'b0;
            ac_lreg <= 1'b0;
            ac_load <= 1'b0;
            ir_wab <= 1'b0;
            ir_wdb <= 1'b0;
            ir_ldb <= 1'b0;
            ir_load <= 1'b0;
            dr_lmul <= 1'b0;
            dr_load <= 1'b0;
            sp_wab <= 1'b0;
            sp_dec <= 1'b0;
            sp_inc <= 1'b0;
            sp_set <= 1'b0;
            pc_wab <= 1'b0;
            pc_wdb <= 1'b0;
            pc_lad <= 1'b0;
            pc_clear <= 1'b0;
            pc_inc <= 1'b0;
            pc_load <= 1'b0;
            pc_set <= 1'b0;
            ar_load <= 1'b0;
            mem_wab <= 1'b0;
            mem_wdb <= 1'b0;
            start <= 1'b0;
            rwn <= 1'b0;
            test1 <= 1'b0;
            test2 <= 1'b0;
            test3 <= 1'b0;
        end
        else begin
            tr_load <= 1'b0;
            tr_wdb <= 1'b0;
            op <= 3'b000;
            reg_wdb <= 1'b0;
            reg_we <= 1'b0;
            reg_ra <= 5'b00000;
            ac_wdb <= 1'b0;
            ac_lmul <= 1'b0;
            ac_lreg <= 1'b0;
            ac_load <= 1'b0;
            ir_wab <= 1'b0;
            ir_wdb <= 1'b0;
            ir_ldb <= 1'b0;
            ir_load <= 1'b0;
            dr_lmul <= 1'b0;
            dr_load <= 1'b0;
            sp_wab <= 1'b0;
            sp_dec <= 1'b0;
            sp_inc <= 1'b0;
            sp_set <= 1'b0;
            pc_wab <= 1'b0;
            pc_wdb <= 1'b0;
            pc_lad <= 1'b0;
            pc_clear <= 1'b0;
            pc_inc <= 1'b0;
            pc_load <= 1'b0;
            pc_set <= 1'b0;
            ar_load <= 1'b0;
            mem_wab <= 1'b0;
            mem_wdb <= 1'b0;
            start <= 1'b0;
            rwn <= 1'b0;
            test1 <= 1'b0;
            test2 <= 1'b0;
            test3 <= 1'b0;
            case (fstate)
                state1: begin
                    reg_fstate <= state2;

                    pc_load <= 1'b1;

                    test1 <= 1'b1;

                    sp_set <= 1'b1;
                end
                state2: begin
                    if (ready)
                        reg_fstate <= state3;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state2;

                    pc_clear <= 1'b1;

                    mem_wdb <= 1'b1;

                    pc_set <= 1'b1;

                    test2 <= 1'b1;

                    pc_wab <= 1'b1;
                end
                state4: begin
                    if (((((((((opi[4:0] == 5'b11100) & r) & si) & ze) & eq) & ov) & ready) & ir[3]))
                        reg_fstate <= state10;
                    else if ((opi[4:0] == 5'b00001))
                        reg_fstate <= state5;
                    else if (((opi[4:0] == 5'b10011) & ready))
                        reg_fstate <= state8;
                    else if ((opi[4:0] == 5'b10100))
                        reg_fstate <= state9;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state4;

                    ir_ldb <= 1'b1;

                    ir_load <= 1'b1;

                    mem_wab <= 1'b1;

                    mem_wdb <= 1'b1;

                    pc_set <= 1'b1;
                end
                state5: begin
                    reg_fstate <= state6;

                    ac_load <= 1'b1;

                    reg_ra <= ir[21:17];

                    ac_lreg <= 1'b1;
                end
                state7: begin
                    reg_fstate <= state2;

                    ac_wdb <= 1'b1;

                    reg_we <= 1'b1;

                    reg_wdb <= 1'b1;
                end
                state6: begin
                    reg_fstate <= state7;

                    op <= 3'b001;

                    tr_load <= 1'b1;

                    ac_lmul <= 1'b1;

                    ac_load <= 1'b1;
                end
                state3: begin
                    if (ready)
                        reg_fstate <= state4;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state3;

                    ir_load <= 1'b1;

                    pc_clear <= 1'b1;

                    mem_wab <= 1'b1;

                    mem_wdb <= 1'b1;

                    test3 <= 1'b1;

                    pc_set <= 1'b1;

                    pc_wab <= 1'b1;
                end
                state8: begin
                    reg_fstate <= state2;

                    reg_we <= 1'b1;

                    reg_wdb <= 1'b1;

                    mem_wab <= 1'b1;
                end
                state9: begin
                    if (ready)
                        reg_fstate <= state2;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state9;

                    reg_wdb <= 1'b1;

                    start <= 1'b1;
                end
                state10: begin
                    reg_fstate <= state10;

                    op <= 3'b001;

                    sp_inc <= 1'b1;

                    tr_load <= 1'b1;

                    sp_dec <= 1'b1;

                    sp_wab <= 1'b1;

                    ac_wdb <= 1'b1;

                    dr_lmul <= 1'b1;

                    ir_ldb <= 1'b1;

                    reg_we <= 1'b1;

                    ac_lmul <= 1'b1;

                    reg_wdb <= 1'b1;

                    dr_load <= 1'b1;

                    ac_load <= 1'b1;

                    reg_ra <= 5'b00001;

                    ir_wdb <= 1'b1;

                    ac_lreg <= 1'b1;

                    ir_load <= 1'b1;

                    tr_wdb <= 1'b1;

                    ir_wab <= 1'b1;

                    start <= 1'b1;

                    rwn <= 1'b1;

                    pc_load <= 1'b1;

                    pc_clear <= 1'b1;

                    pc_inc <= 1'b1;

                    pc_wdb <= 1'b1;

                    pc_lad <= 1'b1;

                    mem_wab <= 1'b1;

                    mem_wdb <= 1'b1;

                    pc_set <= 1'b1;

                    ar_load <= 1'b1;

                    sp_set <= 1'b1;

                    pc_wab <= 1'b1;
                end
                default: begin
                    tr_load <= 1'bx;
                    tr_wdb <= 1'bx;
                    op <= 3'bxxx;
                    reg_wdb <= 1'bx;
                    reg_we <= 1'bx;
                    reg_ra <= 5'bxxxxx;
                    ac_wdb <= 1'bx;
                    ac_lmul <= 1'bx;
                    ac_lreg <= 1'bx;
                    ac_load <= 1'bx;
                    ir_wab <= 1'bx;
                    ir_wdb <= 1'bx;
                    ir_ldb <= 1'bx;
                    ir_load <= 1'bx;
                    dr_lmul <= 1'bx;
                    dr_load <= 1'bx;
                    sp_wab <= 1'bx;
                    sp_dec <= 1'bx;
                    sp_inc <= 1'bx;
                    sp_set <= 1'bx;
                    pc_wab <= 1'bx;
                    pc_wdb <= 1'bx;
                    pc_lad <= 1'bx;
                    pc_clear <= 1'bx;
                    pc_inc <= 1'bx;
                    pc_load <= 1'bx;
                    pc_set <= 1'bx;
                    ar_load <= 1'bx;
                    mem_wab <= 1'bx;
                    mem_wdb <= 1'bx;
                    start <= 1'bx;
                    rwn <= 1'bx;
                    test1 <= 1'bx;
                    test2 <= 1'bx;
                    test3 <= 1'bx;
                    $display ("Reach undefined state");
                end
            endcase
        end
    end
endmodule // ControlLogicGates
