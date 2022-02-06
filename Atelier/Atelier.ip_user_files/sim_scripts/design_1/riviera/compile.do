vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_8
vlib riviera/processing_system7_vip_v1_0_10
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/v_tc_v6_2_1
vlib riviera/v_tc_v6_1_13
vlib riviera/v_vid_in_axi4s_v4_0_9
vlib riviera/v_axi4s_vid_out_v4_0_11
vlib riviera/xlconstant_v1_1_7
vlib riviera/smartconnect_v1_0
vlib riviera/axi_register_slice_v2_1_22
vlib riviera/v_vscaler_v1_1_0
vlib riviera/v_hscaler_v1_1_0
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_register_slice_v1_1_22
vlib riviera/axis_subset_converter_v1_1_22
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_24
vlib riviera/axis_data_fifo_v2_0_4
vlib riviera/xlslice_v1_0_2

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 riviera/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 riviera/processing_system7_vip_v1_0_10
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap v_tc_v6_2_1 riviera/v_tc_v6_2_1
vmap v_tc_v6_1_13 riviera/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 riviera/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_11 riviera/v_axi4s_vid_out_v4_0_11
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_register_slice_v2_1_22 riviera/axi_register_slice_v2_1_22
vmap v_vscaler_v1_1_0 riviera/v_vscaler_v1_1_0
vmap v_hscaler_v1_1_0 riviera/v_hscaler_v1_1_0
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_22 riviera/axis_register_slice_v1_1_22
vmap axis_subset_converter_v1_1_22 riviera/axis_subset_converter_v1_1_22
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_24 riviera/axi_gpio_v2_0_24
vmap axis_data_fifo_v2_0_4 riviera/axis_data_fifo_v2_0_4
vmap xlslice_v1_0_2 riviera/xlslice_v1_0_2

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_2_1 -93 \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/cd2e/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_v_tc_0_0/sim/design_1_v_tc_0_0.vhd" \

vcom -work v_tc_v6_1_13 -93 \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_11  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/1a1e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/sim/design_1_v_axi4s_vid_out_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d57c/src/ClockGen.vhd" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d57c/src/SyncAsync.vhd" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d57c/src/SyncAsyncReset.vhd" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d57c/src/DVI_Constants.vhd" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d57c/src/OutputSERDES.vhd" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d57c/src/TMDS_Encoder.vhd" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d57c/src/rgb2dvi.vhd" \
"../../../bd/design_1/ip/design_1_rgb2dvi_0_0/sim/design_1_rgb2dvi_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/sim/bd_ec8a.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_0/sim/bd_ec8a_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_1/sim/bd_ec8a_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_2/sim/bd_ec8a_arinsw_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_3/sim/bd_ec8a_rinsw_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_4/sim/bd_ec8a_awinsw_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_5/sim/bd_ec8a_winsw_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_6/sim/bd_ec8a_binsw_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_7/sim/bd_ec8a_aroutsw_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_8/sim/bd_ec8a_routsw_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_9/sim/bd_ec8a_awoutsw_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_10/sim/bd_ec8a_woutsw_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_11/sim/bd_ec8a_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_12/sim/bd_ec8a_arni_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_13/sim/bd_ec8a_rni_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_14/sim/bd_ec8a_awni_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_15/sim/bd_ec8a_wni_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_16/sim/bd_ec8a_bni_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_17/sim/bd_ec8a_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_18/sim/bd_ec8a_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_19/sim/bd_ec8a_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_20/sim/bd_ec8a_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_21/sim/bd_ec8a_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_22/sim/bd_ec8a_srn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_23/sim/bd_ec8a_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_24/sim/bd_ec8a_swn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_25/sim/bd_ec8a_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_26/sim/bd_ec8a_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_27/sim/bd_ec8a_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_28/sim/bd_ec8a_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_29/sim/bd_ec8a_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_30/sim/bd_ec8a_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_31/sim/bd_ec8a_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/7bd7/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_32/sim/bd_ec8a_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_33/sim/bd_ec8a_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_34/sim/bd_ec8a_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_35/sim/bd_ec8a_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_36/sim/bd_ec8a_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_37/sim/bd_ec8a_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_38/sim/bd_ec8a_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_39/sim/bd_ec8a_m01e_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_40/sim/bd_ec8a_m02s2a_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_41/sim/bd_ec8a_m02arn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_42/sim/bd_ec8a_m02rn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_43/sim/bd_ec8a_m02awn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_44/sim/bd_ec8a_m02wn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_45/sim/bd_ec8a_m02bn_0.sv" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_1/ip/ip_46/sim/bd_ec8a_m02e_0.sv" \

vlog -work axi_register_slice_v2_1_22  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_0/sim/bd_d92b_smartconnect_0_0.v" \

vlog -work v_vscaler_v1_1_0  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/hdl/v_vscaler_v1_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/sim/bd_d92b_vsc_0.v" \

vlog -work v_hscaler_v1_1_0  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_2/hdl/v_hscaler_v1_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_2/sim/bd_d92b_hsc_0.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_22  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ebcc/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/hdl/tdata_bd_d92b_input_size_set_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/hdl/tuser_bd_d92b_input_size_set_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/hdl/tstrb_bd_d92b_input_size_set_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/hdl/tkeep_bd_d92b_input_size_set_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/hdl/tid_bd_d92b_input_size_set_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/hdl/tdest_bd_d92b_input_size_set_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/hdl/tlast_bd_d92b_input_size_set_0.v" \

vlog -work axis_subset_converter_v1_1_22  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/69d9/hdl/axis_subset_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/hdl/top_bd_d92b_input_size_set_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/sim/bd_d92b_input_size_set_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/sim/bd_d92b_rst_axis_0.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_24 -93 \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_5/sim/bd_d92b_reset_sel_axis_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_6/sim/bd_d92b_axis_register_slice_0_0.v" \

vlog -work axis_data_fifo_v2_0_4  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/abd4/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/sim/bd_d92b_axis_fifo_0.v" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Atelier.gen/sources_1/bd/design_1/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/sim/bd_d92b_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_9/sim/bd_d92b_xlslice_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/sim/bd_d92b.vhd" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/sim/design_1_v_proc_ss_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_48ac_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_48ac_psr0_0.vhd" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_48ac_psr_aclk_0.vhd" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_48ac_psr_aclk1_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_48ac_arinsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_48ac_rinsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_48ac_awinsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_48ac_winsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_48ac_binsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_48ac_aroutsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_48ac_routsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_48ac_awoutsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_48ac_woutsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_48ac_boutsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_48ac_arni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_48ac_rni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_48ac_awni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_48ac_wni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_48ac_bni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_48ac_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_48ac_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_48ac_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_48ac_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_48ac_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_48ac_srn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_48ac_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_48ac_swn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_48ac_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_48ac_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_48ac_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_48ac_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_48ac_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_48ac_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_48ac_m00bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_48ac_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_48ac_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_48ac_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_48ac_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_48ac_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_48ac_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_40/sim/bd_48ac_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_41/sim/bd_48ac_m01e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../Atelier.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/sim/bd_48ac.v" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/sim/design_1_smartconnect_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_testPatternGenerator_0_0/sim/design_1_testPatternGenerator_0_0.vhd" \
"../../../bd/design_1/ipshared/7f03/hdl/myColorRegister_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/7f03/hdl/myColorRegister_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_myColorRegister_0_0/sim/design_1_myColorRegister_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

