; Warframe AutoHotKey Macros
; Author: Andre Peiffer <necrotex@gmail.com>

#NoEnv
#Warn
#SingleInstance force
#Persistent

SendMode Input
SetTitleMatchMode, 3
macroVersion :=1.0
firstRun := false

If (A_AhkVersion <= "1.1.30")
{
	msgbox, You need AutoHotkey v1.1.30 or later to run this script. `n`nPlease go to http://ahkscript.org/download and download a recent version.
	ExitApp
}

SetWorkingDir %A_ScriptDir%

IfNotExist, settings.ini 
{
	global firstRun := true
}

#Include, %A_ScriptDir%\src\hotkeys.ahk
#Include, %A_ScriptDir%\src\settings.ahk
#Include, %A_ScriptDir%\src\gui.ahk
#Include, %A_ScriptDir%\src\sound.ahk

;setup settings first
loadSettings()

; init gui
setupGui()

;register hotkeys
activateHotkeys()