# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CLK_IN_FREQ_MHZ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RETRY_NUM" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SCL_FREQ_KHZ" -parent ${Page_0}


}

proc update_PARAM_VALUE.CLK_IN_FREQ_MHZ { PARAM_VALUE.CLK_IN_FREQ_MHZ } {
	# Procedure called to update CLK_IN_FREQ_MHZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_IN_FREQ_MHZ { PARAM_VALUE.CLK_IN_FREQ_MHZ } {
	# Procedure called to validate CLK_IN_FREQ_MHZ
	return true
}

proc update_PARAM_VALUE.RETRY_NUM { PARAM_VALUE.RETRY_NUM } {
	# Procedure called to update RETRY_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RETRY_NUM { PARAM_VALUE.RETRY_NUM } {
	# Procedure called to validate RETRY_NUM
	return true
}

proc update_PARAM_VALUE.SCL_FREQ_KHZ { PARAM_VALUE.SCL_FREQ_KHZ } {
	# Procedure called to update SCL_FREQ_KHZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SCL_FREQ_KHZ { PARAM_VALUE.SCL_FREQ_KHZ } {
	# Procedure called to validate SCL_FREQ_KHZ
	return true
}


proc update_MODELPARAM_VALUE.CLK_IN_FREQ_MHZ { MODELPARAM_VALUE.CLK_IN_FREQ_MHZ PARAM_VALUE.CLK_IN_FREQ_MHZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_IN_FREQ_MHZ}] ${MODELPARAM_VALUE.CLK_IN_FREQ_MHZ}
}

proc update_MODELPARAM_VALUE.SCL_FREQ_KHZ { MODELPARAM_VALUE.SCL_FREQ_KHZ PARAM_VALUE.SCL_FREQ_KHZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SCL_FREQ_KHZ}] ${MODELPARAM_VALUE.SCL_FREQ_KHZ}
}

proc update_MODELPARAM_VALUE.RETRY_NUM { MODELPARAM_VALUE.RETRY_NUM PARAM_VALUE.RETRY_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RETRY_NUM}] ${MODELPARAM_VALUE.RETRY_NUM}
}

