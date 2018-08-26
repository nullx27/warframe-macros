energyDashMacro()
{
	global
	
	 Send, 5
	Sleep, setting_energy_dash_delay
	Send, {%hotkey_energy_dash_crouch_key% Down}
	Sleep, setting_energy_dash_delay
	Send, {%hotkey_energy_dash_jump_key%}
	Sleep, setting_energy_dash_delay
	Send {%hotkey_energy_dash_crouch_key% Up}
	Sleep, setting_energy_dash_delay
	Send, 5

	
	return
}