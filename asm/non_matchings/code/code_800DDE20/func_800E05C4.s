glabel func_800E05C4
/* B57764 800E05C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B57768 800E05C8 8FAE0028 */  lw    $t6, 0x28($sp)
/* B5776C 800E05CC AFBF0014 */  sw    $ra, 0x14($sp)
/* B57770 800E05D0 AFA5001C */  sw    $a1, 0x1c($sp)
/* B57774 800E05D4 AFA60020 */  sw    $a2, 0x20($sp)
/* B57778 800E05D8 15C00005 */  bnez  $t6, .L800E05F0
/* B5777C 800E05DC AFA70024 */   sw    $a3, 0x24($sp)
/* B57780 800E05E0 0C0381B3 */  jal   func_800E06CC
/* B57784 800E05E4 00000000 */   nop   
/* B57788 800E05E8 10000004 */  b     .L800E05FC
/* B5778C 800E05EC 00401825 */   move  $v1, $v0
.L800E05F0:
/* B57790 800E05F0 0C0382FE */  jal   func_800E0BF8
/* B57794 800E05F4 00000000 */   nop   
/* B57798 800E05F8 00401825 */  move  $v1, $v0
.L800E05FC:
/* B5779C 800E05FC 10400008 */  beqz  $v0, .L800E0620
/* B577A0 800E0600 8FAF001C */   lw    $t7, 0x1c($sp)
/* B577A4 800E0604 A06F0002 */  sb    $t7, 2($v1)
/* B577A8 800E0608 8FB80020 */  lw    $t8, 0x20($sp)
/* B577AC 800E060C 8C620008 */  lw    $v0, 8($v1)
/* B577B0 800E0610 AC78000C */  sw    $t8, 0xc($v1)
/* B577B4 800E0614 83B90027 */  lb    $t9, 0x27($sp)
/* B577B8 800E0618 10000002 */  b     .L800E0624
/* B577BC 800E061C A0790001 */   sb    $t9, 1($v1)
.L800E0620:
/* B577C0 800E0620 00001025 */  move  $v0, $zero
.L800E0624:
/* B577C4 800E0624 8FBF0014 */  lw    $ra, 0x14($sp)
/* B577C8 800E0628 27BD0018 */  addiu $sp, $sp, 0x18
/* B577CC 800E062C 03E00008 */  jr    $ra
/* B577D0 800E0630 00000000 */   nop   

