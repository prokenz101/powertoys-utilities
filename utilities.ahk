F8::
    Send, ^a
    Send, ^c
    Sleep, 150
    Run, pythonw utilities.pyw %Clipboard%
Return

+F7::
    Run, powershell Get-Process AutoHotkey | Stop-Process
Return

+F8::
    Send, ^c
    Sleep, 150
    Run, pythonw utilities.pyw %Clipboard%
Return

#IfWinNotActive, ahk_exe Code.exe

$"::
    SendRaw, ""
    Send, {Left}
Return

$'::
    if (A_PriorKey = "Space") {
        SendRaw, ''
        Send, {Left}
    } else {
        SendRaw, '
    }
Return

$(::
    if (A_PriorKey = ";") {
        SendRaw, (
    }
    Else {
        SendRaw, ()
        Send, {Left}
    }
Return

${::
    SendRaw, {}
    Send, {Left}
Return

$[::
    SendRaw, []
    Send, {Left}
Return

^+K::
    Send, {Home}
    Sleep, 150
    Send, {Shift down}
    Send, {End down}
    Send, {Shift up}
    Send, {End up}
    Send, {BackSpace 2}
Return

$^{::
    SendRaw, {
    Return
    
    $^(::
        SendRaw, (
    Return
    
    $^[::
        SendRaw, [
    Return