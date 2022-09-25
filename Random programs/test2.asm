BasicUpstart2(Entry)
// Ctrl + Shift + P - VS Code
// /usr/share/doc/c64-debugger/C64_Debugger_Manual_v0.64.56.pdf
Entry:
    lda #$00    // 8 bit 
    sta $d020   // 16 bit address - Border
    sta $d021   // 16 bit address - Background

    lda #0 // Indexs

    ldx #1 // x
    inx 
    dex

    ldy #2 // y
    iny 
    dey

    rts