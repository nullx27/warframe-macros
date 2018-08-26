sleep_toggle := false

equinoxSleepMacro()
{
	global
	
	if (sleep_toggle)
	{
		sleep_toggle := false
		playDeactivationBeep()
		
		SetTimer, triggerSleep, Off
	}
		
	else
	{
		sleep_toggle := true
		playActivationBeep()
		
		triggerSleep()
		SetTimer, triggerSleep, %setting_equinox_sleep_duration%
	}		
}

triggerSleep()
{
	Send 2
	return
}
