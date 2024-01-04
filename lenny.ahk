#NoEnv
#SingleInstance force

; You can change these messages, just don't make them the same as one another
global lenny_on := "Lenny is here..."
global lenny_off := "Okay bye then"

global lenny_state := lenny_off

toggle() {
    if (lenny_state = lenny_off)
        lenny_state := lenny_on
    Else
        lenny_state := lenny_off

    showToolTip()
}

; The 1200 is the numbe rof milliseconds to display the tooltip
; You can increase or decrease it
showToolTip() {
    ToolTip, %lenny_state%
    SetTimer, hideToolTip, 1200
}

hideToolTip() {
    SetTimer, hideToolTip, Off
    ToolTip
}

; This turns on and off the keys below the if statement
; It's set to ctrl+` (` is the symbol under the tilde symbol, top-left of your keyboard)
; Change it to what you want
^`:: toggle()

#If (lenny_state = lenny_on)
    c:: Send ( ͡° ͜ʖ ͡°) ; the classic
    w:: Send ( ͡~ ͜ʖ ͡°) ; the winker
    s:: Send (͠≖ ͜ʖ͠≖) ; the saucy
    e:: Send ʕ ͡° ʖ̯ ͡°ʔ ; earboy sadman
    b:: Send ( ͡ ͡° ͜つ ͡͡° ) ; big nose lenny
    ; You can add more below...
