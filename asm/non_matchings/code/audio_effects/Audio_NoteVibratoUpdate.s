glabel Audio_NoteVibratoUpdate
/* B60044 800E8EA4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B60048 800E8EA8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B6004C 800E8EAC 908E0090 */  lbu   $t6, 0x90($a0)
/* B60050 800E8EB0 00802825 */  move  $a1, $a0
/* B60054 800E8EB4 24840090 */  addiu $a0, $a0, 0x90
/* B60058 800E8EB8 51C00006 */  beql  $t6, $zero, .L800E8ED4
/* B6005C 800E8EBC 90AF00B0 */   lbu   $t7, 0xb0($a1)
/* B60060 800E8EC0 0C03A2F5 */  jal   Audio_GetPortamentoFreqScale
/* B60064 800E8EC4 AFA50018 */   sw    $a1, 0x18($sp)
/* B60068 800E8EC8 8FA50018 */  lw    $a1, 0x18($sp)
/* B6006C 800E8ECC E4A00038 */  swc1  $f0, 0x38($a1)
/* B60070 800E8ED0 90AF00B0 */  lbu   $t7, 0xb0($a1)
.L800E8ED4:
/* B60074 800E8ED4 24A4009C */  addiu $a0, $a1, 0x9c
/* B60078 800E8ED8 51E00006 */  beql  $t7, $zero, .L800E8EF4
/* B6007C 800E8EDC 8FBF0014 */   lw    $ra, 0x14($sp)
/* B60080 800E8EE0 0C03A31A */  jal   Audio_GetVibratoFreqScale
/* B60084 800E8EE4 AFA50018 */   sw    $a1, 0x18($sp)
/* B60088 800E8EE8 8FA50018 */  lw    $a1, 0x18($sp)
/* B6008C 800E8EEC E4A0003C */  swc1  $f0, 0x3c($a1)
/* B60090 800E8EF0 8FBF0014 */  lw    $ra, 0x14($sp)
.L800E8EF4:
/* B60094 800E8EF4 27BD0018 */  addiu $sp, $sp, 0x18
/* B60098 800E8EF8 03E00008 */  jr    $ra
/* B6009C 800E8EFC 00000000 */   nop

