;troll lock

active = 0

#persistent
RControl & RShift::
active = 1
return

$~RButton::
$~LButton::
if (active = 1) {
	MsgBox, 0, , Go away!, 5
	active = 0
	DllCall("user32.dll\LockWorkStation")
}
return