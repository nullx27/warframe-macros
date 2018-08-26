#Include, %A_ScriptDir%\src\macros\eqinox_sleep.ahk
#Include, %A_ScriptDir%\src\macros\spin_attack.ahk
#Include, %A_ScriptDir%\src\macros\energy_dash.ahk

deactivateHotkeys()
{
	global
	;Hotkey, IfWinActive, %setting_general_warframe_window_name%
	
	if hotkey_equinox_sleep_toggle
	{
		Hotkey,% hotkey_equinox_sleep_toggle, equinoxSleepMacro, Off
	}
	
	if hotkey_spin_trigger
	{
		Hotkey,% hotkey_spin_trigger, spinAttacMacro, Off
	}
	
	if hotkey_energy_dash_trigger_key
	{
		Hotkey,% hotkey_energy_dash_trigger_key, energyDashMacro, Off
	}
}

activateHotkeys()
{
	global
	;Hotkey, IfWinActive, %setting_general_warframe_window_name%
	
	if hotkey_equinox_sleep_toggle
	{
		Hotkey,% hotkey_equinox_sleep_toggle, equinoxSleepMacro, On
	}
	
	if hotkey_spin_trigger
	{
		Hotkey,% hotkey_spin_trigger, spinAttacMacro, On
	}
	
	if hotkey_energy_dash_trigger_key
	{
		Hotkey,% hotkey_energy_dash_trigger_key, energyDashMacro, On
	}
}
