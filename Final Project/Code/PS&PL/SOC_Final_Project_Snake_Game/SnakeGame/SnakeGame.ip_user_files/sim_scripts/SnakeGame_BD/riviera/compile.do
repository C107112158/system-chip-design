vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v2_0_0
vlib riviera/axi_vip_v1_1_0
vlib riviera/processing_system7_vip_v1_0_2
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_2
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_16
vlib riviera/proc_sys_reset_v5_0_12
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_14
vlib riviera/fifo_generator_v13_2_0
vlib riviera/axi_data_fifo_v2_1_13
vlib riviera/axi_crossbar_v2_1_15
vlib riviera/axi_protocol_converter_v2_1_14

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_0 riviera/axi_protocol_checker_v2_0_0
vmap axi_vip_v1_1_0 riviera/axi_vip_v1_1_0
vmap processing_system7_vip_v1_0_2 riviera/processing_system7_vip_v1_0_2
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_16 riviera/axi_gpio_v2_0_16
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_14 riviera/axi_register_slice_v2_1_14
vmap fifo_generator_v13_2_0 riviera/fifo_generator_v13_2_0
vmap axi_data_fifo_v2_1_13 riviera/axi_data_fifo_v2_1_13
vmap axi_crossbar_v2_1_15 riviera/axi_crossbar_v2_1_15
vmap axi_protocol_converter_v2_1_14 riviera/axi_protocol_converter_v2_1_14

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_0  -sv2k12 "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5c1/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_0  -sv2k12 "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/8b42/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_2  -sv2k12 "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/SnakeGame_BD/ip/SnakeGame_BD_processing_system7_0_0/sim/SnakeGame_BD_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_16 -93 \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e9c1/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/SnakeGame_BD/ip/SnakeGame_BD_axi_gpio_0_0/sim/SnakeGame_BD_axi_gpio_0_0.vhd" \
"../../../bd/SnakeGame_BD/ip/SnakeGame_BD_axi_gpio_1_0/sim/SnakeGame_BD_axi_gpio_1_0.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/SnakeGame_BD/ip/SnakeGame_BD_rst_ps7_0_100M_0/sim/SnakeGame_BD_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_14  -v2k5 "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/a259/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_0  -v2k5 "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/0798/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_0 -93 \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/0798/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_0  -v2k5 "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/0798/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_13  -v2k5 "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/74ae/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_15  -v2k5 "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/a1b8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/SnakeGame_BD/ip/SnakeGame_BD_xbar_0/sim/SnakeGame_BD_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_14  -v2k5 "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/33cc/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/ec67/hdl" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/d5d3/hdl/verilog" "+incdir+../../../../SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ipshared/e0a2/hdl" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/SnakeGame_BD/ip/SnakeGame_BD_auto_pc_0/sim/SnakeGame_BD_auto_pc_0.v" \
"../../../bd/SnakeGame_BD/sim/SnakeGame_BD.v" \

vlog -work xil_defaultlib \
"glbl.v"

