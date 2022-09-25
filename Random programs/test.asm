// BasicUpstart2(main)
BasicUpstart2(Background)
// /usr/share/doc/c64-debugger/C64_Debugger_Manual_v0.64.56.pdf

// * = $0801
// Ctrl + Shift + P - VS Code

// main:
//     inc $d020 
//     inc $d021
//     jmp main

Background:
    lda #$00    // 8 bit 
    sta $d020   // 16 bit address - Border
    sta $d021   // 16 bit address - Background
    rts