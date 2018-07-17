mNumber = 0
`::
mNumber = 0
mUsed = 1
CoordMode, Mouse, Screen
MouseGetPos, mX, mY
Loop %cNumber%
{
mNumber := mNumber + 1
MouseMove, pmX%mNumber%, pmY%mNumber%, 0
Send {LButton}
}
MouseMove, mX, mY, 0
return

+`::
If(mUsed == 1)
{
mUsed = 0
mNumber = 0
}
mNumber := mNumber + 1
cNumber := mNumber
CoordMode, Mouse, Screen
MouseGetPos, pmX%mNumber%, pmY%mNumber%
return