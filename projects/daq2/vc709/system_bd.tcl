
## FIFO depth is 8Mb - 500k samples
set adc_fifo_address_width 17

## FIFO depth is 8Mb - 500k samples
set dac_fifo_address_width 16

source $ad_hdl_dir/projects/common/vc709/vc709_system_bd.tcl
source $ad_hdl_dir/projects/common/xilinx/adcfifo_bd.tcl
source $ad_hdl_dir/projects/common/xilinx/dacfifo_bd.tcl
source ../common/daq2_bd.tcl

#system ID
ad_ip_parameter axi_sysid_0 CONFIG.ROM_ADDR_BITS 9
ad_ip_parameter rom_sys_0 CONFIG.PATH_TO_FILE "[pwd]/mem_init_sys.txt"
ad_ip_parameter rom_sys_0 CONFIG.ROM_ADDR_BITS 9
sysid_gen_sys_init_file 