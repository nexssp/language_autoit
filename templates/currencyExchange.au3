ConsoleWrite(_GetExchangeRate('1', 'GBP', 'EUR') & @CRLF) ; Returns the same value in Euros.
ConsoleWrite(_GetExchangeRate('1', 'EUR', 'GBP') & @CRLF) ; Returns the same value in British pounds.
; TOFIX!!!
; Version: 1.00. AutoIt: V3.3.8.1
; Convert from one currency to the other using Google's Calculator API.
Func _GetExchangeRate($iAmount, $sFromExchange, $sToExchange)
    Local $sData = BinaryToString(InetRead('http://www.google.com/ig/calculator?hl=en&q=' & $iAmount & $sFromExchange & '=?' & $sToExchange))
    ConsoleWrite($sData)
    Local $aArray = StringRegExp($sData, 'rhs:s"(d+(?:.d*)?s+[w.s]*)', 3)
    If @error Then
        Return SetError(1, 0, '')
    EndIf
    Return StringStripWS($aArray[0], 3)
EndFunc   ;==>_GetExchangeRate