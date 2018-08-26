IfNotExist, settings.ini
{
	defaultIni := "[variables]`n"
	
	defaultIni .= "Mute=false`n"
	defaultIni .= "WarframeWindowName=Warframe`n"
	
	defaultIni .= "EquinoxSleepDelay=125`n"
	defaultIni .= "EquinoxSleepDuration=150`n"
	
	defaultIni .= "SpinDefaultSpeed=3.02`n"
	defaultIni .= "SpinMinDelay=0`n"
	defaultIni .= "SpinDelayIncrement=0.05`n"
	
	defaultIni .= "EnergyDashDelay=135`n"

	
	defaultIni .= "[hotkeys]`n"
	
	
	defaultIni .= "EquinoxSleepToggle=F2`n"
	
	defaultIni .= "SpinTrigger=XButton1`n"
	defaultIni .= "SpinMeleeKey=E`n"
	defaultIni .= "SpinCrouchKey=LCtrl`n"
	
	defaultIni .= "EnergyDashCrouch=LCtrl`n"
	defaultIni .= "EnergyDashJump=Space`n"
	defaultIni .= "EnergyDashTrigger=6`n"


	FileAppend, %defaultIni%, settings.ini, UTF-16
}


loadSettings()
{
	global
	
	; variables
	IniRead, setting_general_mute, settings.ini, variables, Mute
	IniRead, setting_general_warframe_window_name, settings.ini, variables, WarframeWindowName
	
	IniRead, setting_equinox_sleep_delay, settings.ini, variables, EquinoxSleepDelay
	IniRead, setting_equinox_sleep_duration, settings.ini, variables, EquinoxSleepDuration
	
	IniRead, setting_spin_default_speed, settings.ini, variables, SpinDefaultSpeed
	IniRead, setting_spin_min_delay, settings.ini, variables, SpinMinDelay
	IniRead, setting_spin_delay_increment, settings.ini, variables, SpinDelayIncrement
	
	IniRead, setting_energy_dash_delay, settings.ini, variables, EnergyDashDelay
	
	;hotkeys
	IniRead, hotkey_equinox_sleep_toggle, settings.ini, hotkeys, EquinoxSleepToggle
	
	IniRead, hotkey_spin_trigger, settings.ini, hotkeys, SpinTrigger
	IniRead, hotkey_spin_melee_key, settings.ini, hotkeys, SpinMeleeKey
	IniRead, hotkey_spin_crouch_key, settings.ini, hotkeys, SpinCrouchKey
	
	IniRead, hotkey_energy_dash_crouch_key, settings.ini, hotkeys, EnergyDashCrouch
	IniRead, hotkey_energy_dash_jump_key, settings.ini, hotkeys, EnergyDashJump
	IniRead, hotkey_energy_dash_trigger_key, settings.ini, hotkeys, EnergyDashTrigger
	
	return
}

saveSettings()
{
	global
	
	;remove Hotkeys
	deactivateHotkeys()
	
	; variables
	IniWrite, %setting_general_mute%, settings.ini, variables, Mute
	
	IniWrite, %setting_equinox_sleep_delay%, settings.ini, variables, EquinoxSleepDelay
	IniWrite, %setting_equinox_sleep_duration%, settings.ini, variables, EquinoxSleepDuration
	
	IniWrite, %setting_spin_default_speed%, settings.ini, variables, SpinDefaultSpeed
	IniWrite, %setting_spin_min_delay%, settings.ini, variables, SpinMinDelay
	IniWrite, %setting_spin_delay_increment%, settings.ini, variables, SpinDelayIncrement
	
	IniWrite, %setting_energy_dash_delay%, settings.ini, variables, EnergyDashDelay

	
	;hotkeys
	IniWrite, %hotkey_equinox_sleep_toggle%, settings.ini, hotkeys, EquinoxSleepToggle
	
	IniWrite, %hotkey_spin_trigger%, settings.ini, hotkeys, SpinTrigger
	IniWrite, %hotkey_spin_melee_key%, settings.ini, hotkeys, SpinMeleeKey
	IniWrite, %hotkey_spin_crouch_key%, settings.ini, hotkeys, SpinCrouchKey
	
	IniWrite, %hotkey_energy_dash_crouch_key%, settings.ini, hotkeys, EnergyDashCrouch
	IniWrite, %hotkey_energy_dash_jump_key%, settings.ini, hotkeys, EnergyDashJump
	IniWrite, %hotkey_energy_dash_trigger_key%, settings.ini, hotkeys, EnergyDashTrigger
	
	; readd hotkeys
	activateHotkeys()
	
	return
}