:BasicUpstart2(main)

.const VIC = $d000

.const BORDER_COLOR = VIC + 32
.const BACKGROUND_COLOR = VIC + 33

.const SCREEN = $0400

.const STARTING_LEVEL = level1

main:
  jsr setup_level
game_loop:
  jmp game_loop
rts

setup_level:
  ldx #0
!loop:
.for(var i = 0; i < 1000; i = i + 255) {
  lda STARTING_LEVEL + i, X
  sta SCREEN + i, X
}
  inx
  cpx #255
  bne !loop-
  
  lda #BLACK
  sta BORDER_COLOR
  sta BACKGROUND_COLOR
  
  rts

.pc = $c000 "Level Data"
level1:
  .text "########################################"
  .text "#                                      #"
  .text "#   reach the exit                     #"
  .text "#                                      #"
  .text "#               #######                #"
  .text "#               #     #                #"
  .text "#               #     #                #"
  .text "#               #     #                #"
  .text "#               #     #                #"
  .text "#               #     #                #"
  .text "#               #     #                #"
  .text "#               #     #                #"
  .text "#               #     #                #"
  .text "#               #     #                #"
  .text "#               #     #                #"
  .text "#               #     #                #"
  .text "#               #     #                #"
  .text "#               #     #                #"
  .text "#               #     #                #"
  .text "#               #     #                #"
  .text "#               #######                #"
  .text "#                                      #"
  .text "#              don't touch the fire    #"
  .text "#                                      #"
  .text "########################################"
  .byte 168, 95 //start_pos
  .byte 168, 180 //end_pos
  .byte %00000000 // high bytes
  .word level2
  .fill 17, $ff

level2:
  .text "                                        "
  .text "                                        "
  .text "                                        "
  .text "                                        "
  .text "                                        "
  .text "                                        "
  .text "                                        "
  .text "                                        "
  .text "                                        "
  .text "                                        "
  .text "    ################################    "
  .text "    #                              #    "
  .text "    #                              #    "
  .text "    #                              #    "
  .text "    ################################    "
  .text "                                        "
  .text "                                        "
  .text "                                        "
  .text "                                        "
  .text "                                        "
  .text "                                        "
  .text "                                        "
  .text "                                        "
  .text "                                        "
  .text "                                        "
  .byte 95, 142 //start_pos
  .byte 250, 139 //end_pos
  .byte %00000000 // high bytes
  .word level3
  .fill 17, $ff

level3:
  .text "########                                "
  .text "##    ###                               "
  .text "#      ##                               "
  .text "#       ###############                 "
  .text "##                   ###                "
  .text "####                  ###               "
  .text "######                 #                "
  .text "  ###############       #               "
  .text "   ###############       #              "
  .text "  #################       #             "
  .text "####################       #            "
  .text "##   ################      #            "
  .text "#     ##############       #            "
  .text "#     #############       #             "
  .text "#     ############       #              "
  .text "##   ############       ############### "
  .text "##   ###########                       #"
  .text "##   ###########                       #"
  .text "##   ############                      #"
  .text "##    #########################        #"
  .text "###    ##       ########               #"
  .text "###                                    #"
  .text "##                                     #"
  .text "##         ###                         #"
  .text "####################################### "
  .byte 40, 70 //start_pos
  .byte 40, 145 //end_pos
  .byte %00000000 // high bytes
  .word level1
  .fill 17, $ff
