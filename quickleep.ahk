;quicklock

~RControl::
if (A_PriorHotkey != "~RControl" or A_TimeSincePriorHotkey > 200)
{
    ; Too much time between presses, so this isn't a double-press.
    KeyWait, RControl
    return
}
DllCall("user32.dll\LockWorkStation")
return