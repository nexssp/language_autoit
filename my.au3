;~ Nexss PROGRAMMER 2.0.0 - AutoIt 3
;~ Default template for JSON Data
#include <MsgBoxConstants.au3>
#include "3rdPartyLibraries/JSON/json.au3"
;~ FIXME: TOFIX utf8 https://www.autoitscript.com/forum/topic/188220-how-to-set-the-correct-encoding-for-stderr-and-stdout/
;~ STDIN
Local $NexssStdin
While True
    $NexssStdin &= ConsoleRead()
    If @error Then ExitLoop
    Sleep(25)
WEnd

$parsedJson = json_decode($NexssStdin)
;~ Json_ObjPut($parsedJson, "test", "test")

Json_ObjPut($parsedJson, "AutoItOutput", "Hello from Auto It! " & @AutoItVersion)
;~ @AutoItVersion
;~ $start = Json_ObjGet($object,"start") OR Json_Get($json, '["upload"]["links"]["original"]')

;~ ================================= Nexss
;~ Your code goes here
;~ ================================= Nexss

$NexssStdout = Json_Encode($parsedJson)
ConsoleWrite($NexssStdout)