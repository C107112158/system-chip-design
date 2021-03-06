# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config -id {Common 17-41} -limit 10000000
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.cache/wt [current_project]
set_property parent.project_path C:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_output_repo c:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.srcs/sources_1/bd/SnakeGame_BD/hdl/SnakeGame_BD_wrapper.v
add_files C:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.srcs/sources_1/bd/SnakeGame_BD/SnakeGame_BD.bd
set_property used_in_implementation false [get_files -all c:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ip/SnakeGame_BD_processing_system7_0_0/SnakeGame_BD_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ip/SnakeGame_BD_axi_gpio_0_0/SnakeGame_BD_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ip/SnakeGame_BD_axi_gpio_0_0/SnakeGame_BD_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ip/SnakeGame_BD_axi_gpio_0_0/SnakeGame_BD_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ip/SnakeGame_BD_axi_gpio_1_0/SnakeGame_BD_axi_gpio_1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ip/SnakeGame_BD_axi_gpio_1_0/SnakeGame_BD_axi_gpio_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ip/SnakeGame_BD_axi_gpio_1_0/SnakeGame_BD_axi_gpio_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ip/SnakeGame_BD_rst_ps7_0_100M_0/SnakeGame_BD_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ip/SnakeGame_BD_rst_ps7_0_100M_0/SnakeGame_BD_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ip/SnakeGame_BD_rst_ps7_0_100M_0/SnakeGame_BD_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ip/SnakeGame_BD_xbar_0/SnakeGame_BD_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.srcs/sources_1/bd/SnakeGame_BD/ip/SnakeGame_BD_auto_pc_0/SnakeGame_BD_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/SOC_Final_Project_Snake_Game/SnakeGame/SnakeGame.srcs/sources_1/bd/SnakeGame_BD/SnakeGame_BD_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top SnakeGame_BD_wrapper -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef SnakeGame_BD_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file SnakeGame_BD_wrapper_utilization_synth.rpt -pb SnakeGame_BD_wrapper_utilization_synth.pb"
