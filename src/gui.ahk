
setupGUI()
{
	global
	
	Menu Tray, Icon, %A_ScriptDir%\resources\icon.ico

	Menu, AHK, Standard
	Menu, Tray, DeleteAll ; try add this
	Menu, Tray, NoStandard

	Menu, Tray, Add, Settings, showSettingsGUI  ; Creates a new menu item.
	Menu, Tray, Add, Exit, exitScript

	Gui, Add, Button, x212 y299 w90 h30 , Save
	Gui, Add, Button, x112 y299 w90 h30 , Cancel
		
	Gui, Add, Tab, x4 y8 w308 h281 , General|Spin Attack|Equinox Focus Farming|Energy Dash
		
	Gui, Add, GroupBox, x12 y39 w290 h50 , Sound
	Gui, Add, CheckBox, vsetting_general_mute x22 y59 w150 h20, Mute

	Gui, Tab, Equinox Focus Farming
	Gui, Add, GroupBox, x12 y39 w290 h90 , Settings
	
	Gui, Add, Text, x22 y59 w130 h20, Delay
	Gui, Add, Edit, vsetting_equinox_sleep_delay x162 y59 w130 h20, %setting_equinox_sleep_delay%

	;Gui, Add, Text, x22 y89 w130 h20, Duration
	;Gui, Add, Edit, vsetting_equinox_sleep_duration x162 y89 w130 h20, %setting_equinox_sleep_duration%
	
	Gui, Add, GroupBox, x12 y139 w290 h120 , Hotkeys
	
	Gui, Add, Text, x22 y159 w130 h20 , Toggle (on/off)
	Gui, Add, Hotkey, vhotkey_equinox_sleep_toggle x162 y159 w130 h20 , %hotkey_equinox_sleep_toggle%
		
	Gui, Tab, Spin Attack
	Gui, Add, GroupBox, x12 y39 w290 h120 , Settings
	
	Gui, Add, Text, x22 y59 w140 h20 , Attack Speed
	Gui, Add, Edit, vsetting_spin_default_speed x172 y59 w120 h20 , %setting_spin_default_speed%
	
	Gui, Add, Text, x22 y89 w140 h20 , Delay
	Gui, Add, Edit, vsetting_spin_min_delay x172 y89 w120 h20 , %setting_spin_min_delay%

	;Gui, Add, Text, x22 y119 w140 h20 , Delay Increments
	;Gui, Add, Edit, vsetting_spin_delay_increment x172 y119 w120 h20 , %setting_spin_delay_increment%
	
	Gui, Add, GroupBox, x12 y169 w290 h110 , Hotkeys
	
	Gui, Add, Text, x22 y189 w140 h20 , Spin Attack
	Gui, Add, Hotkey, vhotkey_spin_trigger x172 y189 w120 h20 , %hotkey_spin_trigger%
	
	Gui, Add, Text, x22 y219 w140 h20 , Melee Attack
	Gui, Add, Hotkey, vhotkey_spin_melee_key x172 y219 w120 h20 , %hotkey_spin_melee_key%

	Gui, Add, Text, x22 y249 w140 h20 , Crouch
	Gui, Add, Hotkey, vhotkey_spin_crouch_key x172 y249 w120 h20 , %hotkey_spin_crouch_key%
	
	Gui, Tab, Energy Dash
	Gui, Add, GroupBox, x12 y39 w290 h120 , Settings
	Gui, Add, Text, x22 y59 w140 h20 , Delay
	Gui, Add, Edit, vsetting_energy_dash_delay x172 y59 w120 h20 , %setting_energy_dash_delay%

	
	Gui, Add, GroupBox, x12 y169 w290 h110 , Hotkeys
	
	Gui, Add, Text, x22 y189 w140 h20 , Energy Dash
	Gui, Add, Hotkey, vhotkey_energy_dash_trigger_key x172 y189 w120 h20 , %hotkey_energy_dash_trigger_key%
	
	Gui, Add, Text, x22 y219 w140 h20 , Crouch
	Gui, Add, Hotkey, vhotkey_energy_dash_crouch_key x172 y219 w120 h20 , %hotkey_energy_dash_crouch_key%

	Gui, Add, Text, x22 y249 w140 h20 , Jump
	Gui, Add, Hotkey, vhotkey_energy_dash_jump_key x172 y249 w120 h20 , %hotkey_energy_dash_jump_key%
}

showSettingsGUI()
{
	Gui, Show, x633 y279 h343 w321, New GUI Settings
	Return
}

exitScript()
{
	ExitApp
}

ButtonSave()
{
	Gui, Submit
	saveSettings()
	return
}

buttonCancel()
{
	Gui, Cancel
	Gui, Hide
	return
}
