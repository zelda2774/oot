glabel func_800A8030
/* B1F1D0 800A8030 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B1F1D4 800A8034 F7B40008 */  sdc1  $f20, 8($sp)
/* B1F1D8 800A8038 C4A00000 */  lwc1  $f0, ($a1)
/* B1F1DC 800A803C C4A20004 */  lwc1  $f2, 4($a1)
/* B1F1E0 800A8040 C4AC0008 */  lwc1  $f12, 8($a1)
/* B1F1E4 800A8044 46000102 */  mul.s $f4, $f0, $f0
/* B1F1E8 800A8048 C4B4000C */  lwc1  $f20, 0xc($a1)
/* B1F1EC 800A804C 3C014000 */  li    $at, 0x40000000 # 0.000000
/* B1F1F0 800A8050 46021182 */  mul.s $f6, $f2, $f2
/* B1F1F4 800A8054 46062200 */  add.s $f8, $f4, $f6
/* B1F1F8 800A8058 460C6282 */  mul.s $f10, $f12, $f12
/* B1F1FC 800A805C 460A4100 */  add.s $f4, $f8, $f10
/* B1F200 800A8060 4614A182 */  mul.s $f6, $f20, $f20
/* B1F204 800A8064 44815000 */  mtc1  $at, $f10
/* B1F208 800A8068 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B1F20C 800A806C 46062200 */  add.s $f8, $f4, $f6
/* B1F210 800A8070 46085483 */  div.s $f18, $f10, $f8
/* B1F214 800A8074 46120102 */  mul.s $f4, $f0, $f18
/* B1F218 800A8078 E7A40040 */  swc1  $f4, 0x40($sp)
/* B1F21C 800A807C 46121402 */  mul.s $f16, $f2, $f18
/* B1F220 800A8080 C7A60040 */  lwc1  $f6, 0x40($sp)
/* B1F224 800A8084 46126382 */  mul.s $f14, $f12, $f18
/* B1F228 800A8088 00000000 */  nop   
/* B1F22C 800A808C 4606A282 */  mul.s $f10, $f20, $f6
/* B1F230 800A8090 00000000 */  nop   
/* B1F234 800A8094 4610A202 */  mul.s $f8, $f20, $f16
/* B1F238 800A8098 00000000 */  nop   
/* B1F23C 800A809C 460EA102 */  mul.s $f4, $f20, $f14
/* B1F240 800A80A0 E7AA0034 */  swc1  $f10, 0x34($sp)
/* B1F244 800A80A4 46060282 */  mul.s $f10, $f0, $f6
/* B1F248 800A80A8 E7A80030 */  swc1  $f8, 0x30($sp)
/* B1F24C 800A80AC 46100202 */  mul.s $f8, $f0, $f16
/* B1F250 800A80B0 E7A4002C */  swc1  $f4, 0x2c($sp)
/* B1F254 800A80B4 460E0482 */  mul.s $f18, $f0, $f14
/* B1F258 800A80B8 E7AA0028 */  swc1  $f10, 0x28($sp)
/* B1F25C 800A80BC 44800000 */  mtc1  $zero, $f0
/* B1F260 800A80C0 46101102 */  mul.s $f4, $f2, $f16
/* B1F264 800A80C4 E7A80024 */  swc1  $f8, 0x24($sp)
/* B1F268 800A80C8 44818000 */  mtc1  $at, $f16
/* B1F26C 800A80CC 460E1182 */  mul.s $f6, $f2, $f14
/* B1F270 800A80D0 00000000 */  nop   
/* B1F274 800A80D4 460E6282 */  mul.s $f10, $f12, $f14
/* B1F278 800A80D8 E7A4001C */  swc1  $f4, 0x1c($sp)
/* B1F27C 800A80DC C7A8001C */  lwc1  $f8, 0x1c($sp)
/* B1F280 800A80E0 E7A60018 */  swc1  $f6, 0x18($sp)
/* B1F284 800A80E4 E7AA0014 */  swc1  $f10, 0x14($sp)
/* B1F288 800A80E8 C7A40014 */  lwc1  $f4, 0x14($sp)
/* B1F28C 800A80EC 44815000 */  mtc1  $at, $f10
/* B1F290 800A80F0 46044180 */  add.s $f6, $f8, $f4
/* B1F294 800A80F4 46065201 */  sub.s $f8, $f10, $f6
/* B1F298 800A80F8 E4880000 */  swc1  $f8, ($a0)
/* B1F29C 800A80FC C7AA002C */  lwc1  $f10, 0x2c($sp)
/* B1F2A0 800A8100 C7A40024 */  lwc1  $f4, 0x24($sp)
/* B1F2A4 800A8104 460A2180 */  add.s $f6, $f4, $f10
/* B1F2A8 800A8108 E4860004 */  swc1  $f6, 4($a0)
/* B1F2AC 800A810C C7A80030 */  lwc1  $f8, 0x30($sp)
/* B1F2B0 800A8110 46089101 */  sub.s $f4, $f18, $f8
/* B1F2B4 800A8114 E4840008 */  swc1  $f4, 8($a0)
/* B1F2B8 800A8118 C7AE0028 */  lwc1  $f14, 0x28($sp)
/* B1F2BC 800A811C C7AC0034 */  lwc1  $f12, 0x34($sp)
/* B1F2C0 800A8120 C7A20018 */  lwc1  $f2, 0x18($sp)
/* B1F2C4 800A8124 E480000C */  swc1  $f0, 0xc($a0)
/* B1F2C8 800A8128 C7A6002C */  lwc1  $f6, 0x2c($sp)
/* B1F2CC 800A812C C7AA0024 */  lwc1  $f10, 0x24($sp)
/* B1F2D0 800A8130 46065201 */  sub.s $f8, $f10, $f6
/* B1F2D4 800A8134 E4880010 */  swc1  $f8, 0x10($a0)
/* B1F2D8 800A8138 C7A40014 */  lwc1  $f4, 0x14($sp)
/* B1F2DC 800A813C 460C1200 */  add.s $f8, $f2, $f12
/* B1F2E0 800A8140 E480001C */  swc1  $f0, 0x1c($a0)
/* B1F2E4 800A8144 46047280 */  add.s $f10, $f14, $f4
/* B1F2E8 800A8148 E4880018 */  swc1  $f8, 0x18($a0)
/* B1F2EC 800A814C 460A8181 */  sub.s $f6, $f16, $f10
/* B1F2F0 800A8150 E4860014 */  swc1  $f6, 0x14($a0)
/* B1F2F4 800A8154 C7A40030 */  lwc1  $f4, 0x30($sp)
/* B1F2F8 800A8158 460C1181 */  sub.s $f6, $f2, $f12
/* B1F2FC 800A815C 46041280 */  add.s $f10, $f2, $f4
/* B1F300 800A8160 E4860024 */  swc1  $f6, 0x24($a0)
/* B1F304 800A8164 E48A0020 */  swc1  $f10, 0x20($a0)
/* B1F308 800A8168 C7A8001C */  lwc1  $f8, 0x1c($sp)
/* B1F30C 800A816C E480002C */  swc1  $f0, 0x2c($a0)
/* B1F310 800A8170 E4800030 */  swc1  $f0, 0x30($a0)
/* B1F314 800A8174 46087100 */  add.s $f4, $f14, $f8
/* B1F318 800A8178 E4800034 */  swc1  $f0, 0x34($a0)
/* B1F31C 800A817C E4800038 */  swc1  $f0, 0x38($a0)
/* B1F320 800A8180 E490003C */  swc1  $f16, 0x3c($a0)
/* B1F324 800A8184 46048281 */  sub.s $f10, $f16, $f4
/* B1F328 800A8188 E48A0028 */  swc1  $f10, 0x28($a0)
/* B1F32C 800A818C D7B40008 */  ldc1  $f20, 8($sp)
/* B1F330 800A8190 03E00008 */  jr    $ra
/* B1F334 800A8194 27BD0048 */   addiu $sp, $sp, 0x48
