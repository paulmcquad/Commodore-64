BasicUpstart2(Entry)
// Ctrl + Shift + P - VS Code
// /usr/share/doc/c64-debugger/C64_Debugger_Manual_v0.64.56.pdf
// F11 - Run
Entry:
    inc $d020
    jmp Entry // Stops Here