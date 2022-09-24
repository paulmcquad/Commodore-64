// BasicUpstart2(main)
BasicUpstart2(Background)


// * = $0801
// Ctrl + Shift + P - VS Code


// main:
//     inc $d020
//     inc $d021
//     jmp main

Background:
    lda #$00
    sta $d020
    rts