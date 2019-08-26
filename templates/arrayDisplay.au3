#include <Array.au3>
Local $aArray = _StringEqualSplit('abcdefghijklmnopqrstuvwxyz', 5)
_ArrayDisplay($aArray)
$aArray = _StringEqualSplit(1234567890, 5)
_ArrayDisplay($aArray)

; By czardas & modified by guinness >> [url="http://www.autoitscript.com/forum/topic/139260-autoit-snippets/page__st__20#entry992149"]http://www.autoitscript.com/forum/topic/139260-autoit-snippets/page__st__20#entry992149[/url]
; Version: 1.00. AutoIt: V3.3.8.1
; Splits a string into an equal number of characters. The 0th index returns the number of items.
Func _StringEqualSplit($sString, $iNumChars)
     Local $aArray = StringRegExp($sString, '(?s).{1,' & $iNumChars & '}', 3)
     Local $aArray1[UBound($aArray) + 1]
     For $I = 1 To UBound($aArray)
         $aArray1[$I] = $aArray[$I - 1]
     Next
     $aArray1[0] = UBound($aArray) 
     Return SetError(@error, 0, $aArray1)
EndFunc ;==>_StringEqualSplit