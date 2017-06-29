#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;#InstallKeybdHook

; Win key opens listary
~LWin::
	KeyWait, LWin
return

~LWin Up::
	Send {LWin Up}
	If (A_PriorHotKey = "~LWin" AND A_TimeSincePriorHotkey < 200)
		Send ^+!f
	; else  ; another action after long press (not recommendet)
    ; Send, b
return

; Ç on altgr-4
°::Ç

; © on altgr-c
<^>!c::©

; em dash on altgr--
<^>!-::—

; tild on altgr-^
<^>!VKDD::Send {U+007E}

; ⋅ on altgr-§
<^>!VKBF::Send {U+22C5}

; ⋅ on alt-§
<!VKBF::Send {U+22C5}

; 「 on altgr-8
<^>!8::Send {U+300C}

; 」 on altgr-9
<^>!9::Send {U+300D}
