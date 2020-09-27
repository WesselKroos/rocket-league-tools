#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Read config
IniRead, Key, config.ini, Settings, key, Control
IniRead, Mode, config.ini, Settings, Mode, 0
IniRead, Delay, config.ini, FineTuning, KeyPressDelay, 200
IniRead, ShortDelay, config.ini, FineTuning, ShortDelay, 100

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
  Sleep, %Delay%
  ;Loop %Mode% {
  ;  Send {Right}
  ;  Sleep, %ShortDelay%
  ;}
  Send {Enter}
  Sleep, %Delay%
  ;Send {Down}
  ;Sleep, %ShortDelay%
  ;if (%Mode% == 0) {
  ;  Send {Down}
  ;  Sleep, %ShortDelay%
  ;}
  Send {Enter}
  Sleep, %Delay%
  Send {Esc}
  Send {Esc}
  Send {Esc}

  return
}