#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;;;;;;;;;;;;
;Settings
;;;;;;;;;;;;

;List of all hotkey names: https://www.autohotkey.com/docs/Hotkeys.htm
Key=Backspace

Mode=1
;0 = Casual
;1 = Competitive

;;;;;;;;;;;;
;Script code
;;;;;;;;;;;;

Hotkey,~%Key%,QuickPlay
Return

QuickPlay:

IfWinActive, Rocket League
{
  if(Key != Enter && Key != Spacebar && Key != Backspace) {
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