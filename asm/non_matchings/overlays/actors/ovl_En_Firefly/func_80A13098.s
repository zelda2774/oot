glabel func_80A13098
/* 00028 80A13098 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 0002C 80A1309C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00030 80A130A0 14410003 */  bne     $v0, $at, .L80A130B0       
/* 00034 80A130A4 244EFFFE */  addiu   $t6, $v0, 0xFFFE           ## $t6 = FFFFFFFE
/* 00038 80A130A8 10000002 */  beq     $zero, $zero, .L80A130B4   
/* 0003C 80A130AC A480001C */  sh      $zero, 0x001C($a0)         ## 0000001C
.L80A130B0:
/* 00040 80A130B0 A48E001C */  sh      $t6, 0x001C($a0)           ## 0000001C
.L80A130B4:
/* 00044 80A130B4 8C8F0330 */  lw      $t7, 0x0330($a0)           ## 00000330
/* 00048 80A130B8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0004C 80A130BC 24180011 */  addiu   $t8, $zero, 0x0011         ## $t8 = 00000011
/* 00050 80A130C0 A1E20004 */  sb      $v0, 0x0004($t7)           ## 00000004
/* 00054 80A130C4 A08201B8 */  sb      $v0, 0x01B8($a0)           ## 000001B8
/* 00058 80A130C8 A08201B9 */  sb      $v0, 0x01B9($a0)           ## 000001B9
/* 0005C 80A130CC 03E00008 */  jr      $ra                        
/* 00060 80A130D0 A0980117 */  sb      $t8, 0x0117($a0)           ## 00000117
