#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Read config
IniRead, Key, config.ini, Settings, key
IniRead, Training, config.ini, Settings, Training
IniRead, Delay, config.ini, FineTuning, KeyPressDelay

;Bind HotKey
Hotkey,~%Key%,QuickTraining
Return

;HotKey Script
QuickTraining:

IfWinActive, Rocket League
{
  if(Key != Enter && Key != Space && Key != Backspace) {
    Send {Enter}
  }
  Sleep, %Delay%
  Send {Down}
  Sleep, 1
  Send {Enter}
  Sleep, %Delay%
  Loop %Training% {
    Send {Right}
    Sleep, 1
  }
  Send {Enter}
  Sleep, %Delay%
  Loop %Training% {
    Send {Down}
    Sleep, 1
  }
  Send {Enter}

  return
}