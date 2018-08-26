playActivationBeep()
{
	global
	
	if setting_general_mute = 1
		return
		
	SoundBeep, 440, 100
	sleep, 50
	SoundBeep, 400, 100
}

playDeactivationBeep()
{
	global
	
	if setting_general_mute = 1
		return
		
	SoundBeep, 400, 100
	sleep, 50
	SoundBeep, 440, 100
}