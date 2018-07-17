mNumber = 0 ; Needed initially
`:: ; Tilde (for playback)
mNumber = 0 ; Number tracker [array] reset before operating
mUsed = 1 ; Determines if recording played at least once so next recording starts fresh
CoordMode, Mouse, Screen
MouseGetPos, mX, mY ; Memorizes current mousepos
Loop %cNumber% ; Only loops # of positions recorded
{
mNumber := mNumber + 1 ; Incrementally increases to keep track of which # set of mouse coordinates you are on.
MouseMove, pmX%mNumber%, pmY%mNumber%, 0 ; Moves mouse according to # in array
Send {LButton} ; Optional
}
MouseMove, mX, mY, 0 ; Moves mouse back
return

+`:: ; Shift + Tilde (for record/re-record)
If(mUsed == 1) ; Re-records if played at least once, otherwise add to current recording.
{
mUsed = 0
mNumber = 0
}
mNumber := mNumber + 1
cNumber := mNumber ; Notes # of times recorded total
CoordMode, Mouse, Screen
MouseGetPos, pmX%mNumber%, pmY%mNumber% ; Records corresponding x and y
return