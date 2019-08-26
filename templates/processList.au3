#include <File.au3>

; Get initial process list to see if other instances are running
$iIndex = 0;
$aProcess_List = ProcessList("test.exe")
For $i = 1 To $aProcess_List[0][0]
    If $aProcess_List[$i][1] = @AutoItPID Then
        $iIndex = $i
        ExitLoop
    EndIf
Next

; If instance is not first
If $iIndex > 1 Then
    $iPrevious_Instance_PID = $aProcess_List[$iIndex - 1][1]
    ; Wait until the previous instance ends
    While ProcessExists($iPrevious_Instance_PID)
        Sleep(10)
    WEnd
EndIf

; Write to log file
_FileWriteLog(@ScriptDir & "test.log", "Start: " & @AutoItPID & " - Instance: " & $iIndex)
Sleep(2000)
_FileWriteLog(@ScriptDir & "test.log", "End: " & @AutoItPID & " - Instance: " & $iIndex)

Exit