^!up::
WinSet, AlwaysOnTop, On, A
WinGetTitle, title, A
TrayTip 置顶, "%title%", 5, 1
return

^!down::
WinSet, AlwaysOnTop, Off, A
WinGetTitle, title, A
TrayTip 取消置顶, "%title%", 5, 1
return



; WinGet, status, ExStyle, A
; if (status & 0x8) {
