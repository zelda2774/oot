.late_rodata
glabel jtbl_80149620
    .word L800E9530
    .word L800E9530
    .word L800E9530
    .word L800E94DC
    .word L800E94CC
    .word L800E9484
    .word L800E9454
    .word L800E94DC
    .word L800E94DC
    .word L800E94DC
    .word L800E9420
    .word L800E9408
    .word L800E9418
    .word L800E93D8

.text
glabel func_800E93A8
/* B60548 800E93A8 24CEFF0E */  addiu $t6, $a2, -0xf2
/* B6054C 800E93AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B60550 800E93B0 2DC1000E */  sltiu $at, $t6, 0xe
/* B60554 800E93B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B60558 800E93B8 1020006D */  beqz  $at, .L800E9570
/* B6055C 800E93BC 00C01025 */   move  $v0, $a2
/* B60560 800E93C0 000E7080 */  sll   $t6, $t6, 2
/* B60564 800E93C4 3C018015 */  lui   $at, %hi(jtbl_80149620)
/* B60568 800E93C8 002E0821 */  addu  $at, $at, $t6
/* B6056C 800E93CC 8C2E9620 */  lw    $t6, %lo(jtbl_80149620)($at)
/* B60570 800E93D0 01C00008 */  jr    $t6
/* B60574 800E93D4 00000000 */   nop   
glabel L800E93D8
/* B60578 800E93D8 90A20018 */  lbu   $v0, 0x18($a1)
/* B6057C 800E93DC 14400003 */  bnez  $v0, .L800E93EC
/* B60580 800E93E0 2443FFFF */   addiu $v1, $v0, -1
/* B60584 800E93E4 10000063 */  b     .L800E9574
/* B60588 800E93E8 2402FFFF */   li    $v0, -1
.L800E93EC:
/* B6058C 800E93EC 306300FF */  andi  $v1, $v1, 0xff
/* B60590 800E93F0 00037880 */  sll   $t7, $v1, 2
/* B60594 800E93F4 00AFC021 */  addu  $t8, $a1, $t7
/* B60598 800E93F8 A0A30018 */  sb    $v1, 0x18($a1)
/* B6059C 800E93FC 8F190004 */  lw    $t9, 4($t8)
/* B605A0 800E9400 1000005B */  b     .L800E9570
/* B605A4 800E9404 ACB90000 */   sw    $t9, ($a1)
glabel L800E9408
/* B605A8 800E9408 0C03A765 */  jal   Audio_M64ReadCompressedU16
/* B605AC 800E940C 00A02025 */   move  $a0, $a1
/* B605B0 800E9410 10000059 */  b     .L800E9578
/* B605B4 800E9414 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L800E9418
/* B605B8 800E9418 10000056 */  b     .L800E9574
/* B605BC 800E941C 24020001 */   li    $v0, 1
glabel L800E9420
/* B605C0 800E9420 90A90018 */  lbu   $t1, 0x18($a1)
/* B605C4 800E9424 8CA80000 */  lw    $t0, ($a1)
/* B605C8 800E9428 30EFFFFF */  andi  $t7, $a3, 0xffff
/* B605CC 800E942C 00095080 */  sll   $t2, $t1, 2
/* B605D0 800E9430 00AA5821 */  addu  $t3, $a1, $t2
/* B605D4 800E9434 AD680004 */  sw    $t0, 4($t3)
/* B605D8 800E9438 90AC0018 */  lbu   $t4, 0x18($a1)
/* B605DC 800E943C 258D0001 */  addiu $t5, $t4, 1
/* B605E0 800E9440 A0AD0018 */  sb    $t5, 0x18($a1)
/* B605E4 800E9444 8C8E0018 */  lw    $t6, 0x18($a0)
/* B605E8 800E9448 01CFC021 */  addu  $t8, $t6, $t7
/* B605EC 800E944C 10000048 */  b     .L800E9570
/* B605F0 800E9450 ACB80000 */   sw    $t8, ($a1)
glabel L800E9454
/* B605F4 800E9454 90B90018 */  lbu   $t9, 0x18($a1)
/* B605F8 800E9458 00B94821 */  addu  $t1, $a1, $t9
/* B605FC 800E945C A1270014 */  sb    $a3, 0x14($t1)
/* B60600 800E9460 90A80018 */  lbu   $t0, 0x18($a1)
/* B60604 800E9464 8CAA0000 */  lw    $t2, ($a1)
/* B60608 800E9468 00085880 */  sll   $t3, $t0, 2
/* B6060C 800E946C 00AB6021 */  addu  $t4, $a1, $t3
/* B60610 800E9470 AD8A0004 */  sw    $t2, 4($t4)
/* B60614 800E9474 90AD0018 */  lbu   $t5, 0x18($a1)
/* B60618 800E9478 25AE0001 */  addiu $t6, $t5, 1
/* B6061C 800E947C 1000003C */  b     .L800E9570
/* B60620 800E9480 A0AE0018 */   sb    $t6, 0x18($a1)
glabel L800E9484
/* B60624 800E9484 90AF0018 */  lbu   $t7, 0x18($a1)
/* B60628 800E9488 00AF1821 */  addu  $v1, $a1, $t7
/* B6062C 800E948C 90780013 */  lbu   $t8, 0x13($v1)
/* B60630 800E9490 2719FFFF */  addiu $t9, $t8, -1
/* B60634 800E9494 A0790013 */  sb    $t9, 0x13($v1)
/* B60638 800E9498 90A20018 */  lbu   $v0, 0x18($a1)
/* B6063C 800E949C 00A24821 */  addu  $t1, $a1, $v0
/* B60640 800E94A0 91280013 */  lbu   $t0, 0x13($t1)
/* B60644 800E94A4 00402025 */  move  $a0, $v0
/* B60648 800E94A8 00045880 */  sll   $t3, $a0, 2
/* B6064C 800E94AC 11000005 */  beqz  $t0, .L800E94C4
/* B60650 800E94B0 244DFFFF */   addiu $t5, $v0, -1
/* B60654 800E94B4 00AB5021 */  addu  $t2, $a1, $t3
/* B60658 800E94B8 8D4C0000 */  lw    $t4, ($t2)
/* B6065C 800E94BC 1000002C */  b     .L800E9570
/* B60660 800E94C0 ACAC0000 */   sw    $t4, ($a1)
.L800E94C4:
/* B60664 800E94C4 1000002A */  b     .L800E9570
/* B60668 800E94C8 A0AD0018 */   sb    $t5, 0x18($a1)
glabel L800E94CC
/* B6066C 800E94CC 90AE0018 */  lbu   $t6, 0x18($a1)
/* B60670 800E94D0 25CFFFFF */  addiu $t7, $t6, -1
/* B60674 800E94D4 10000026 */  b     .L800E9570
/* B60678 800E94D8 A0AF0018 */   sb    $t7, 0x18($a1)
glabel L800E94DC
/* B6067C 800E94DC 240100FA */  li    $at, 250
/* B60680 800E94E0 54410004 */  bnel  $v0, $at, .L800E94F4
/* B60684 800E94E4 240100F9 */   li    $at, 249
/* B60688 800E94E8 80B80019 */  lb    $t8, 0x19($a1)
/* B6068C 800E94EC 17000020 */  bnez  $t8, .L800E9570
/* B60690 800E94F0 240100F9 */   li    $at, 249
.L800E94F4:
/* B60694 800E94F4 54410004 */  bnel  $v0, $at, .L800E9508
/* B60698 800E94F8 240100F5 */   li    $at, 245
/* B6069C 800E94FC 80B90019 */  lb    $t9, 0x19($a1)
/* B606A0 800E9500 0721001B */  bgez  $t9, .L800E9570
/* B606A4 800E9504 240100F5 */   li    $at, 245
.L800E9508:
/* B606A8 800E9508 54410005 */  bnel  $v0, $at, .L800E9520
/* B606AC 800E950C 8C880018 */   lw    $t0, 0x18($a0)
/* B606B0 800E9510 80A90019 */  lb    $t1, 0x19($a1)
/* B606B4 800E9514 05220017 */  bltzl $t1, .L800E9574
/* B606B8 800E9518 00001025 */   move  $v0, $zero
/* B606BC 800E951C 8C880018 */  lw    $t0, 0x18($a0)
.L800E9520:
/* B606C0 800E9520 30EBFFFF */  andi  $t3, $a3, 0xffff
/* B606C4 800E9524 010B5021 */  addu  $t2, $t0, $t3
/* B606C8 800E9528 10000011 */  b     .L800E9570
/* B606CC 800E952C ACAA0000 */   sw    $t2, ($a1)
glabel L800E9530
/* B606D0 800E9530 240100F3 */  li    $at, 243
/* B606D4 800E9534 54410004 */  bnel  $v0, $at, .L800E9548
/* B606D8 800E9538 240100F2 */   li    $at, 242
/* B606DC 800E953C 80AC0019 */  lb    $t4, 0x19($a1)
/* B606E0 800E9540 1580000B */  bnez  $t4, .L800E9570
/* B606E4 800E9544 240100F2 */   li    $at, 242
.L800E9548:
/* B606E8 800E9548 54410005 */  bnel  $v0, $at, .L800E9560
/* B606EC 800E954C 8CAE0000 */   lw    $t6, ($a1)
/* B606F0 800E9550 80AD0019 */  lb    $t5, 0x19($a1)
/* B606F4 800E9554 05A30007 */  bgezl $t5, .L800E9574
/* B606F8 800E9558 00001025 */   move  $v0, $zero
/* B606FC 800E955C 8CAE0000 */  lw    $t6, ($a1)
.L800E9560:
/* B60700 800E9560 0007C600 */  sll   $t8, $a3, 0x18
/* B60704 800E9564 0018CE03 */  sra   $t9, $t8, 0x18
/* B60708 800E9568 01D94821 */  addu  $t1, $t6, $t9
/* B6070C 800E956C ACA90000 */  sw    $t1, ($a1)
.L800E9570:
/* B60710 800E9570 00001025 */  move  $v0, $zero
.L800E9574:
/* B60714 800E9574 8FBF0014 */  lw    $ra, 0x14($sp)
.L800E9578:
/* B60718 800E9578 27BD0018 */  addiu $sp, $sp, 0x18
/* B6071C 800E957C 03E00008 */  jr    $ra
/* B60720 800E9580 00000000 */   nop   

