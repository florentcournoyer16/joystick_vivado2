// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bd_d92b_hsc_0_v_vcresampler_core (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        stream_out_422_dout,
        stream_out_422_empty_n,
        stream_out_422_read,
        Height,
        WidthOut,
        stream_out_420_din,
        stream_out_420_full_n,
        stream_out_420_write,
        bPassThru_dout,
        bPassThru_empty_n,
        bPassThru_read
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state7 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [23:0] stream_out_422_dout;
input   stream_out_422_empty_n;
output   stream_out_422_read;
input  [15:0] Height;
input  [15:0] WidthOut;
output  [23:0] stream_out_420_din;
input   stream_out_420_full_n;
output   stream_out_420_write;
input  [0:0] bPassThru_dout;
input   bPassThru_empty_n;
output   bPassThru_read;

reg ap_done;
reg ap_idle;
reg start_write;
reg stream_out_422_read;
reg[23:0] stream_out_420_din;
reg stream_out_420_write;
reg bPassThru_read;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    stream_out_422_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln1674_reg_543;
reg   [0:0] cmp24_i_reg_525;
reg    stream_out_420_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] tmp_reg_534;
reg   [0:0] bPassThru_read_reg_492;
reg    ap_enable_reg_pp0_iter3;
reg    bPassThru_blk_n;
reg   [14:0] x_1_reg_201;
wire   [15:0] zext_ln1669_fu_229_p1;
reg   [15:0] zext_ln1669_reg_501;
wire   [15:0] loopHeight_fu_233_p2;
reg   [15:0] loopHeight_reg_506;
wire   [14:0] y_1_fu_239_p2;
reg   [14:0] y_1_reg_511;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln1671_fu_249_p2;
wire   [0:0] empty_fu_259_p1;
reg   [0:0] empty_reg_520;
wire   [0:0] cmp24_i_fu_263_p2;
wire   [0:0] cmp73_i_fu_268_p2;
reg   [0:0] cmp73_i_reg_529;
wire   [14:0] x_fu_282_p2;
reg   [14:0] x_reg_538;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_predicate_op54_read_state4;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_predicate_op88_write_state5;
reg    ap_block_state5_pp0_stage0_iter2;
reg    ap_predicate_op100_write_state6;
reg    ap_block_state6_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln1674_fu_292_p2;
reg   [0:0] icmp_ln1674_reg_543_pp0_iter1_reg;
reg   [0:0] icmp_ln1674_reg_543_pp0_iter2_reg;
reg   [10:0] linebuf_y_val_V_0_addr_reg_547;
reg   [10:0] linebuf_c_val_V_0_addr_reg_552;
reg   [10:0] linebuf_c_val_V_1_addr_reg_558;
wire   [7:0] linebuf_c_val_V_0_q1;
reg   [7:0] linebuf_c_val_V_0_load_reg_564;
wire   [7:0] linebuf_c_val_V_1_q1;
reg   [7:0] linebuf_c_val_V_1_load_reg_569;
wire   [8:0] add_ln1346_1_fu_374_p2;
reg   [8:0] add_ln1346_1_reg_574;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
wire   [10:0] linebuf_y_val_V_0_address0;
reg    linebuf_y_val_V_0_ce0;
reg    linebuf_y_val_V_0_we0;
wire   [7:0] linebuf_y_val_V_0_q0;
wire   [10:0] linebuf_c_val_V_0_address0;
reg    linebuf_c_val_V_0_ce0;
reg    linebuf_c_val_V_0_we0;
wire   [10:0] linebuf_c_val_V_0_address1;
reg    linebuf_c_val_V_0_ce1;
wire   [10:0] linebuf_c_val_V_1_address0;
reg    linebuf_c_val_V_1_ce0;
reg    linebuf_c_val_V_1_we0;
wire   [7:0] linebuf_c_val_V_1_d0;
wire   [10:0] linebuf_c_val_V_1_address1;
reg    linebuf_c_val_V_1_ce1;
reg   [14:0] y_reg_190;
reg    ap_block_state1;
wire    ap_CS_fsm_state7;
reg   [14:0] ap_phi_mux_x_1_phi_fu_205_p4;
reg   [7:0] ap_phi_mux_pixbuf_c_val_V_2_0_0_i_phi_fu_216_p4;
wire   [7:0] ap_phi_reg_pp0_iter2_pixbuf_c_val_V_2_0_0_i_reg_213;
wire   [63:0] idxprom5_i245_i_fu_346_p1;
reg   [7:0] mpix_y_val_V_0_fu_84;
wire   [7:0] pix_val_V_0_fu_297_p1;
reg   [7:0] mpix_c_val_V_0_fu_88;
reg   [7:0] pix_val_V_2_1_fu_92;
reg   [7:0] mpix_y_val_V_0_1_fu_96;
reg   [7:0] InCPix_V_fu_100;
wire   [23:0] or_ln174_1_i_fu_389_p4;
reg    ap_block_pp0_stage0_01001;
wire   [23:0] or_ln174_3_i_fu_446_p4;
wire   [0:0] xor_ln1669_fu_223_p2;
wire   [15:0] zext_ln1671_fu_245_p1;
wire   [15:0] out_y_fu_254_p2;
wire   [15:0] zext_ln1674_fu_288_p1;
wire   [8:0] zext_ln1346_1_fu_370_p1;
wire   [8:0] shl_ln_fu_400_p3;
wire   [9:0] zext_ln1346_fu_410_p1;
wire   [9:0] zext_ln215_fu_407_p1;
wire   [9:0] zext_ln1346_2_fu_420_p1;
wire   [9:0] add_ln1346_fu_414_p2;
wire   [9:0] add_ln1346_2_fu_423_p2;
wire   [7:0] trunc_ln_fu_429_p4;
wire   [7:0] outpix_val_V_load_1_i_fu_439_p3;
reg   [3:0] ap_NS_fsm;
reg    ap_block_pp0;
reg    ap_enable_operation_73;
reg    ap_enable_state5_pp0_iter2_stage0;
reg    ap_enable_operation_72;
reg    ap_enable_operation_90;
reg    ap_enable_state6_pp0_iter3_stage0;
reg    ap_enable_operation_67;
reg    ap_enable_state4_pp0_iter1_stage0;
reg    ap_enable_operation_74;
reg    ap_predicate_op77_store_state5;
reg    ap_enable_operation_77;
reg    ap_predicate_op69_load_state4;
reg    ap_enable_operation_69;
reg    ap_predicate_op75_load_state5;
reg    ap_enable_operation_75;
wire    ap_enable_operation_81;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

bd_d92b_hsc_0_v_vcresampler_core_linebuf_y_val_V_0 #(
    .DataWidth( 8 ),
    .AddressRange( 1280 ),
    .AddressWidth( 11 ))
linebuf_y_val_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(linebuf_y_val_V_0_address0),
    .ce0(linebuf_y_val_V_0_ce0),
    .we0(linebuf_y_val_V_0_we0),
    .d0(mpix_y_val_V_0_1_fu_96),
    .q0(linebuf_y_val_V_0_q0)
);

bd_d92b_hsc_0_v_vcresampler_core_linebuf_c_val_V_0 #(
    .DataWidth( 8 ),
    .AddressRange( 1280 ),
    .AddressWidth( 11 ))
linebuf_c_val_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(linebuf_c_val_V_0_address0),
    .ce0(linebuf_c_val_V_0_ce0),
    .we0(linebuf_c_val_V_0_we0),
    .d0(InCPix_V_fu_100),
    .address1(linebuf_c_val_V_0_address1),
    .ce1(linebuf_c_val_V_0_ce1),
    .q1(linebuf_c_val_V_0_q1)
);

bd_d92b_hsc_0_v_vcresampler_core_linebuf_c_val_V_0 #(
    .DataWidth( 8 ),
    .AddressRange( 1280 ),
    .AddressWidth( 11 ))
linebuf_c_val_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(linebuf_c_val_V_1_address0),
    .ce0(linebuf_c_val_V_1_ce0),
    .we0(linebuf_c_val_V_1_we0),
    .d0(linebuf_c_val_V_1_d0),
    .address1(linebuf_c_val_V_1_address1),
    .ce1(linebuf_c_val_V_1_ce1),
    .q1(linebuf_c_val_V_1_q1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1671_fu_249_p2 == 1'd0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1671_fu_249_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1671_fu_249_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1674_reg_543 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_1_reg_201 <= x_reg_538;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1671_fu_249_p2 == 1'd1))) begin
        x_1_reg_201 <= 15'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        y_reg_190 <= y_1_reg_511;
    end else if ((~((bPassThru_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        y_reg_190 <= 15'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((cmp24_i_reg_525 == 1'd1) & (icmp_ln1674_reg_543 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        InCPix_V_fu_100 <= {{stream_out_422_dout[15:8]}};
        mpix_c_val_V_0_fu_88 <= {{stream_out_422_dout[15:8]}};
        mpix_y_val_V_0_1_fu_96 <= pix_val_V_0_fu_297_p1;
        mpix_y_val_V_0_fu_84 <= pix_val_V_0_fu_297_p1;
        pix_val_V_2_1_fu_92 <= {{stream_out_422_dout[23:16]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (empty_reg_520 == 1'd0))) begin
        add_ln1346_1_reg_574 <= add_ln1346_1_fu_374_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        bPassThru_read_reg_492 <= bPassThru_dout;
        loopHeight_reg_506 <= loopHeight_fu_233_p2;
        zext_ln1669_reg_501[0] <= zext_ln1669_fu_229_p1[0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1671_fu_249_p2 == 1'd1))) begin
        cmp24_i_reg_525 <= cmp24_i_fu_263_p2;
        cmp73_i_reg_529 <= cmp73_i_fu_268_p2;
        empty_reg_520 <= empty_fu_259_p1;
        tmp_reg_534 <= out_y_fu_254_p2[32'd15];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1674_reg_543 <= icmp_ln1674_fu_292_p2;
        icmp_ln1674_reg_543_pp0_iter1_reg <= icmp_ln1674_reg_543;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln1674_reg_543_pp0_iter2_reg <= icmp_ln1674_reg_543_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1674_reg_543 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        linebuf_c_val_V_0_addr_reg_552 <= idxprom5_i245_i_fu_346_p1;
        linebuf_c_val_V_1_addr_reg_558 <= idxprom5_i245_i_fu_346_p1;
        linebuf_y_val_V_0_addr_reg_547 <= idxprom5_i245_i_fu_346_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1674_reg_543_pp0_iter1_reg == 1'd1))) begin
        linebuf_c_val_V_0_load_reg_564 <= linebuf_c_val_V_0_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1674_reg_543_pp0_iter1_reg == 1'd1) & (empty_reg_520 == 1'd0))) begin
        linebuf_c_val_V_1_load_reg_569 <= linebuf_c_val_V_1_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        x_reg_538 <= x_fu_282_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        y_1_reg_511 <= y_1_fu_239_p2;
    end
end

always @ (*) begin
    if ((icmp_ln1674_fu_292_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1671_fu_249_p2 == 1'd0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (real_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln1674_reg_543_pp0_iter1_reg == 1'd1)) begin
        if ((cmp24_i_reg_525 == 1'd0)) begin
            ap_phi_mux_pixbuf_c_val_V_2_0_0_i_phi_fu_216_p4 = linebuf_c_val_V_0_q1;
        end else if ((cmp24_i_reg_525 == 1'd1)) begin
            ap_phi_mux_pixbuf_c_val_V_2_0_0_i_phi_fu_216_p4 = InCPix_V_fu_100;
        end else begin
            ap_phi_mux_pixbuf_c_val_V_2_0_0_i_phi_fu_216_p4 = ap_phi_reg_pp0_iter2_pixbuf_c_val_V_2_0_0_i_reg_213;
        end
    end else begin
        ap_phi_mux_pixbuf_c_val_V_2_0_0_i_phi_fu_216_p4 = ap_phi_reg_pp0_iter2_pixbuf_c_val_V_2_0_0_i_reg_213;
    end
end

always @ (*) begin
    if (((icmp_ln1674_reg_543 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_x_1_phi_fu_205_p4 = x_reg_538;
    end else begin
        ap_phi_mux_x_1_phi_fu_205_p4 = x_1_reg_201;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        bPassThru_blk_n = bPassThru_empty_n;
    end else begin
        bPassThru_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((bPassThru_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        bPassThru_read = 1'b1;
    end else begin
        bPassThru_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1671_fu_249_p2 == 1'd0))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        linebuf_c_val_V_0_ce0 = 1'b1;
    end else begin
        linebuf_c_val_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        linebuf_c_val_V_0_ce1 = 1'b1;
    end else begin
        linebuf_c_val_V_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (cmp24_i_reg_525 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1674_reg_543_pp0_iter1_reg == 1'd1))) begin
        linebuf_c_val_V_0_we0 = 1'b1;
    end else begin
        linebuf_c_val_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        linebuf_c_val_V_1_ce0 = 1'b1;
    end else begin
        linebuf_c_val_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        linebuf_c_val_V_1_ce1 = 1'b1;
    end else begin
        linebuf_c_val_V_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        linebuf_c_val_V_1_we0 = 1'b1;
    end else begin
        linebuf_c_val_V_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1674_reg_543_pp0_iter1_reg == 1'd1))) begin
        linebuf_y_val_V_0_ce0 = 1'b1;
    end else begin
        linebuf_y_val_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1674_reg_543_pp0_iter1_reg == 1'd1))) begin
        linebuf_y_val_V_0_we0 = 1'b1;
    end else begin
        linebuf_y_val_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (bPassThru_read_reg_492 == 1'd0) & (tmp_reg_534 == 1'd0) & (1'b0 == ap_block_pp0_stage0)) | ((bPassThru_read_reg_492 == 1'd1) & (tmp_reg_534 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        stream_out_420_blk_n = stream_out_420_full_n;
    end else begin
        stream_out_420_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_block_pp0_stage0_01001)) begin
        if (((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_op100_write_state6 == 1'b1))) begin
            stream_out_420_din = or_ln174_3_i_fu_446_p4;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op88_write_state5 == 1'b1))) begin
            stream_out_420_din = or_ln174_1_i_fu_389_p4;
        end else begin
            stream_out_420_din = 'bx;
        end
    end else begin
        stream_out_420_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op100_write_state6 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op88_write_state5 == 1'b1)))) begin
        stream_out_420_write = 1'b1;
    end else begin
        stream_out_420_write = 1'b0;
    end
end

always @ (*) begin
    if (((cmp24_i_reg_525 == 1'd1) & (icmp_ln1674_reg_543 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stream_out_422_blk_n = stream_out_422_empty_n;
    end else begin
        stream_out_422_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op54_read_state4 == 1'b1))) begin
        stream_out_422_read = 1'b1;
    end else begin
        stream_out_422_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((bPassThru_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1671_fu_249_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln1674_fu_292_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln1674_fu_292_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1346_1_fu_374_p2 = (zext_ln1346_1_fu_370_p1 + 9'd2);

assign add_ln1346_2_fu_423_p2 = (zext_ln1346_2_fu_420_p1 + add_ln1346_fu_414_p2);

assign add_ln1346_fu_414_p2 = (zext_ln1346_fu_410_p1 + zext_ln215_fu_407_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_pp0 = ((ap_ST_fsm_pp0_stage0 == ap_CS_fsm) & (1'b1 == ap_block_pp0_stage0_subdone));
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter3 == 1'b1) & (stream_out_420_full_n == 1'b0) & (ap_predicate_op100_write_state6 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (stream_out_420_full_n == 1'b0) & (ap_predicate_op88_write_state5 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (stream_out_422_empty_n == 1'b0) & (ap_predicate_op54_read_state4 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter3 == 1'b1) & (stream_out_420_full_n == 1'b0) & (ap_predicate_op100_write_state6 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (stream_out_420_full_n == 1'b0) & (ap_predicate_op88_write_state5 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (stream_out_422_empty_n == 1'b0) & (ap_predicate_op54_read_state4 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter3 == 1'b1) & (stream_out_420_full_n == 1'b0) & (ap_predicate_op100_write_state6 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (stream_out_420_full_n == 1'b0) & (ap_predicate_op88_write_state5 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (stream_out_422_empty_n == 1'b0) & (ap_predicate_op54_read_state4 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((bPassThru_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((stream_out_422_empty_n == 1'b0) & (ap_predicate_op54_read_state4 == 1'b1));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter2 = ((stream_out_420_full_n == 1'b0) & (ap_predicate_op88_write_state5 == 1'b1));
end

always @ (*) begin
    ap_block_state6_pp0_stage0_iter3 = ((stream_out_420_full_n == 1'b0) & (ap_predicate_op100_write_state6 == 1'b1));
end

always @ (*) begin
    ap_enable_operation_67 = (icmp_ln1674_reg_543 == 1'd1);
end

always @ (*) begin
    ap_enable_operation_69 = (ap_predicate_op69_load_state4 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_72 = (icmp_ln1674_reg_543_pp0_iter1_reg == 1'd1);
end

always @ (*) begin
    ap_enable_operation_73 = (icmp_ln1674_reg_543_pp0_iter1_reg == 1'd1);
end

always @ (*) begin
    ap_enable_operation_74 = (icmp_ln1674_reg_543_pp0_iter1_reg == 1'd1);
end

always @ (*) begin
    ap_enable_operation_75 = (ap_predicate_op75_load_state5 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_77 = (ap_predicate_op77_store_state5 == 1'b1);
end

assign ap_enable_operation_81 = (1'b1 == 1'b1);

always @ (*) begin
    ap_enable_operation_90 = (icmp_ln1674_reg_543_pp0_iter2_reg == 1'd1);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_enable_state4_pp0_iter1_stage0 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state5_pp0_iter2_stage0 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state6_pp0_iter3_stage0 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_phi_reg_pp0_iter2_pixbuf_c_val_V_2_0_0_i_reg_213 = 'bx;

always @ (*) begin
    ap_predicate_op100_write_state6 = ((bPassThru_read_reg_492 == 1'd0) & (tmp_reg_534 == 1'd0));
end

always @ (*) begin
    ap_predicate_op54_read_state4 = ((cmp24_i_reg_525 == 1'd1) & (icmp_ln1674_reg_543 == 1'd1));
end

always @ (*) begin
    ap_predicate_op69_load_state4 = ((icmp_ln1674_reg_543 == 1'd1) & (empty_reg_520 == 1'd0));
end

always @ (*) begin
    ap_predicate_op75_load_state5 = ((icmp_ln1674_reg_543_pp0_iter1_reg == 1'd1) & (empty_reg_520 == 1'd0));
end

always @ (*) begin
    ap_predicate_op77_store_state5 = ((cmp24_i_reg_525 == 1'd1) & (icmp_ln1674_reg_543_pp0_iter1_reg == 1'd1));
end

always @ (*) begin
    ap_predicate_op88_write_state5 = ((bPassThru_read_reg_492 == 1'd1) & (tmp_reg_534 == 1'd0));
end

assign ap_ready = internal_ap_ready;

assign cmp24_i_fu_263_p2 = ((zext_ln1671_fu_245_p1 < Height) ? 1'b1 : 1'b0);

assign cmp73_i_fu_268_p2 = ((y_reg_190 != 15'd0) ? 1'b1 : 1'b0);

assign empty_fu_259_p1 = out_y_fu_254_p2[0:0];

assign icmp_ln1671_fu_249_p2 = (($signed(zext_ln1671_fu_245_p1) < $signed(loopHeight_reg_506)) ? 1'b1 : 1'b0);

assign icmp_ln1674_fu_292_p2 = (($signed(zext_ln1674_fu_288_p1) < $signed(WidthOut)) ? 1'b1 : 1'b0);

assign idxprom5_i245_i_fu_346_p1 = x_1_reg_201;

assign linebuf_c_val_V_0_address0 = linebuf_c_val_V_0_addr_reg_552;

assign linebuf_c_val_V_0_address1 = idxprom5_i245_i_fu_346_p1;

assign linebuf_c_val_V_1_address0 = linebuf_c_val_V_1_addr_reg_558;

assign linebuf_c_val_V_1_address1 = idxprom5_i245_i_fu_346_p1;

assign linebuf_c_val_V_1_d0 = ((cmp73_i_reg_529[0:0] == 1'b1) ? linebuf_c_val_V_0_q1 : ap_phi_mux_pixbuf_c_val_V_2_0_0_i_phi_fu_216_p4);

assign linebuf_y_val_V_0_address0 = linebuf_y_val_V_0_addr_reg_547;

assign loopHeight_fu_233_p2 = (Height + zext_ln1669_fu_229_p1);

assign or_ln174_1_i_fu_389_p4 = {{{pix_val_V_2_1_fu_92}, {mpix_c_val_V_0_fu_88}}, {mpix_y_val_V_0_fu_84}};

assign or_ln174_3_i_fu_446_p4 = {{{{8'd0}, {outpix_val_V_load_1_i_fu_439_p3}}}, {linebuf_y_val_V_0_q0}};

assign out_y_fu_254_p2 = (zext_ln1671_fu_245_p1 - zext_ln1669_reg_501);

assign outpix_val_V_load_1_i_fu_439_p3 = ((empty_reg_520[0:0] == 1'b1) ? 8'd0 : trunc_ln_fu_429_p4);

assign pix_val_V_0_fu_297_p1 = stream_out_422_dout[7:0];

assign shl_ln_fu_400_p3 = {{linebuf_c_val_V_0_load_reg_564}, {1'd0}};

assign start_out = real_start;

assign trunc_ln_fu_429_p4 = {{add_ln1346_2_fu_423_p2[9:2]}};

assign x_fu_282_p2 = (ap_phi_mux_x_1_phi_fu_205_p4 + 15'd1);

assign xor_ln1669_fu_223_p2 = (bPassThru_dout ^ 1'd1);

assign y_1_fu_239_p2 = (y_reg_190 + 15'd1);

assign zext_ln1346_1_fu_370_p1 = ap_phi_mux_pixbuf_c_val_V_2_0_0_i_phi_fu_216_p4;

assign zext_ln1346_2_fu_420_p1 = add_ln1346_1_reg_574;

assign zext_ln1346_fu_410_p1 = shl_ln_fu_400_p3;

assign zext_ln1669_fu_229_p1 = xor_ln1669_fu_223_p2;

assign zext_ln1671_fu_245_p1 = y_reg_190;

assign zext_ln1674_fu_288_p1 = ap_phi_mux_x_1_phi_fu_205_p4;

assign zext_ln215_fu_407_p1 = linebuf_c_val_V_1_load_reg_569;

always @ (posedge ap_clk) begin
    zext_ln1669_reg_501[15:1] <= 15'b000000000000000;
end

endmodule //bd_d92b_hsc_0_v_vcresampler_core
