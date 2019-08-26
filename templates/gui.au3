#NoTrayIcon ; So no icon is displayed in the trayicon menu.
#include <GUIConstants.au3>

Example()

Func Example()
    Local $hGUI = _GUICreateNoTaskBar('Example of a GUI with no TaskBar icon/button', 500, 500, -1, -1)
    Local $iClose = GUICtrlCreateButton('Close', 410, 470, 85, 25)
    GUISetState(@SW_SHOW, $hGUI)

    While 1
        Switch GUIGetMsg()
            Case $GUI_EVENT_CLOSE, $iClose
                ExitLoop
        EndSwitch
    WEnd
    GUIDelete($hGUI)
EndFunc   ;==>Example

; Version: 1.00. AutoIt: V3.3.8.1
; Create a GUI without a taskbar icon/button, this uses AutoIt's internal hidden window as the parent GUI.
Func _GUICreateNoTaskBar($sTitle, $iWidth, $iHeight = Default, $iLeft = Default, $iTop = Default, $bStyle = Default, $bStyleEx = Default)
    Return GUICreate($sTitle, $iWidth, $iHeight, $iLeft, $iTop, $bStyle, $bStyleEx, WinGetHandle(AutoItWinGetTitle()))
EndFunc   ;==>_GUICreateNoTaskBar