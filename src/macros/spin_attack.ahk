spinAttacMacro()
{
	global
	
	BlockInput On
	Send, {%hotkey_spin_crouch_key% down}
	Sleep, %setting_spin_min_delay%
	Send, {%hotkey_spin_melee_key%}
	Send, {%hotkey_spin_crouch_key% up}
	BlockInput Off
	
	return
}