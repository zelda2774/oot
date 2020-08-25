.late_rodata
glabel D_80149658
    .float 16129

glabel jtbl_8014965C
    .word L800EA180
    .word L800EA1C0
    .word L800EA22C
    .word L800EA1E8
    .word L800EA1E8
    .word L800EA23C
    .word L800EA2C0
    .word L800EA340
    .word L800EA1C0
    .word L800EA180
    .word L800EA348
    .word L800EA370
    .word L800EA380
    .word L800EA390
    .word L800EA360

.text
glabel func_800EA0C0
/* B61260 800EA0C0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B61264 800EA0C4 AFBF0034 */  sw    $ra, 0x34($sp)
/* B61268 800EA0C8 AFB40030 */  sw    $s4, 0x30($sp)
/* B6126C 800EA0CC AFB3002C */  sw    $s3, 0x2c($sp)
/* B61270 800EA0D0 AFB20028 */  sw    $s2, 0x28($sp)
/* B61274 800EA0D4 AFB10024 */  sw    $s1, 0x24($sp)
/* B61278 800EA0D8 AFB00020 */  sw    $s0, 0x20($sp)
/* B6127C 800EA0DC F7B40018 */  sdc1  $f20, 0x18($sp)
/* B61280 800EA0E0 8C940050 */  lw    $s4, 0x50($a0)
/* B61284 800EA0E4 3C018015 */  lui   $at, %hi(D_80149658)
/* B61288 800EA0E8 00808825 */  move  $s1, $a0
/* B6128C 800EA0EC C4349658 */  lwc1  $f20, %lo(D_80149658)($at)
/* B61290 800EA0F0 24920054 */  addiu $s2, $a0, 0x54
/* B61294 800EA0F4 8E93004C */  lw    $s3, 0x4c($s4)
.L800EA0F8:
/* B61298 800EA0F8 0C03A752 */  jal   Audio_M64ReadU8
/* B6129C 800EA0FC 02402025 */   move  $a0, $s2
/* B612A0 800EA100 284100C1 */  slti  $at, $v0, 0xc1
/* B612A4 800EA104 305000FF */  andi  $s0, $v0, 0xff
/* B612A8 800EA108 10200003 */  beqz  $at, .L800EA118
/* B612AC 800EA10C 00402025 */   move  $a0, $v0
/* B612B0 800EA110 100000C2 */  b     .L800EA41C
/* B612B4 800EA114 02001025 */   move  $v0, $s0
.L800EA118:
/* B612B8 800EA118 288100F2 */  slti  $at, $a0, 0xf2
/* B612BC 800EA11C 1420000F */  bnez  $at, .L800EA15C
/* B612C0 800EA120 248EFF3F */   addiu $t6, $a0, -0xc1
/* B612C4 800EA124 02402025 */  move  $a0, $s2
/* B612C8 800EA128 0C03A4D0 */  jal   func_800E9340
/* B612CC 800EA12C 320500FF */   andi  $a1, $s0, 0xff
/* B612D0 800EA130 02602025 */  move  $a0, $s3
/* B612D4 800EA134 02402825 */  move  $a1, $s2
/* B612D8 800EA138 02003025 */  move  $a2, $s0
/* B612DC 800EA13C 0C03A4EA */  jal   func_800E93A8
/* B612E0 800EA140 00403825 */   move  $a3, $v0
/* B612E4 800EA144 1040FFEC */  beqz  $v0, .L800EA0F8
/* B612E8 800EA148 00000000 */   nop   
/* B612EC 800EA14C 0C03A5FF */  jal   Audio_SeqChannelLayerDisable
/* B612F0 800EA150 02202025 */   move  $a0, $s1
/* B612F4 800EA154 100000B1 */  b     .L800EA41C
/* B612F8 800EA158 2402FFFF */   li    $v0, -1
.L800EA15C:
/* B612FC 800EA15C 2DC1000F */  sltiu $at, $t6, 0xf
/* B61300 800EA160 10200095 */  beqz  $at, .L800EA3B8
/* B61304 800EA164 308300F0 */   andi  $v1, $a0, 0xf0
/* B61308 800EA168 000E7080 */  sll   $t6, $t6, 2
/* B6130C 800EA16C 3C018015 */  lui   $at, %hi(jtbl_8014965C)
/* B61310 800EA170 002E0821 */  addu  $at, $at, $t6
/* B61314 800EA174 8C2E965C */  lw    $t6, %lo(jtbl_8014965C)($at)
/* B61318 800EA178 01C00008 */  jr    $t6
/* B6131C 800EA17C 00000000 */   nop   
glabel L800EA180
/* B61320 800EA180 8E430000 */  lw    $v1, ($s2)
/* B61324 800EA184 240100C1 */  li    $at, 193
/* B61328 800EA188 90650000 */  lbu   $a1, ($v1)
/* B6132C 800EA18C 246F0001 */  addiu $t7, $v1, 1
/* B61330 800EA190 14810009 */  bne   $a0, $at, .L800EA1B8
/* B61334 800EA194 AE4F0000 */   sw    $t7, ($s2)
/* B61338 800EA198 00A50019 */  multu $a1, $a1
/* B6133C 800EA19C 0000C012 */  mflo  $t8
/* B61340 800EA1A0 44982000 */  mtc1  $t8, $f4
/* B61344 800EA1A4 00000000 */  nop   
/* B61348 800EA1A8 468021A0 */  cvt.s.w $f6, $f4
/* B6134C 800EA1AC 46143203 */  div.s $f8, $f6, $f20
/* B61350 800EA1B0 1000FFD1 */  b     .L800EA0F8
/* B61354 800EA1B4 E628003C */   swc1  $f8, 0x3c($s1)
.L800EA1B8:
/* B61358 800EA1B8 1000FFCF */  b     .L800EA0F8
/* B6135C 800EA1BC A2250006 */   sb    $a1, 6($s1)
glabel L800EA1C0
/* B61360 800EA1C0 8E430000 */  lw    $v1, ($s2)
/* B61364 800EA1C4 240100C9 */  li    $at, 201
/* B61368 800EA1C8 90650000 */  lbu   $a1, ($v1)
/* B6136C 800EA1CC 24790001 */  addiu $t9, $v1, 1
/* B61370 800EA1D0 14810003 */  bne   $a0, $at, .L800EA1E0
/* B61374 800EA1D4 AE590000 */   sw    $t9, ($s2)
/* B61378 800EA1D8 1000FFC7 */  b     .L800EA0F8
/* B6137C 800EA1DC A2250003 */   sb    $a1, 3($s1)
.L800EA1E0:
/* B61380 800EA1E0 1000FFC5 */  b     .L800EA0F8
/* B61384 800EA1E4 A6250010 */   sh    $a1, 0x10($s1)
glabel L800EA1E8
/* B61388 800EA1E8 240100C4 */  li    $at, 196
/* B6138C 800EA1EC 54810006 */  bnel  $a0, $at, .L800EA208
/* B61390 800EA1F0 922B0000 */   lbu   $t3, ($s1)
/* B61394 800EA1F4 92290000 */  lbu   $t1, ($s1)
/* B61398 800EA1F8 352A0010 */  ori   $t2, $t1, 0x10
/* B6139C 800EA1FC 10000004 */  b     .L800EA210
/* B613A0 800EA200 A22A0000 */   sb    $t2, ($s1)
/* B613A4 800EA204 922B0000 */  lbu   $t3, ($s1)
.L800EA208:
/* B613A8 800EA208 316CFFEF */  andi  $t4, $t3, 0xffef
/* B613AC 800EA20C A22C0000 */  sb    $t4, ($s1)
.L800EA210:
/* B613B0 800EA210 922D0000 */  lbu   $t5, ($s1)
/* B613B4 800EA214 02202025 */  move  $a0, $s1
/* B613B8 800EA218 31AEFFFD */  andi  $t6, $t5, 0xfffd
/* B613BC 800EA21C 0C039ED8 */  jal   Audio_SeqChanLayerNoteDecay
/* B613C0 800EA220 A22E0000 */   sb    $t6, ($s1)
/* B613C4 800EA224 1000FFB4 */  b     .L800EA0F8
/* B613C8 800EA228 00000000 */   nop   
glabel L800EA22C
/* B613CC 800EA22C 0C03A765 */  jal   Audio_M64ReadCompressedU16
/* B613D0 800EA230 02402025 */   move  $a0, $s2
/* B613D4 800EA234 1000FFB0 */  b     .L800EA0F8
/* B613D8 800EA238 A6220012 */   sh    $v0, 0x12($s1)
glabel L800EA23C
/* B613DC 800EA23C 0C03A752 */  jal   Audio_M64ReadU8
/* B613E0 800EA240 02402025 */   move  $a0, $s2
/* B613E4 800EA244 2841007E */  slti  $at, $v0, 0x7e
/* B613E8 800EA248 305000FF */  andi  $s0, $v0, 0xff
/* B613EC 800EA24C 14200012 */  bnez  $at, .L800EA298
/* B613F0 800EA250 00402025 */   move  $a0, $v0
/* B613F4 800EA254 2401007E */  li    $at, 126
/* B613F8 800EA258 14410003 */  bne   $v0, $at, .L800EA268
/* B613FC 800EA25C 240F0001 */   li    $t7, 1
/* B61400 800EA260 10000008 */  b     .L800EA284
/* B61404 800EA264 A22F0002 */   sb    $t7, 2($s1)
.L800EA268:
/* B61408 800EA268 2401007F */  li    $at, 127
/* B6140C 800EA26C 54810004 */  bnel  $a0, $at, .L800EA280
/* B61410 800EA270 A2220002 */   sb    $v0, 2($s1)
/* B61414 800EA274 10000003 */  b     .L800EA284
/* B61418 800EA278 A2200002 */   sb    $zero, 2($s1)
/* B6141C 800EA27C A2220002 */  sb    $v0, 2($s1)
.L800EA280:
/* B61420 800EA280 AE200048 */  sw    $zero, 0x48($s1)
.L800EA284:
/* B61424 800EA284 240100FF */  li    $at, 255
/* B61428 800EA288 1481FF9B */  bne   $a0, $at, .L800EA0F8
/* B6142C 800EA28C 00000000 */   nop   
/* B61430 800EA290 1000FF99 */  b     .L800EA0F8
/* B61434 800EA294 A2200018 */   sb    $zero, 0x18($s1)
.L800EA298:
/* B61438 800EA298 02802025 */  move  $a0, $s4
/* B6143C 800EA29C 320500FF */  andi  $a1, $s0, 0xff
/* B61440 800EA2A0 26260048 */  addiu $a2, $s1, 0x48
/* B61444 800EA2A4 0C03ABC9 */  jal   func_800EAF24
/* B61448 800EA2A8 26270018 */   addiu $a3, $s1, 0x18
/* B6144C 800EA2AC 1440FF92 */  bnez  $v0, .L800EA0F8
/* B61450 800EA2B0 A2220002 */   sb    $v0, 2($s1)
/* B61454 800EA2B4 241800FF */  li    $t8, 255
/* B61458 800EA2B8 1000FF8F */  b     .L800EA0F8
/* B6145C 800EA2BC A2380002 */   sb    $t8, 2($s1)
glabel L800EA2C0
/* B61460 800EA2C0 0C03A752 */  jal   Audio_M64ReadU8
/* B61464 800EA2C4 02402025 */   move  $a0, $s2
/* B61468 800EA2C8 A2220020 */  sb    $v0, 0x20($s1)
/* B6146C 800EA2CC 0C03A752 */  jal   Audio_M64ReadU8
/* B61470 800EA2D0 02402025 */   move  $a0, $s2
/* B61474 800EA2D4 86990026 */  lh    $t9, 0x26($s4)
/* B61478 800EA2D8 86280010 */  lh    $t0, 0x10($s1)
/* B6147C 800EA2DC 8669000E */  lh    $t1, 0xe($s3)
/* B61480 800EA2E0 00598021 */  addu  $s0, $v0, $t9
/* B61484 800EA2E4 02088021 */  addu  $s0, $s0, $t0
/* B61488 800EA2E8 02098021 */  addu  $s0, $s0, $t1
/* B6148C 800EA2EC 321000FF */  andi  $s0, $s0, 0xff
/* B61490 800EA2F0 2A010080 */  slti  $at, $s0, 0x80
/* B61494 800EA2F4 54200003 */  bnezl $at, .L800EA304
/* B61498 800EA2F8 922A0020 */   lbu   $t2, 0x20($s1)
/* B6149C 800EA2FC 00008025 */  move  $s0, $zero
/* B614A0 800EA300 922A0020 */  lbu   $t2, 0x20($s1)
.L800EA304:
/* B614A4 800EA304 A2300005 */  sb    $s0, 5($s1)
/* B614A8 800EA308 314B0080 */  andi  $t3, $t2, 0x80
/* B614AC 800EA30C 11600008 */  beqz  $t3, .L800EA330
/* B614B0 800EA310 00000000 */   nop   
/* B614B4 800EA314 8E4C0000 */  lw    $t4, ($s2)
/* B614B8 800EA318 918D0000 */  lbu   $t5, ($t4)
/* B614BC 800EA31C A62D000E */  sh    $t5, 0xe($s1)
/* B614C0 800EA320 8E4E0000 */  lw    $t6, ($s2)
/* B614C4 800EA324 25CF0001 */  addiu $t7, $t6, 1
/* B614C8 800EA328 1000FF73 */  b     .L800EA0F8
/* B614CC 800EA32C AE4F0000 */   sw    $t7, ($s2)
.L800EA330:
/* B614D0 800EA330 0C03A765 */  jal   Audio_M64ReadCompressedU16
/* B614D4 800EA334 02402025 */   move  $a0, $s2
/* B614D8 800EA338 1000FF6F */  b     .L800EA0F8
/* B614DC 800EA33C A622000E */   sh    $v0, 0xe($s1)
glabel L800EA340
/* B614E0 800EA340 1000FF6D */  b     .L800EA0F8
/* B614E4 800EA344 A2200020 */   sb    $zero, 0x20($s1)
glabel L800EA348
/* B614E8 800EA348 0C03A757 */  jal   Audio_M64ReadS16
/* B614EC 800EA34C 02402025 */   move  $a0, $s2
/* B614F0 800EA350 8E780018 */  lw    $t8, 0x18($s3)
/* B614F4 800EA354 3059FFFF */  andi  $t9, $v0, 0xffff
/* B614F8 800EA358 03194021 */  addu  $t0, $t8, $t9
/* B614FC 800EA35C AE28001C */  sw    $t0, 0x1c($s1)
glabel L800EA360
/* B61500 800EA360 0C03A752 */  jal   Audio_M64ReadU8
/* B61504 800EA364 02402025 */   move  $a0, $s2
/* B61508 800EA368 1000FF63 */  b     .L800EA0F8
/* B6150C 800EA36C A2220018 */   sb    $v0, 0x18($s1)
glabel L800EA370
/* B61510 800EA370 922A0000 */  lbu   $t2, ($s1)
/* B61514 800EA374 354B0004 */  ori   $t3, $t2, 4
/* B61518 800EA378 1000FF5F */  b     .L800EA0F8
/* B6151C 800EA37C A22B0000 */   sb    $t3, ($s1)
glabel L800EA380
/* B61520 800EA380 0C03A752 */  jal   Audio_M64ReadU8
/* B61524 800EA384 02402025 */   move  $a0, $s2
/* B61528 800EA388 1000FF5B */  b     .L800EA0F8
/* B6152C 800EA38C A2220001 */   sb    $v0, 1($s1)
glabel L800EA390
/* B61530 800EA390 0C03A752 */  jal   Audio_M64ReadU8
/* B61534 800EA394 02402025 */   move  $a0, $s2
/* B61538 800EA398 244C0080 */  addiu $t4, $v0, 0x80
/* B6153C 800EA39C 318D00FF */  andi  $t5, $t4, 0xff
/* B61540 800EA3A0 000D7080 */  sll   $t6, $t5, 2
/* B61544 800EA3A4 3C018013 */  lui   $at, %hi(D_8012F4B4)
/* B61548 800EA3A8 002E0821 */  addu  $at, $at, $t6
/* B6154C 800EA3AC C42AF4B4 */  lwc1  $f10, %lo(D_8012F4B4)($at)
/* B61550 800EA3B0 1000FF51 */  b     .L800EA0F8
/* B61554 800EA3B4 E62A0034 */   swc1  $f10, 0x34($s1)
.L800EA3B8:
/* B61558 800EA3B8 240100D0 */  li    $at, 208
/* B6155C 800EA3BC 10610005 */  beq   $v1, $at, .L800EA3D4
/* B61560 800EA3C0 240100E0 */   li    $at, 224
/* B61564 800EA3C4 50610010 */  beql  $v1, $at, .L800EA408
/* B61568 800EA3C8 8E690098 */   lw    $t1, 0x98($s3)
/* B6156C 800EA3CC 1000FF4A */  b     .L800EA0F8
/* B61570 800EA3D0 00000000 */   nop   
.L800EA3D4:
/* B61574 800EA3D4 8E6F0094 */  lw    $t7, 0x94($s3)
/* B61578 800EA3D8 3098000F */  andi  $t8, $a0, 0xf
/* B6157C 800EA3DC 01F8C821 */  addu  $t9, $t7, $t8
/* B61580 800EA3E0 93250000 */  lbu   $a1, ($t9)
/* B61584 800EA3E4 00A50019 */  multu $a1, $a1
/* B61588 800EA3E8 00004012 */  mflo  $t0
/* B6158C 800EA3EC 44888000 */  mtc1  $t0, $f16
/* B61590 800EA3F0 00000000 */  nop   
/* B61594 800EA3F4 468084A0 */  cvt.s.w $f18, $f16
/* B61598 800EA3F8 46149103 */  div.s $f4, $f18, $f20
/* B6159C 800EA3FC 1000FF3E */  b     .L800EA0F8
/* B615A0 800EA400 E624003C */   swc1  $f4, 0x3c($s1)
/* B615A4 800EA404 8E690098 */  lw    $t1, 0x98($s3)
.L800EA408:
/* B615A8 800EA408 308A000F */  andi  $t2, $a0, 0xf
/* B615AC 800EA40C 012A5821 */  addu  $t3, $t1, $t2
/* B615B0 800EA410 916C0000 */  lbu   $t4, ($t3)
/* B615B4 800EA414 1000FF38 */  b     .L800EA0F8
/* B615B8 800EA418 A22C0003 */   sb    $t4, 3($s1)
.L800EA41C:
/* B615BC 800EA41C 8FBF0034 */  lw    $ra, 0x34($sp)
/* B615C0 800EA420 D7B40018 */  ldc1  $f20, 0x18($sp)
/* B615C4 800EA424 8FB00020 */  lw    $s0, 0x20($sp)
/* B615C8 800EA428 8FB10024 */  lw    $s1, 0x24($sp)
/* B615CC 800EA42C 8FB20028 */  lw    $s2, 0x28($sp)
/* B615D0 800EA430 8FB3002C */  lw    $s3, 0x2c($sp)
/* B615D4 800EA434 8FB40030 */  lw    $s4, 0x30($sp)
/* B615D8 800EA438 03E00008 */  jr    $ra
/* B615DC 800EA43C 27BD0038 */   addiu $sp, $sp, 0x38

