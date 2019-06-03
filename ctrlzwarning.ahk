; Disable CTRL-Z in Windows Explorer and Warn in others
; Original Adam Taylor aka EposVos 's CTRLZ.ahk

SetTitleMatchMode RegEx
LastTitle := ""
return

; Disable Ctrl+Z KEYBOARD shortcut in Windows Explorer
#IfWinActive ahk_class ExploreWClass|CabinetWClass
^z::
WinGetActiveTitle, LastTitle
TrayTip, 警告, 请手动在资源管理器菜单内执行撤销
return
#IfWinActive
$^z::
WinGetActiveTitle, tmpTitle
if (tmpTitle = "")
{
TrayTip, 警告, 请手动在资源管理器菜单内执行撤销
return
}
if (tmpTitle = LastTitle)
{
Send ^z
}
else
{
LastTitle := tmpTitle
TrayTip, 注意, 现在在%tmpTitle%内的撤销操作已被允许
}
return
