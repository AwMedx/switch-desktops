/*
# = Win Key | ^ = Ctrl Key | ! = Alt Key
*/

whichDesktop := 0

; Upon bootup, user starts script on the second desktop
Scrolllock::
if (whichDesktop == 0) {
    whichDesktop := 1
} 

if (whichDesktop == 1) {
    whichDesktop := 0
}

Pause::
if (whichDesktop == 0) {
    Send #^{Right}
    whichDesktop := 1
    return
}

if (whichDesktop == 1) {
    Send #^{Left}
    whichDesktop := 0
    return
}
