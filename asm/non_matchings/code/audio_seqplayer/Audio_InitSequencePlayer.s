glabel Audio_InitSequencePlayer
/* B639AC 800EC80C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B639B0 800EC810 00803025 */  move  $a2, $a0
/* B639B4 800EC814 00801825 */  move  $v1, $a0
/* B639B8 800EC818 3C028017 */  lui   $v0, %hi(gSequenceChannelNone) # $v0, 0x8017
/* B639BC 800EC81C AFBF0014 */  sw    $ra, 0x14($sp)
/* B639C0 800EC820 24424C30 */  addiu $v0, %lo(gSequenceChannelNone) # addiu $v0, $v0, 0x4c30
/* B639C4 800EC824 24040010 */  li    $a0, 16
/* B639C8 800EC828 00002825 */  move  $a1, $zero
.L800EC82C:
/* B639CC 800EC82C 24A50004 */  addiu $a1, $a1, 4
/* B639D0 800EC830 AC62003C */  sw    $v0, 0x3c($v1)
/* B639D4 800EC834 AC620040 */  sw    $v0, 0x40($v1)
/* B639D8 800EC838 AC620044 */  sw    $v0, 0x44($v1)
/* B639DC 800EC83C 24630010 */  addiu $v1, $v1, 0x10
/* B639E0 800EC840 14A4FFFA */  bne   $a1, $a0, .L800EC82C
/* B639E4 800EC844 AC620028 */   sw    $v0, 0x28($v1)
/* B639E8 800EC848 90CE0000 */  lbu   $t6, ($a2)
/* B639EC 800EC84C 00002025 */  move  $a0, $zero
/* B639F0 800EC850 00C01825 */  move  $v1, $a2
/* B639F4 800EC854 31D8FF7F */  andi  $t8, $t6, 0xff7f
/* B639F8 800EC858 330800DF */  andi  $t0, $t8, 0xdf
/* B639FC 800EC85C A0D80000 */  sb    $t8, ($a2)
/* B63A00 800EC860 310A00F7 */  andi  $t2, $t0, 0xf7
/* B63A04 800EC864 A0C80000 */  sb    $t0, ($a2)
/* B63A08 800EC868 314C00EF */  andi  $t4, $t2, 0xef
/* B63A0C 800EC86C A0CA0000 */  sb    $t2, ($a2)
/* B63A10 800EC870 A0CC0000 */  sb    $t4, ($a2)
/* B63A14 800EC874 318D00FE */  andi  $t5, $t4, 0xfe
/* B63A18 800EC878 A0CD0000 */  sb    $t5, ($a2)
/* B63A1C 800EC87C 24050008 */  li    $a1, 8
/* B63A20 800EC880 2402FFFF */  li    $v0, -1
.L800EC884:
/* B63A24 800EC884 24840004 */  addiu $a0, $a0, 4
/* B63A28 800EC888 A0620159 */  sb    $v0, 0x159($v1)
/* B63A2C 800EC88C A062015A */  sb    $v0, 0x15a($v1)
/* B63A30 800EC890 A062015B */  sb    $v0, 0x15b($v1)
/* B63A34 800EC894 24630004 */  addiu $v1, $v1, 4
/* B63A38 800EC898 1485FFFA */  bne   $a0, $a1, .L800EC884
/* B63A3C 800EC89C A0620154 */   sb    $v0, 0x154($v1)
/* B63A40 800EC8A0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B63A44 800EC8A4 44810000 */  mtc1  $at, $f0
/* B63A48 800EC8A8 240E0060 */  li    $t6, 96
/* B63A4C 800EC8AC A0CE0003 */  sb    $t6, 3($a2)
/* B63A50 800EC8B0 E4C0002C */  swc1  $f0, 0x2c($a2)
/* B63A54 800EC8B4 E4C00034 */  swc1  $f0, 0x34($a2)
/* B63A58 800EC8B8 AFA60018 */  sw    $a2, 0x18($sp)
/* B63A5C 800EC8BC 0C039F43 */  jal   Audio_InitNoteLists
/* B63A60 800EC8C0 24C4009C */   addiu $a0, $a2, 0x9c
/* B63A64 800EC8C4 0C03B19A */  jal   Audio_ResetSequencePlayer
/* B63A68 800EC8C8 8FA40018 */   lw    $a0, 0x18($sp)
/* B63A6C 800EC8CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B63A70 800EC8D0 27BD0018 */  addiu $sp, $sp, 0x18
/* B63A74 800EC8D4 03E00008 */  jr    $ra
/* B63A78 800EC8D8 00000000 */   nop   
