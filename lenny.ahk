#NoEnv
#SingleInstance force

; You can change these messages, just don't make them the same
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

showToolTip() {
    ToolTip, %lenny_state%
    SetTimer, hideToolTip, 1200
}

hideToolTip() {
    SetTimer, hideToolTip, Off
    ToolTip
}

; This turns on and off the keys below the if statement
^`:: toggle()

#If (lenny_state = lenny_on)
    c:: Send ( ͡° ͜ʖ ͡°) ; the classic
    w:: Send ( ͡~ ͜ʖ ͡°) ; the winker
    s:: Send (͠≖ ͜ʖ͠≖) ; the saucy
    e:: Send ʕ ͡° ʖ̯ ͡°ʔ ; earboy sadman
    b:: Send ( ͡ ͡° ͜つ ͡͡° ) ; big nose lenny
    ; You can add more keys here...
