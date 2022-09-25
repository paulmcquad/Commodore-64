BasicUpstart2(Entry)
// Ctrl + Shift + P - VS Code
// /usr/share/doc/c64-debugger/C64_Debugger_Manual_v0.64.56.pdf
Entry:
    lda #$00    // 8 bit 
    sta $d020   // 16 bit address - Border

    ldx #1 // x
    inx 
    inx
    dex
    stx $d021

    rts