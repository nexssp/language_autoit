#include <GUIConstantsEx.au3>
#include <SendMessage.au3>
#include <WindowsConstants.au3>

Global Const $SC_DRAGMOVE = 0xF012

Example() ; Idea by prizm1

Func Example()
    Local $iHeight = 250, $iWidth = 400

    Local $hGUI = GUICreate('', $iWidth, $iHeight, Default, Default, BitOR($WS_POPUP, $WS_BORDER), $WS_EX_TOPMOST)
    GUICtrlCreateGroup('', 0, -5, $iWidth, $iHeight + 5, $WS_THICKFRAME)
    GUICtrlCreateGroup('', -99, -99, 1, 1)
    Local $iClose = GUICtrlCreateButton('Close', $iWidth - 100, $iHeight - 40, 85, 25)

    GUISetState(@SW_SHOW, $hGUI)

    While 1
        Switch GUIGetMsg()
            Case $GUI_EVENT_CLOSE, $iClose
                ExitLoop

            Case $GUI_EVENT_PRIMARYDOWN
                _SendMessage($hGUI, $WM_SYSCOMMAND, $SC_DRAGMOVE, 0)

        EndSwitch
    WEnd

    GUIDelete($hGUI)
EndFunc   ;==>Example