glabel func_800E9340
/* B604E0 800E9340 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B604E4 800E9344 AFA5001C */  sw    $a1, 0x1c($sp)
/* B604E8 800E9348 30A500FF */  andi  $a1, $a1, 0xff
/* B604EC 800E934C 3C028013 */  lui   $v0, %hi(D_80130470)
/* B604F0 800E9350 00451021 */  addu  $v0, $v0, $a1
/* B604F4 800E9354 90420470 */  lbu   $v0, %lo(D_80130470)($v0)
/* B604F8 800E9358 24010001 */  li    $at, 1
/* B604FC 800E935C AFBF0014 */  sw    $ra, 0x14($sp)
/* B60500 800E9360 304F0003 */  andi  $t7, $v0, 3
/* B60504 800E9364 15E1000B */  bne   $t7, $at, .L800E9394
/* B60508 800E9368 00001825 */   move  $v1, $zero
/* B6050C 800E936C 30580080 */  andi  $t8, $v0, 0x80
/* B60510 800E9370 17000005 */  bnez  $t8, .L800E9388
/* B60514 800E9374 00000000 */   nop   
/* B60518 800E9378 0C03A752 */  jal   func_800E9D48
/* B6051C 800E937C 00000000 */   nop   
/* B60520 800E9380 10000004 */  b     .L800E9394
/* B60524 800E9384 3043FFFF */   andi  $v1, $v0, 0xffff
.L800E9388:
/* B60528 800E9388 0C03A757 */  jal   func_800E9D5C
/* B6052C 800E938C 00000000 */   nop   
/* B60530 800E9390 3043FFFF */  andi  $v1, $v0, 0xffff
.L800E9394:
/* B60534 800E9394 8FBF0014 */  lw    $ra, 0x14($sp)
/* B60538 800E9398 27BD0018 */  addiu $sp, $sp, 0x18
/* B6053C 800E939C 00601025 */  move  $v0, $v1
/* B60540 800E93A0 03E00008 */  jr    $ra
/* B60544 800E93A4 00000000 */   nop   

