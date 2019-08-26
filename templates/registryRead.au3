#include <MsgBoxConstants.au3>

Local $sFilePath = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "ProgramFilesDir")
ConsoleWrite($sFilePath)
MsgBox($MB_SYSTEMMODAL, "", "Program files are located at: " & $sFilePath)