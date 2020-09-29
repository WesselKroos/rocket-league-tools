#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Read config
IniRead, Key, config.ini, Settings, key, Alt
IniRead, Training, config.ini, Settings, Training, 0
IniRead, Delay, config.ini, FineTuning, KeyPressDelay, 200
IniRead, ShortDelay, config.ini, FineTuning, ShortDelay, 100

;Bind HotKey
Hotkey,~%Key%,QuickTraining
Return

;HotKey Script
QuickTraining:

if WinActive("Rocket League (64-bit, DX11, Cooked)")
{
  if(Key != Enter && Key != Space && Key != Backspace) {
    Send {Enter}
  }
  Sleep, %Delay%
  Loop 2 {
    Send {Right}
    Sleep, %ShortDelay%
  }
  Loop 2 {
    Send {Left}
    Sleep, %ShortDelay%
  }
  Send {Down}
  Sleep, %ShortDelay%
  Send {Enter}
  Sleep, %Delay%
  Loop %Training% {
    Send {Right}
    Sleep, %ShortDelay%
  }
  Send {Enter}
  Sleep, %Delay%
  Loop %Training% {
    Send {Down}
    Sleep, %ShortDelay%
  }
  Send {Enter}

  return
}