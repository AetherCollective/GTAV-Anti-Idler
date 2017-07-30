$minutes = 1
MsgBox(0,"GTAV Anti Idle","Press Alt+Esc to exit this program. It will automatically move you forward every minute to prevent afk. Make sure you do not have chat active.")
AdlibRegister("NoIdle", 60000 * $minutes)
HotKeySet("!{esc}", "_exit")
While 1
	Sleep(60000)
WEnd
Func NoIdle()
	if WinGetTitle("[active]") = "Grand Theft Auto V" then send("{W down}")
	Sleep(Random(500, 1200))
	send("{W up}")
EndFunc   ;==>NoIdle
Func _exit()
	Exit MsgBox(0,"GTAV Anti Idle","Thanks for using BetaLeaf.net's GTAV Anti Idler. Have a great day!")
EndFunc   ;==>_exit
