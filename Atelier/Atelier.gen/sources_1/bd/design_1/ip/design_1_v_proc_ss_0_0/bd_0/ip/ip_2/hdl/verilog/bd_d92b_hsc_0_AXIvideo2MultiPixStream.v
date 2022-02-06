// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bd_d92b_hsc_0_AXIvideo2MultiPixStream (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        stream_in_din,
        stream_in_full_n,
        stream_in_write,
        Height,
        WidthIn,
        ColorMode_dout,
        ColorMode_empty_n,
        ColorMode_read,
        s_axis_video_TDATA,
        s_axis_video_TVALID,
        s_axis_video_TREADY,
        s_axis_video_TKEEP,
        s_axis_video_TSTRB,
        s_axis_video_TUSER,
        s_axis_video_TLAST,
        s_axis_video_TID,
        s_axis_video_TDEST
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_pp1_stage0 = 8'd16;
parameter    ap_ST_fsm_state7 = 8'd32;
parameter    ap_ST_fsm_state8 = 8'd64;
parameter    ap_ST_fsm_state9 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [23:0] stream_in_din;
input   stream_in_full_n;
output   stream_in_write;
input  [15:0] Height;
input  [15:0] WidthIn;
input  [7:0] ColorMode_dout;
input   ColorMode_empty_n;
output   ColorMode_read;
input  [23:0] s_axis_video_TDATA;
input   s_axis_video_TVALID;
output   s_axis_video_TREADY;
input  [2:0] s_axis_video_TKEEP;
input  [2:0] s_axis_video_TSTRB;
input  [0:0] s_axis_video_TUSER;
input  [0:0] s_axis_video_TLAST;
input  [0:0] s_axis_video_TID;
input  [0:0] s_axis_video_TDEST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg stream_in_write;
reg ColorMode_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    stream_in_blk_n;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [0:0] icmp_ln1219_reg_493;
reg    ColorMode_blk_n;
reg    s_axis_video_TDATA_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] ap_phi_mux_sof_phi_fu_175_p4;
reg    ap_enable_reg_pp1_iter0;
wire   [0:0] icmp_ln1219_fu_383_p2;
wire   [0:0] or_ln1223_fu_388_p2;
wire    ap_CS_fsm_state8;
wire   [0:0] ap_phi_mux_axi_last_V_9_phi_fu_326_p4;
reg   [10:0] j_reg_231;
reg   [0:0] eol_reg_242;
reg   [0:0] sof_5_reg_254;
reg   [0:0] axi_last_V_3_reg_265;
reg   [23:0] axi_data_V_3_reg_275;
reg   [23:0] axi_data_V_8_reg_286;
reg   [0:0] axi_last_V_8_reg_298;
reg    ap_block_state2;
reg    ap_block_state8;
reg   [7:0] ColorMode_read_reg_447;
wire   [9:0] trunc_ln1192_fu_349_p1;
wire   [10:0] trunc_ln1193_fu_353_p1;
wire   [0:0] icmp_ln1244_fu_361_p2;
reg   [0:0] icmp_ln1244_reg_472;
wire    ap_CS_fsm_state3;
wire   [9:0] i_3_fu_366_p2;
reg   [9:0] i_3_reg_479;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln1214_fu_372_p2;
wire   [10:0] j_2_fu_377_p2;
reg    ap_predicate_op65_read_state5;
reg    ap_block_state5_pp1_stage0_iter0;
reg    ap_block_state6_pp1_stage0_iter1;
reg    ap_block_pp1_stage0_11001;
wire   [7:0] pix_val_V_0_2_fu_408_p3;
reg   [7:0] pix_val_V_0_2_reg_501;
wire   [7:0] pix_val_V_1_2_fu_425_p3;
reg   [7:0] pix_val_V_1_2_reg_506;
wire   [7:0] pix_val_V_2_4_fu_432_p3;
reg   [7:0] pix_val_V_2_4_reg_511;
reg    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state5;
reg   [23:0] axi_data_V_reg_147;
reg   [0:0] axi_last_V_reg_159;
reg   [0:0] sof_reg_171;
reg    ap_block_state1;
reg   [9:0] i_reg_182;
wire    ap_CS_fsm_state9;
reg   [0:0] sof_4_reg_193;
reg   [0:0] axi_last_V_2_reg_207;
reg   [23:0] axi_data_V_4_reg_311;
reg   [23:0] axi_data_V_2_reg_220;
reg   [0:0] ap_phi_mux_eol_phi_fu_246_p4;
reg   [0:0] ap_phi_mux_sof_5_phi_fu_257_p4;
reg   [0:0] ap_phi_mux_axi_last_V_3_phi_fu_268_p4;
reg   [23:0] ap_phi_mux_axi_data_V_3_phi_fu_278_p4;
reg   [23:0] ap_phi_mux_axi_data_V_8_phi_fu_290_p4;
wire   [23:0] ap_phi_reg_pp1_iter0_axi_data_V_8_reg_286;
wire   [0:0] ap_phi_reg_pp1_iter0_axi_last_V_8_reg_298;
wire    ap_CS_fsm_state7;
reg   [0:0] axi_last_V_9_reg_323;
reg    ap_block_pp1_stage0_01001;
wire   [7:0] pix_val_V_0_3_fu_398_p4;
wire   [7:0] pix_val_V_0_fu_394_p1;
wire   [7:0] pix_val_V_1_fu_415_p4;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
wire    regslice_both_AXI_video_strm_V_data_V_U_apdone_blk;
wire   [23:0] s_axis_video_TDATA_int_regslice;
wire    s_axis_video_TVALID_int_regslice;
reg    s_axis_video_TREADY_int_regslice;
wire    regslice_both_AXI_video_strm_V_data_V_U_ack_in;
wire    regslice_both_AXI_video_strm_V_keep_V_U_apdone_blk;
wire   [2:0] s_axis_video_TKEEP_int_regslice;
wire    regslice_both_AXI_video_strm_V_keep_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_keep_V_U_ack_in;
wire    regslice_both_AXI_video_strm_V_strb_V_U_apdone_blk;
wire   [2:0] s_axis_video_TSTRB_int_regslice;
wire    regslice_both_AXI_video_strm_V_strb_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_strb_V_U_ack_in;
wire    regslice_both_AXI_video_strm_V_user_V_U_apdone_blk;
wire   [0:0] s_axis_video_TUSER_int_regslice;
wire    regslice_both_AXI_video_strm_V_user_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_user_V_U_ack_in;
wire    regslice_both_AXI_video_strm_V_last_V_U_apdone_blk;
wire   [0:0] s_axis_video_TLAST_int_regslice;
wire    regslice_both_AXI_video_strm_V_last_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_last_V_U_ack_in;
wire    regslice_both_AXI_video_strm_V_id_V_U_apdone_blk;
wire   [0:0] s_axis_video_TID_int_regslice;
wire    regslice_both_AXI_video_strm_V_id_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_id_V_U_ack_in;
wire    regslice_both_AXI_video_strm_V_dest_V_U_apdone_blk;
wire   [0:0] s_axis_video_TDEST_int_regslice;
wire    regslice_both_AXI_video_strm_V_dest_V_U_vld_out;
wire    regslice_both_AXI_video_strm_V_dest_V_U_ack_in;
reg    ap_condition_170;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
end

bd_d92b_hsc_0_regslice_both #(
    .DataWidth( 24 ))
regslice_both_AXI_video_strm_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_video_TDATA),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_AXI_video_strm_V_data_V_U_ack_in),
    .data_out(s_axis_video_TDATA_int_regslice),
    .vld_out(s_axis_video_TVALID_int_regslice),
    .ack_out(s_axis_video_TREADY_int_regslice),
    .apdone_blk(regslice_both_AXI_video_strm_V_data_V_U_apdone_blk)
);

bd_d92b_hsc_0_regslice_both #(
    .DataWidth( 3 ))
regslice_both_AXI_video_strm_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_video_TKEEP),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_AXI_video_strm_V_keep_V_U_ack_in),
    .data_out(s_axis_video_TKEEP_int_regslice),
    .vld_out(regslice_both_AXI_video_strm_V_keep_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int_regslice),
    .apdone_blk(regslice_both_AXI_video_strm_V_keep_V_U_apdone_blk)
);

bd_d92b_hsc_0_regslice_both #(
    .DataWidth( 3 ))
regslice_both_AXI_video_strm_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_video_TSTRB),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_AXI_video_strm_V_strb_V_U_ack_in),
    .data_out(s_axis_video_TSTRB_int_regslice),
    .vld_out(regslice_both_AXI_video_strm_V_strb_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int_regslice),
    .apdone_blk(regslice_both_AXI_video_strm_V_strb_V_U_apdone_blk)
);

bd_d92b_hsc_0_regslice_both #(
    .DataWidth( 1 ))
regslice_both_AXI_video_strm_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_video_TUSER),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_AXI_video_strm_V_user_V_U_ack_in),
    .data_out(s_axis_video_TUSER_int_regslice),
    .vld_out(regslice_both_AXI_video_strm_V_user_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int_regslice),
    .apdone_blk(regslice_both_AXI_video_strm_V_user_V_U_apdone_blk)
);

bd_d92b_hsc_0_regslice_both #(
    .DataWidth( 1 ))
regslice_both_AXI_video_strm_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_video_TLAST),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_AXI_video_strm_V_last_V_U_ack_in),
    .data_out(s_axis_video_TLAST_int_regslice),
    .vld_out(regslice_both_AXI_video_strm_V_last_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int_regslice),
    .apdone_blk(regslice_both_AXI_video_strm_V_last_V_U_apdone_blk)
);

bd_d92b_hsc_0_regslice_both #(
    .DataWidth( 1 ))
regslice_both_AXI_video_strm_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_video_TID),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_AXI_video_strm_V_id_V_U_ack_in),
    .data_out(s_axis_video_TID_int_regslice),
    .vld_out(regslice_both_AXI_video_strm_V_id_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int_regslice),
    .apdone_blk(regslice_both_AXI_video_strm_V_id_V_U_apdone_blk)
);

bd_d92b_hsc_0_regslice_both #(
    .DataWidth( 1 ))
regslice_both_AXI_video_strm_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(s_axis_video_TDEST),
    .vld_in(s_axis_video_TVALID),
    .ack_in(regslice_both_AXI_video_strm_V_dest_V_U_ack_in),
    .data_out(s_axis_video_TDEST_int_regslice),
    .vld_out(regslice_both_AXI_video_strm_V_dest_V_U_vld_out),
    .ack_out(s_axis_video_TREADY_int_regslice),
    .apdone_blk(regslice_both_AXI_video_strm_V_dest_V_U_apdone_blk)
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
        end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1214_fu_372_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b1 == ap_condition_pp1_exit_iter0_state5))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1214_fu_372_p2 == 1'd0))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_condition_pp1_exit_iter0_state5))) begin
            ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state5);
        end else if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1214_fu_372_p2 == 1'd0))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        axi_data_V_2_reg_220 <= axi_data_V_reg_147;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        axi_data_V_2_reg_220 <= axi_data_V_4_reg_311;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1214_fu_372_p2 == 1'd0))) begin
        axi_data_V_3_reg_275 <= axi_data_V_2_reg_220;
    end else if (((icmp_ln1219_reg_493 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        axi_data_V_3_reg_275 <= axi_data_V_8_reg_286;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        axi_data_V_4_reg_311 <= axi_data_V_3_reg_275;
    end else if ((~((axi_last_V_9_reg_323 == 1'd0) & (s_axis_video_TVALID_int_regslice == 1'b0)) & (axi_last_V_9_reg_323 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        axi_data_V_4_reg_311 <= s_axis_video_TDATA_int_regslice;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_170)) begin
        if (((or_ln1223_fu_388_p2 == 1'd1) & (icmp_ln1219_fu_383_p2 == 1'd0))) begin
            axi_data_V_8_reg_286 <= ap_phi_mux_axi_data_V_3_phi_fu_278_p4;
        end else if (((or_ln1223_fu_388_p2 == 1'd0) & (icmp_ln1219_fu_383_p2 == 1'd0))) begin
            axi_data_V_8_reg_286 <= s_axis_video_TDATA_int_regslice;
        end else if ((1'b1 == 1'b1)) begin
            axi_data_V_8_reg_286 <= ap_phi_reg_pp1_iter0_axi_data_V_8_reg_286;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        axi_last_V_2_reg_207 <= axi_last_V_reg_159;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        axi_last_V_2_reg_207 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1214_fu_372_p2 == 1'd0))) begin
        axi_last_V_3_reg_265 <= axi_last_V_2_reg_207;
    end else if (((icmp_ln1219_reg_493 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        axi_last_V_3_reg_265 <= axi_last_V_8_reg_298;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_170)) begin
        if (((or_ln1223_fu_388_p2 == 1'd1) & (icmp_ln1219_fu_383_p2 == 1'd0))) begin
            axi_last_V_8_reg_298 <= ap_phi_mux_axi_last_V_3_phi_fu_268_p4;
        end else if (((or_ln1223_fu_388_p2 == 1'd0) & (icmp_ln1219_fu_383_p2 == 1'd0))) begin
            axi_last_V_8_reg_298 <= s_axis_video_TLAST_int_regslice;
        end else if ((1'b1 == 1'b1)) begin
            axi_last_V_8_reg_298 <= ap_phi_reg_pp1_iter0_axi_last_V_8_reg_298;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        axi_last_V_9_reg_323 <= eol_reg_242;
    end else if ((~((axi_last_V_9_reg_323 == 1'd0) & (s_axis_video_TVALID_int_regslice == 1'b0)) & (axi_last_V_9_reg_323 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        axi_last_V_9_reg_323 <= s_axis_video_TLAST_int_regslice;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1214_fu_372_p2 == 1'd0))) begin
        eol_reg_242 <= 1'd0;
    end else if (((icmp_ln1219_reg_493 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        eol_reg_242 <= axi_last_V_8_reg_298;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_182 <= 10'd0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        i_reg_182 <= i_3_reg_479;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1214_fu_372_p2 == 1'd0))) begin
        j_reg_231 <= 11'd0;
    end else if (((icmp_ln1219_fu_383_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        j_reg_231 <= j_2_fu_377_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        sof_4_reg_193 <= 1'd1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sof_4_reg_193 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1214_fu_372_p2 == 1'd0))) begin
        sof_5_reg_254 <= sof_4_reg_193;
    end else if (((icmp_ln1219_reg_493 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        sof_5_reg_254 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b0 == ColorMode_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        sof_reg_171 <= 1'd0;
    end else if ((~((sof_reg_171 == 1'd0) & (s_axis_video_TVALID_int_regslice == 1'b0)) & (sof_reg_171 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sof_reg_171 <= s_axis_video_TUSER_int_regslice;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        ColorMode_read_reg_447 <= ColorMode_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((~((sof_reg_171 == 1'd0) & (s_axis_video_TVALID_int_regslice == 1'b0)) & (sof_reg_171 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        axi_data_V_reg_147 <= s_axis_video_TDATA_int_regslice;
        axi_last_V_reg_159 <= s_axis_video_TLAST_int_regslice;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_3_reg_479 <= i_3_fu_366_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        icmp_ln1219_reg_493 <= icmp_ln1219_fu_383_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        icmp_ln1244_reg_472 <= icmp_ln1244_fu_361_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1219_fu_383_p2 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        pix_val_V_0_2_reg_501 <= pix_val_V_0_2_fu_408_p3;
        pix_val_V_1_2_reg_506 <= pix_val_V_1_2_fu_425_p3;
        pix_val_V_2_4_reg_511 <= pix_val_V_2_4_fu_432_p3;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ColorMode_blk_n = ColorMode_empty_n;
    end else begin
        ColorMode_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == ColorMode_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ColorMode_read = 1'b1;
    end else begin
        ColorMode_read = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln1219_fu_383_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state5 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state5 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1214_fu_372_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1219_reg_493 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_axi_data_V_3_phi_fu_278_p4 = axi_data_V_8_reg_286;
    end else begin
        ap_phi_mux_axi_data_V_3_phi_fu_278_p4 = axi_data_V_3_reg_275;
    end
end

always @ (*) begin
    if ((icmp_ln1219_fu_383_p2 == 1'd0)) begin
        if ((or_ln1223_fu_388_p2 == 1'd1)) begin
            ap_phi_mux_axi_data_V_8_phi_fu_290_p4 = ap_phi_mux_axi_data_V_3_phi_fu_278_p4;
        end else if ((or_ln1223_fu_388_p2 == 1'd0)) begin
            ap_phi_mux_axi_data_V_8_phi_fu_290_p4 = s_axis_video_TDATA_int_regslice;
        end else begin
            ap_phi_mux_axi_data_V_8_phi_fu_290_p4 = ap_phi_reg_pp1_iter0_axi_data_V_8_reg_286;
        end
    end else begin
        ap_phi_mux_axi_data_V_8_phi_fu_290_p4 = ap_phi_reg_pp1_iter0_axi_data_V_8_reg_286;
    end
end

always @ (*) begin
    if (((icmp_ln1219_reg_493 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_axi_last_V_3_phi_fu_268_p4 = axi_last_V_8_reg_298;
    end else begin
        ap_phi_mux_axi_last_V_3_phi_fu_268_p4 = axi_last_V_3_reg_265;
    end
end

always @ (*) begin
    if (((icmp_ln1219_reg_493 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_eol_phi_fu_246_p4 = axi_last_V_8_reg_298;
    end else begin
        ap_phi_mux_eol_phi_fu_246_p4 = eol_reg_242;
    end
end

always @ (*) begin
    if (((icmp_ln1219_reg_493 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_sof_5_phi_fu_257_p4 = 1'd0;
    end else begin
        ap_phi_mux_sof_5_phi_fu_257_p4 = sof_5_reg_254;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1214_fu_372_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((axi_last_V_9_reg_323 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((or_ln1223_fu_388_p2 == 1'd0) & (icmp_ln1219_fu_383_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((sof_reg_171 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        s_axis_video_TDATA_blk_n = s_axis_video_TVALID_int_regslice;
    end else begin
        s_axis_video_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_predicate_op65_read_state5 == 1'b1)) | (~((axi_last_V_9_reg_323 == 1'd0) & (s_axis_video_TVALID_int_regslice == 1'b0)) & (axi_last_V_9_reg_323 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | (~((sof_reg_171 == 1'd0) & (s_axis_video_TVALID_int_regslice == 1'b0)) & (sof_reg_171 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        s_axis_video_TREADY_int_regslice = 1'b1;
    end else begin
        s_axis_video_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1219_reg_493 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        stream_in_blk_n = stream_in_full_n;
    end else begin
        stream_in_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln1219_reg_493 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        stream_in_write = 1'b1;
    end else begin
        stream_in_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((1'b0 == ColorMode_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((sof_reg_171 == 1'd0) & (s_axis_video_TVALID_int_regslice == 1'b0)) & (sof_reg_171 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~((sof_reg_171 == 1'd0) & (s_axis_video_TVALID_int_regslice == 1'b0)) & (ap_phi_mux_sof_phi_fu_175_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1214_fu_372_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((icmp_ln1219_fu_383_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((icmp_ln1219_fu_383_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if ((~((axi_last_V_9_reg_323 == 1'd0) & (s_axis_video_TVALID_int_regslice == 1'b0)) & (axi_last_V_9_reg_323 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else if ((~((axi_last_V_9_reg_323 == 1'd0) & (s_axis_video_TVALID_int_regslice == 1'b0)) & (ap_phi_mux_axi_last_V_9_phi_fu_326_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd7];

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = (((ap_enable_reg_pp1_iter0 == 1'b1) & (s_axis_video_TVALID_int_regslice == 1'b0) & (ap_predicate_op65_read_state5 == 1'b1)) | ((icmp_ln1219_reg_493 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (stream_in_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = (((ap_enable_reg_pp1_iter0 == 1'b1) & (s_axis_video_TVALID_int_regslice == 1'b0) & (ap_predicate_op65_read_state5 == 1'b1)) | ((icmp_ln1219_reg_493 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (stream_in_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = (((ap_enable_reg_pp1_iter0 == 1'b1) & (s_axis_video_TVALID_int_regslice == 1'b0) & (ap_predicate_op65_read_state5 == 1'b1)) | ((icmp_ln1219_reg_493 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (stream_in_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_state1 = ((1'b0 == ColorMode_empty_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state2 = ((sof_reg_171 == 1'd0) & (s_axis_video_TVALID_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp1_stage0_iter0 = ((s_axis_video_TVALID_int_regslice == 1'b0) & (ap_predicate_op65_read_state5 == 1'b1));
end

always @ (*) begin
    ap_block_state6_pp1_stage0_iter1 = ((icmp_ln1219_reg_493 == 1'd0) & (stream_in_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state8 = ((axi_last_V_9_reg_323 == 1'd0) & (s_axis_video_TVALID_int_regslice == 1'b0));
end

always @ (*) begin
    ap_condition_170 = ((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0));
end

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_phi_mux_axi_last_V_9_phi_fu_326_p4 = axi_last_V_9_reg_323;

assign ap_phi_mux_sof_phi_fu_175_p4 = sof_reg_171;

assign ap_phi_reg_pp1_iter0_axi_data_V_8_reg_286 = 'bx;

assign ap_phi_reg_pp1_iter0_axi_last_V_8_reg_298 = 'bx;

always @ (*) begin
    ap_predicate_op65_read_state5 = ((or_ln1223_fu_388_p2 == 1'd0) & (icmp_ln1219_fu_383_p2 == 1'd0));
end

assign i_3_fu_366_p2 = (i_reg_182 + 10'd1);

assign icmp_ln1214_fu_372_p2 = ((i_reg_182 == trunc_ln1192_fu_349_p1) ? 1'b1 : 1'b0);

assign icmp_ln1219_fu_383_p2 = ((j_reg_231 == trunc_ln1193_fu_353_p1) ? 1'b1 : 1'b0);

assign icmp_ln1244_fu_361_p2 = ((ColorMode_read_reg_447 == 8'd0) ? 1'b1 : 1'b0);

assign j_2_fu_377_p2 = (j_reg_231 + 11'd1);

assign or_ln1223_fu_388_p2 = (ap_phi_mux_sof_5_phi_fu_257_p4 | ap_phi_mux_eol_phi_fu_246_p4);

assign pix_val_V_0_2_fu_408_p3 = ((icmp_ln1244_reg_472[0:0] == 1'b1) ? pix_val_V_0_3_fu_398_p4 : pix_val_V_0_fu_394_p1);

assign pix_val_V_0_3_fu_398_p4 = {{ap_phi_mux_axi_data_V_8_phi_fu_290_p4[23:16]}};

assign pix_val_V_0_fu_394_p1 = ap_phi_mux_axi_data_V_8_phi_fu_290_p4[7:0];

assign pix_val_V_1_2_fu_425_p3 = ((icmp_ln1244_reg_472[0:0] == 1'b1) ? pix_val_V_0_fu_394_p1 : pix_val_V_1_fu_415_p4);

assign pix_val_V_1_fu_415_p4 = {{ap_phi_mux_axi_data_V_8_phi_fu_290_p4[15:8]}};

assign pix_val_V_2_4_fu_432_p3 = ((icmp_ln1244_reg_472[0:0] == 1'b1) ? pix_val_V_1_fu_415_p4 : pix_val_V_0_3_fu_398_p4);

assign s_axis_video_TREADY = regslice_both_AXI_video_strm_V_data_V_U_ack_in;

assign stream_in_din = {{{pix_val_V_2_4_reg_511}, {pix_val_V_1_2_reg_506}}, {pix_val_V_0_2_reg_501}};

assign trunc_ln1192_fu_349_p1 = Height[9:0];

assign trunc_ln1193_fu_353_p1 = WidthIn[10:0];

endmodule //bd_d92b_hsc_0_AXIvideo2MultiPixStream
