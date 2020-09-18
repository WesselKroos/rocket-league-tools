#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Read config
IniRead, Key, config.ini, Settings, key
IniRead, Mode, config.ini, Settings, Mode

;Bind HotKey
Hotkey,~%Key%,QuickPlay
Return

;HotKey Script
QuickPlay:

IfWinActive, Rocket League
{
  if(Key != Enter && Key != Space && Key != Backspace) {
    Send {Enter}
  }
  Sleep, 200
  Loop %Mode% {
    Send {Right}
    Sleep, 1
  }
  Send {Enter}
  Sleep, 200
  Send {Down}
  Sleep, 1
  if (%Mode% == 0) {
    Send {Down}
    Sleep, 1
  }
  Send {Enter}

  return
}