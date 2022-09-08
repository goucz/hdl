source ../../../scripts/adi_env.tcl
source $ad_hdl_dir/projects/scripts/adi_project_xilinx.tcl
source $ad_hdl_dir/projects/scripts/adi_board.tcl

adi_project basic_gpio_zcu102 0 [list ]

adi_project_files basic_gpio_zcu102 [list \
  "system_top.v" \
  "system_constr.xdc"\
  "timing_constr.xdc"\
  "$ad_hdl_dir/library/common/ad_iobuf.v" \
  "$ad_hdl_dir/projects/common/zcu102/zcu102_system_constr.xdc" ]


adi_project_run basic_gpio_zcu102
