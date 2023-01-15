
shell.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000048000000 <_start>:
    48000000:	00002117          	auipc	sp,0x2
    48000004:	eb013103          	ld	sp,-336(sp) # 48001eb0 <_GLOBAL_OFFSET_TABLE_+0x48>
    48000008:	425000ef          	jal	ra,48000c2c <prompt>
    4800000c:	a001                	j	4800000c <_start+0xc>

000000004800000e <set_read_char>:
    4800000e:	1101                	addi	sp,sp,-32
    48000010:	ec22                	sd	s0,24(sp)
    48000012:	1000                	addi	s0,sp,32
    48000014:	fea43423          	sd	a0,-24(s0)
    48000018:	00002797          	auipc	a5,0x2
    4800001c:	eb078793          	addi	a5,a5,-336 # 48001ec8 <__read_char__>
    48000020:	fe843703          	ld	a4,-24(s0)
    48000024:	e398                	sd	a4,0(a5)
    48000026:	0001                	nop
    48000028:	6462                	ld	s0,24(sp)
    4800002a:	6105                	addi	sp,sp,32
    4800002c:	8082                	ret

000000004800002e <set_write_char>:
    4800002e:	1101                	addi	sp,sp,-32
    48000030:	ec22                	sd	s0,24(sp)
    48000032:	1000                	addi	s0,sp,32
    48000034:	fea43423          	sd	a0,-24(s0)
    48000038:	00002797          	auipc	a5,0x2
    4800003c:	e9878793          	addi	a5,a5,-360 # 48001ed0 <__write_char__>
    48000040:	fe843703          	ld	a4,-24(s0)
    48000044:	e398                	sd	a4,0(a5)
    48000046:	0001                	nop
    48000048:	6462                	ld	s0,24(sp)
    4800004a:	6105                	addi	sp,sp,32
    4800004c:	8082                	ret

000000004800004e <setup>:
    4800004e:	1141                	addi	sp,sp,-16
    48000050:	e422                	sd	s0,8(sp)
    48000052:	0800                	addi	s0,sp,16
    48000054:	0001                	nop
    48000056:	6422                	ld	s0,8(sp)
    48000058:	0141                	addi	sp,sp,16
    4800005a:	8082                	ret

000000004800005c <loop>:
    4800005c:	1141                	addi	sp,sp,-16
    4800005e:	e422                	sd	s0,8(sp)
    48000060:	0800                	addi	s0,sp,16
    48000062:	0001                	nop
    48000064:	6422                	ld	s0,8(sp)
    48000066:	0141                	addi	sp,sp,16
    48000068:	8082                	ret

000000004800006a <prepend_prompt>:
    4800006a:	1141                	addi	sp,sp,-16
    4800006c:	e422                	sd	s0,8(sp)
    4800006e:	0800                	addi	s0,sp,16
    48000070:	0001                	nop
    48000072:	6422                	ld	s0,8(sp)
    48000074:	0141                	addi	sp,sp,16
    48000076:	8082                	ret

0000000048000078 <active_prompt>:
    48000078:	1141                	addi	sp,sp,-16
    4800007a:	e422                	sd	s0,8(sp)
    4800007c:	0800                	addi	s0,sp,16
    4800007e:	4785                	li	a5,1
    48000080:	853e                	mv	a0,a5
    48000082:	6422                	ld	s0,8(sp)
    48000084:	0141                	addi	sp,sp,16
    48000086:	8082                	ret

0000000048000088 <delete>:
    48000088:	1141                	addi	sp,sp,-16
    4800008a:	e406                	sd	ra,8(sp)
    4800008c:	e022                	sd	s0,0(sp)
    4800008e:	0800                	addi	s0,sp,16
    48000090:	00002797          	auipc	a5,0x2
    48000094:	e4078793          	addi	a5,a5,-448 # 48001ed0 <__write_char__>
    48000098:	639c                	ld	a5,0(a5)
    4800009a:	4521                	li	a0,8
    4800009c:	9782                	jalr	a5
    4800009e:	00002797          	auipc	a5,0x2
    480000a2:	e3278793          	addi	a5,a5,-462 # 48001ed0 <__write_char__>
    480000a6:	639c                	ld	a5,0(a5)
    480000a8:	02000513          	li	a0,32
    480000ac:	9782                	jalr	a5
    480000ae:	00002797          	auipc	a5,0x2
    480000b2:	e2278793          	addi	a5,a5,-478 # 48001ed0 <__write_char__>
    480000b6:	639c                	ld	a5,0(a5)
    480000b8:	4521                	li	a0,8
    480000ba:	9782                	jalr	a5
    480000bc:	0001                	nop
    480000be:	60a2                	ld	ra,8(sp)
    480000c0:	6402                	ld	s0,0(sp)
    480000c2:	0141                	addi	sp,sp,16
    480000c4:	8082                	ret

00000000480000c6 <clear_prompt>:
    480000c6:	1101                	addi	sp,sp,-32
    480000c8:	ec06                	sd	ra,24(sp)
    480000ca:	e822                	sd	s0,16(sp)
    480000cc:	1000                	addi	s0,sp,32
    480000ce:	87aa                	mv	a5,a0
    480000d0:	fef42623          	sw	a5,-20(s0)
    480000d4:	a801                	j	480000e4 <clear_prompt+0x1e>
    480000d6:	fb3ff0ef          	jal	ra,48000088 <delete>
    480000da:	fec42783          	lw	a5,-20(s0)
    480000de:	37fd                	addiw	a5,a5,-1
    480000e0:	fef42623          	sw	a5,-20(s0)
    480000e4:	fec42783          	lw	a5,-20(s0)
    480000e8:	2781                	sext.w	a5,a5
    480000ea:	f7f5                	bnez	a5,480000d6 <clear_prompt+0x10>
    480000ec:	0001                	nop
    480000ee:	0001                	nop
    480000f0:	60e2                	ld	ra,24(sp)
    480000f2:	6442                	ld	s0,16(sp)
    480000f4:	6105                	addi	sp,sp,32
    480000f6:	8082                	ret

00000000480000f8 <handle_up_arrow>:
    480000f8:	7179                	addi	sp,sp,-48
    480000fa:	f406                	sd	ra,40(sp)
    480000fc:	f022                	sd	s0,32(sp)
    480000fe:	1800                	addi	s0,sp,48
    48000100:	fca43c23          	sd	a0,-40(s0)
    48000104:	fcb43823          	sd	a1,-48(s0)
    48000108:	00002797          	auipc	a5,0x2
    4800010c:	dd478793          	addi	a5,a5,-556 # 48001edc <total_num_commands>
    48000110:	439c                	lw	a5,0(a5)
    48000112:	2781                	sext.w	a5,a5
    48000114:	37f9                	addiw	a5,a5,-2
    48000116:	0007871b          	sext.w	a4,a5
    4800011a:	00002797          	auipc	a5,0x2
    4800011e:	dc678793          	addi	a5,a5,-570 # 48001ee0 <curr_command_ptr>
    48000122:	439c                	lw	a5,0(a5)
    48000124:	2781                	sext.w	a5,a5
    48000126:	00e7c963          	blt	a5,a4,48000138 <handle_up_arrow+0x40>
    4800012a:	00002797          	auipc	a5,0x2
    4800012e:	db678793          	addi	a5,a5,-586 # 48001ee0 <curr_command_ptr>
    48000132:	439c                	lw	a5,0(a5)
    48000134:	2781                	sext.w	a5,a5
    48000136:	eb91                	bnez	a5,4800014a <handle_up_arrow+0x52>
    48000138:	fd843583          	ld	a1,-40(s0)
    4800013c:	00002517          	auipc	a0,0x2
    48000140:	f1c50513          	addi	a0,a0,-228 # 48002058 <cmd_end_+0x18>
    48000144:	1a1010ef          	jal	ra,48001ae4 <printf>
    48000148:	a849                	j	480001da <handle_up_arrow+0xe2>
    4800014a:	02000613          	li	a2,32
    4800014e:	4581                	li	a1,0
    48000150:	fd843503          	ld	a0,-40(s0)
    48000154:	63d000ef          	jal	ra,48000f90 <memset>
    48000158:	00002797          	auipc	a5,0x2
    4800015c:	d8878793          	addi	a5,a5,-632 # 48001ee0 <curr_command_ptr>
    48000160:	439c                	lw	a5,0(a5)
    48000162:	2781                	sext.w	a5,a5
    48000164:	37fd                	addiw	a5,a5,-1
    48000166:	0007871b          	sext.w	a4,a5
    4800016a:	00002797          	auipc	a5,0x2
    4800016e:	d7678793          	addi	a5,a5,-650 # 48001ee0 <curr_command_ptr>
    48000172:	c398                	sw	a4,0(a5)
    48000174:	00002797          	auipc	a5,0x2
    48000178:	d6c78793          	addi	a5,a5,-660 # 48001ee0 <curr_command_ptr>
    4800017c:	439c                	lw	a5,0(a5)
    4800017e:	2781                	sext.w	a5,a5
    48000180:	873e                	mv	a4,a5
    48000182:	41f7579b          	sraiw	a5,a4,0x1f
    48000186:	01f7d79b          	srliw	a5,a5,0x1f
    4800018a:	9f3d                	addw	a4,a4,a5
    4800018c:	8b05                	andi	a4,a4,1
    4800018e:	40f707bb          	subw	a5,a4,a5
    48000192:	fef42623          	sw	a5,-20(s0)
    48000196:	fec42783          	lw	a5,-20(s0)
    4800019a:	00579713          	slli	a4,a5,0x5
    4800019e:	00002797          	auipc	a5,0x2
    480001a2:	d4a78793          	addi	a5,a5,-694 # 48001ee8 <cmd_history>
    480001a6:	97ba                	add	a5,a5,a4
    480001a8:	02000613          	li	a2,32
    480001ac:	85be                	mv	a1,a5
    480001ae:	fd843503          	ld	a0,-40(s0)
    480001b2:	57b000ef          	jal	ra,48000f2c <memcpy>
    480001b6:	fd843503          	ld	a0,-40(s0)
    480001ba:	48b000ef          	jal	ra,48000e44 <strlen>
    480001be:	87aa                	mv	a5,a0
    480001c0:	0007871b          	sext.w	a4,a5
    480001c4:	fd043783          	ld	a5,-48(s0)
    480001c8:	c398                	sw	a4,0(a5)
    480001ca:	fd843583          	ld	a1,-40(s0)
    480001ce:	00002517          	auipc	a0,0x2
    480001d2:	e8a50513          	addi	a0,a0,-374 # 48002058 <cmd_end_+0x18>
    480001d6:	10f010ef          	jal	ra,48001ae4 <printf>
    480001da:	70a2                	ld	ra,40(sp)
    480001dc:	7402                	ld	s0,32(sp)
    480001de:	6145                	addi	sp,sp,48
    480001e0:	8082                	ret

00000000480001e2 <handle_down_arrow>:
    480001e2:	7179                	addi	sp,sp,-48
    480001e4:	f406                	sd	ra,40(sp)
    480001e6:	f022                	sd	s0,32(sp)
    480001e8:	1800                	addi	s0,sp,48
    480001ea:	fca43c23          	sd	a0,-40(s0)
    480001ee:	fcb43823          	sd	a1,-48(s0)
    480001f2:	02000613          	li	a2,32
    480001f6:	4581                	li	a1,0
    480001f8:	fd843503          	ld	a0,-40(s0)
    480001fc:	595000ef          	jal	ra,48000f90 <memset>
    48000200:	fd043783          	ld	a5,-48(s0)
    48000204:	0007a023          	sw	zero,0(a5)
    48000208:	00002797          	auipc	a5,0x2
    4800020c:	cd878793          	addi	a5,a5,-808 # 48001ee0 <curr_command_ptr>
    48000210:	439c                	lw	a5,0(a5)
    48000212:	0007871b          	sext.w	a4,a5
    48000216:	00002797          	auipc	a5,0x2
    4800021a:	cc678793          	addi	a5,a5,-826 # 48001edc <total_num_commands>
    4800021e:	439c                	lw	a5,0(a5)
    48000220:	2781                	sext.w	a5,a5
    48000222:	08f70463          	beq	a4,a5,480002aa <handle_down_arrow+0xc8>
    48000226:	00002797          	auipc	a5,0x2
    4800022a:	cba78793          	addi	a5,a5,-838 # 48001ee0 <curr_command_ptr>
    4800022e:	439c                	lw	a5,0(a5)
    48000230:	2781                	sext.w	a5,a5
    48000232:	2785                	addiw	a5,a5,1
    48000234:	0007871b          	sext.w	a4,a5
    48000238:	00002797          	auipc	a5,0x2
    4800023c:	ca878793          	addi	a5,a5,-856 # 48001ee0 <curr_command_ptr>
    48000240:	c398                	sw	a4,0(a5)
    48000242:	00002797          	auipc	a5,0x2
    48000246:	c9e78793          	addi	a5,a5,-866 # 48001ee0 <curr_command_ptr>
    4800024a:	439c                	lw	a5,0(a5)
    4800024c:	2781                	sext.w	a5,a5
    4800024e:	873e                	mv	a4,a5
    48000250:	41f7579b          	sraiw	a5,a4,0x1f
    48000254:	01f7d79b          	srliw	a5,a5,0x1f
    48000258:	9f3d                	addw	a4,a4,a5
    4800025a:	8b05                	andi	a4,a4,1
    4800025c:	40f707bb          	subw	a5,a4,a5
    48000260:	fef42623          	sw	a5,-20(s0)
    48000264:	fec42783          	lw	a5,-20(s0)
    48000268:	00579713          	slli	a4,a5,0x5
    4800026c:	00002797          	auipc	a5,0x2
    48000270:	c7c78793          	addi	a5,a5,-900 # 48001ee8 <cmd_history>
    48000274:	97ba                	add	a5,a5,a4
    48000276:	02000613          	li	a2,32
    4800027a:	85be                	mv	a1,a5
    4800027c:	fd843503          	ld	a0,-40(s0)
    48000280:	4ad000ef          	jal	ra,48000f2c <memcpy>
    48000284:	fd843503          	ld	a0,-40(s0)
    48000288:	3bd000ef          	jal	ra,48000e44 <strlen>
    4800028c:	87aa                	mv	a5,a0
    4800028e:	0007871b          	sext.w	a4,a5
    48000292:	fd043783          	ld	a5,-48(s0)
    48000296:	c398                	sw	a4,0(a5)
    48000298:	fd843583          	ld	a1,-40(s0)
    4800029c:	00002517          	auipc	a0,0x2
    480002a0:	dbc50513          	addi	a0,a0,-580 # 48002058 <cmd_end_+0x18>
    480002a4:	041010ef          	jal	ra,48001ae4 <printf>
    480002a8:	a011                	j	480002ac <handle_down_arrow+0xca>
    480002aa:	0001                	nop
    480002ac:	70a2                	ld	ra,40(sp)
    480002ae:	7402                	ld	s0,32(sp)
    480002b0:	6145                	addi	sp,sp,48
    480002b2:	8082                	ret

00000000480002b4 <add_command_to_history>:
    480002b4:	7179                	addi	sp,sp,-48
    480002b6:	f406                	sd	ra,40(sp)
    480002b8:	f022                	sd	s0,32(sp)
    480002ba:	1800                	addi	s0,sp,48
    480002bc:	fca43c23          	sd	a0,-40(s0)
    480002c0:	fd843783          	ld	a5,-40(s0)
    480002c4:	c7d9                	beqz	a5,48000352 <add_command_to_history+0x9e>
    480002c6:	00002597          	auipc	a1,0x2
    480002ca:	d9a58593          	addi	a1,a1,-614 # 48002060 <cmd_end_+0x20>
    480002ce:	fd843503          	ld	a0,-40(s0)
    480002d2:	3a9000ef          	jal	ra,48000e7a <strcmp>
    480002d6:	87aa                	mv	a5,a0
    480002d8:	cfad                	beqz	a5,48000352 <add_command_to_history+0x9e>
    480002da:	00002797          	auipc	a5,0x2
    480002de:	c0278793          	addi	a5,a5,-1022 # 48001edc <total_num_commands>
    480002e2:	439c                	lw	a5,0(a5)
    480002e4:	2781                	sext.w	a5,a5
    480002e6:	873e                	mv	a4,a5
    480002e8:	41f7579b          	sraiw	a5,a4,0x1f
    480002ec:	01f7d79b          	srliw	a5,a5,0x1f
    480002f0:	9f3d                	addw	a4,a4,a5
    480002f2:	8b05                	andi	a4,a4,1
    480002f4:	40f707bb          	subw	a5,a4,a5
    480002f8:	fef42623          	sw	a5,-20(s0)
    480002fc:	fec42783          	lw	a5,-20(s0)
    48000300:	00579713          	slli	a4,a5,0x5
    48000304:	00002797          	auipc	a5,0x2
    48000308:	be478793          	addi	a5,a5,-1052 # 48001ee8 <cmd_history>
    4800030c:	97ba                	add	a5,a5,a4
    4800030e:	02000613          	li	a2,32
    48000312:	fd843583          	ld	a1,-40(s0)
    48000316:	853e                	mv	a0,a5
    48000318:	415000ef          	jal	ra,48000f2c <memcpy>
    4800031c:	00002797          	auipc	a5,0x2
    48000320:	bc078793          	addi	a5,a5,-1088 # 48001edc <total_num_commands>
    48000324:	439c                	lw	a5,0(a5)
    48000326:	2781                	sext.w	a5,a5
    48000328:	2785                	addiw	a5,a5,1
    4800032a:	0007871b          	sext.w	a4,a5
    4800032e:	00002797          	auipc	a5,0x2
    48000332:	bae78793          	addi	a5,a5,-1106 # 48001edc <total_num_commands>
    48000336:	c398                	sw	a4,0(a5)
    48000338:	00002797          	auipc	a5,0x2
    4800033c:	ba478793          	addi	a5,a5,-1116 # 48001edc <total_num_commands>
    48000340:	439c                	lw	a5,0(a5)
    48000342:	0007871b          	sext.w	a4,a5
    48000346:	00002797          	auipc	a5,0x2
    4800034a:	b9a78793          	addi	a5,a5,-1126 # 48001ee0 <curr_command_ptr>
    4800034e:	c398                	sw	a4,0(a5)
    48000350:	a011                	j	48000354 <add_command_to_history+0xa0>
    48000352:	0001                	nop
    48000354:	70a2                	ld	ra,40(sp)
    48000356:	7402                	ld	s0,32(sp)
    48000358:	6145                	addi	sp,sp,48
    4800035a:	8082                	ret

000000004800035c <show_history>:
    4800035c:	7179                	addi	sp,sp,-48
    4800035e:	f406                	sd	ra,40(sp)
    48000360:	f022                	sd	s0,32(sp)
    48000362:	1800                	addi	s0,sp,48
    48000364:	87aa                	mv	a5,a0
    48000366:	fcb43823          	sd	a1,-48(s0)
    4800036a:	fcf42e23          	sw	a5,-36(s0)
    4800036e:	00002797          	auipc	a5,0x2
    48000372:	b6e78793          	addi	a5,a5,-1170 # 48001edc <total_num_commands>
    48000376:	439c                	lw	a5,0(a5)
    48000378:	2781                	sext.w	a5,a5
    4800037a:	37fd                	addiw	a5,a5,-1
    4800037c:	2781                	sext.w	a5,a5
    4800037e:	fef42223          	sw	a5,-28(s0)
    48000382:	fe042623          	sw	zero,-20(s0)
    48000386:	00002797          	auipc	a5,0x2
    4800038a:	b5678793          	addi	a5,a5,-1194 # 48001edc <total_num_commands>
    4800038e:	439c                	lw	a5,0(a5)
    48000390:	2781                	sext.w	a5,a5
    48000392:	873e                	mv	a4,a5
    48000394:	4789                	li	a5,2
    48000396:	00e7dc63          	bge	a5,a4,480003ae <show_history+0x52>
    4800039a:	00002797          	auipc	a5,0x2
    4800039e:	b4278793          	addi	a5,a5,-1214 # 48001edc <total_num_commands>
    480003a2:	439c                	lw	a5,0(a5)
    480003a4:	2781                	sext.w	a5,a5
    480003a6:	37f9                	addiw	a5,a5,-2
    480003a8:	2781                	sext.w	a5,a5
    480003aa:	fef42623          	sw	a5,-20(s0)
    480003ae:	fec42783          	lw	a5,-20(s0)
    480003b2:	fef42423          	sw	a5,-24(s0)
    480003b6:	a815                	j	480003ea <show_history+0x8e>
    480003b8:	fe842783          	lw	a5,-24(s0)
    480003bc:	8b85                	andi	a5,a5,1
    480003be:	2781                	sext.w	a5,a5
    480003c0:	1782                	slli	a5,a5,0x20
    480003c2:	9381                	srli	a5,a5,0x20
    480003c4:	00579713          	slli	a4,a5,0x5
    480003c8:	00002797          	auipc	a5,0x2
    480003cc:	b2078793          	addi	a5,a5,-1248 # 48001ee8 <cmd_history>
    480003d0:	97ba                	add	a5,a5,a4
    480003d2:	85be                	mv	a1,a5
    480003d4:	00002517          	auipc	a0,0x2
    480003d8:	c9450513          	addi	a0,a0,-876 # 48002068 <cmd_end_+0x28>
    480003dc:	708010ef          	jal	ra,48001ae4 <printf>
    480003e0:	fe842783          	lw	a5,-24(s0)
    480003e4:	2785                	addiw	a5,a5,1
    480003e6:	fef42423          	sw	a5,-24(s0)
    480003ea:	fe842783          	lw	a5,-24(s0)
    480003ee:	873e                	mv	a4,a5
    480003f0:	fe442783          	lw	a5,-28(s0)
    480003f4:	2701                	sext.w	a4,a4
    480003f6:	2781                	sext.w	a5,a5
    480003f8:	fce7f0e3          	bgeu	a5,a4,480003b8 <show_history+0x5c>
    480003fc:	4781                	li	a5,0
    480003fe:	853e                	mv	a0,a5
    48000400:	70a2                	ld	ra,40(sp)
    48000402:	7402                	ld	s0,32(sp)
    48000404:	6145                	addi	sp,sp,48
    48000406:	8082                	ret

0000000048000408 <prefix_match>:
    48000408:	715d                	addi	sp,sp,-80
    4800040a:	e486                	sd	ra,72(sp)
    4800040c:	e0a2                	sd	s0,64(sp)
    4800040e:	fc26                	sd	s1,56(sp)
    48000410:	0880                	addi	s0,sp,80
    48000412:	fca43423          	sd	a0,-56(s0)
    48000416:	87ae                	mv	a5,a1
    48000418:	fac43c23          	sd	a2,-72(s0)
    4800041c:	fcf42223          	sw	a5,-60(s0)
    48000420:	fc843783          	ld	a5,-56(s0)
    48000424:	c395                	beqz	a5,48000448 <prefix_match+0x40>
    48000426:	fb843783          	ld	a5,-72(s0)
    4800042a:	cf99                	beqz	a5,48000448 <prefix_match+0x40>
    4800042c:	fc442783          	lw	a5,-60(s0)
    48000430:	2781                	sext.w	a5,a5
    48000432:	00f05b63          	blez	a5,48000448 <prefix_match+0x40>
    48000436:	fc442483          	lw	s1,-60(s0)
    4800043a:	fb843503          	ld	a0,-72(s0)
    4800043e:	207000ef          	jal	ra,48000e44 <strlen>
    48000442:	87aa                	mv	a5,a0
    48000444:	0097f463          	bgeu	a5,s1,4800044c <prefix_match+0x44>
    48000448:	4781                	li	a5,0
    4800044a:	a0b1                	j	48000496 <prefix_match+0x8e>
    4800044c:	fc042e23          	sw	zero,-36(s0)
    48000450:	a80d                	j	48000482 <prefix_match+0x7a>
    48000452:	fdc42783          	lw	a5,-36(s0)
    48000456:	fc843703          	ld	a4,-56(s0)
    4800045a:	97ba                	add	a5,a5,a4
    4800045c:	0007c683          	lbu	a3,0(a5)
    48000460:	fdc42783          	lw	a5,-36(s0)
    48000464:	fb843703          	ld	a4,-72(s0)
    48000468:	97ba                	add	a5,a5,a4
    4800046a:	0007c783          	lbu	a5,0(a5)
    4800046e:	8736                	mv	a4,a3
    48000470:	00f70463          	beq	a4,a5,48000478 <prefix_match+0x70>
    48000474:	4781                	li	a5,0
    48000476:	a005                	j	48000496 <prefix_match+0x8e>
    48000478:	fdc42783          	lw	a5,-36(s0)
    4800047c:	2785                	addiw	a5,a5,1
    4800047e:	fcf42e23          	sw	a5,-36(s0)
    48000482:	fdc42783          	lw	a5,-36(s0)
    48000486:	873e                	mv	a4,a5
    48000488:	fc442783          	lw	a5,-60(s0)
    4800048c:	2701                	sext.w	a4,a4
    4800048e:	2781                	sext.w	a5,a5
    48000490:	fcf741e3          	blt	a4,a5,48000452 <prefix_match+0x4a>
    48000494:	4785                	li	a5,1
    48000496:	853e                	mv	a0,a5
    48000498:	60a6                	ld	ra,72(sp)
    4800049a:	6406                	ld	s0,64(sp)
    4800049c:	74e2                	ld	s1,56(sp)
    4800049e:	6161                	addi	sp,sp,80
    480004a0:	8082                	ret

00000000480004a2 <handle_tab>:
    480004a2:	7179                	addi	sp,sp,-48
    480004a4:	f406                	sd	ra,40(sp)
    480004a6:	f022                	sd	s0,32(sp)
    480004a8:	1800                	addi	s0,sp,48
    480004aa:	fca43c23          	sd	a0,-40(s0)
    480004ae:	fcb43823          	sd	a1,-48(s0)
    480004b2:	fd843783          	ld	a5,-40(s0)
    480004b6:	12078563          	beqz	a5,480005e0 <handle_tab+0x13e>
    480004ba:	fd043783          	ld	a5,-48(s0)
    480004be:	12078163          	beqz	a5,480005e0 <handle_tab+0x13e>
    480004c2:	fe042623          	sw	zero,-20(s0)
    480004c6:	fe042423          	sw	zero,-24(s0)
    480004ca:	57fd                	li	a5,-1
    480004cc:	fef42223          	sw	a5,-28(s0)
    480004d0:	a895                	j	48000544 <handle_tab+0xa2>
    480004d2:	fd043783          	ld	a5,-48(s0)
    480004d6:	438c                	lw	a1,0(a5)
    480004d8:	00002797          	auipc	a5,0x2
    480004dc:	97078793          	addi	a5,a5,-1680 # 48001e48 <table>
    480004e0:	6394                	ld	a3,0(a5)
    480004e2:	fec42703          	lw	a4,-20(s0)
    480004e6:	87ba                	mv	a5,a4
    480004e8:	0786                	slli	a5,a5,0x1
    480004ea:	97ba                	add	a5,a5,a4
    480004ec:	078e                	slli	a5,a5,0x3
    480004ee:	97b6                	add	a5,a5,a3
    480004f0:	639c                	ld	a5,0(a5)
    480004f2:	863e                	mv	a2,a5
    480004f4:	fd843503          	ld	a0,-40(s0)
    480004f8:	f11ff0ef          	jal	ra,48000408 <prefix_match>
    480004fc:	87aa                	mv	a5,a0
    480004fe:	cf95                	beqz	a5,4800053a <handle_tab+0x98>
    48000500:	fe842783          	lw	a5,-24(s0)
    48000504:	2785                	addiw	a5,a5,1
    48000506:	fef42423          	sw	a5,-24(s0)
    4800050a:	fec42783          	lw	a5,-20(s0)
    4800050e:	fef42223          	sw	a5,-28(s0)
    48000512:	00002797          	auipc	a5,0x2
    48000516:	93678793          	addi	a5,a5,-1738 # 48001e48 <table>
    4800051a:	6394                	ld	a3,0(a5)
    4800051c:	fec42703          	lw	a4,-20(s0)
    48000520:	87ba                	mv	a5,a4
    48000522:	0786                	slli	a5,a5,0x1
    48000524:	97ba                	add	a5,a5,a4
    48000526:	078e                	slli	a5,a5,0x3
    48000528:	97b6                	add	a5,a5,a3
    4800052a:	639c                	ld	a5,0(a5)
    4800052c:	85be                	mv	a1,a5
    4800052e:	00002517          	auipc	a0,0x2
    48000532:	b6250513          	addi	a0,a0,-1182 # 48002090 <cmd_end_+0x50>
    48000536:	5ae010ef          	jal	ra,48001ae4 <printf>
    4800053a:	fec42783          	lw	a5,-20(s0)
    4800053e:	2785                	addiw	a5,a5,1
    48000540:	fef42623          	sw	a5,-20(s0)
    48000544:	00002797          	auipc	a5,0x2
    48000548:	90478793          	addi	a5,a5,-1788 # 48001e48 <table>
    4800054c:	6394                	ld	a3,0(a5)
    4800054e:	fec42703          	lw	a4,-20(s0)
    48000552:	87ba                	mv	a5,a4
    48000554:	0786                	slli	a5,a5,0x1
    48000556:	97ba                	add	a5,a5,a4
    48000558:	078e                	slli	a5,a5,0x3
    4800055a:	97b6                	add	a5,a5,a3
    4800055c:	639c                	ld	a5,0(a5)
    4800055e:	fbb5                	bnez	a5,480004d2 <handle_tab+0x30>
    48000560:	fe842783          	lw	a5,-24(s0)
    48000564:	0007871b          	sext.w	a4,a5
    48000568:	4785                	li	a5,1
    4800056a:	04f71063          	bne	a4,a5,480005aa <handle_tab+0x108>
    4800056e:	00002797          	auipc	a5,0x2
    48000572:	8da78793          	addi	a5,a5,-1830 # 48001e48 <table>
    48000576:	6394                	ld	a3,0(a5)
    48000578:	fe442703          	lw	a4,-28(s0)
    4800057c:	87ba                	mv	a5,a4
    4800057e:	0786                	slli	a5,a5,0x1
    48000580:	97ba                	add	a5,a5,a4
    48000582:	078e                	slli	a5,a5,0x3
    48000584:	97b6                	add	a5,a5,a3
    48000586:	639c                	ld	a5,0(a5)
    48000588:	02000613          	li	a2,32
    4800058c:	85be                	mv	a1,a5
    4800058e:	fd843503          	ld	a0,-40(s0)
    48000592:	19b000ef          	jal	ra,48000f2c <memcpy>
    48000596:	fd843503          	ld	a0,-40(s0)
    4800059a:	0ab000ef          	jal	ra,48000e44 <strlen>
    4800059e:	87aa                	mv	a5,a0
    480005a0:	0007871b          	sext.w	a4,a5
    480005a4:	fd043783          	ld	a5,-48(s0)
    480005a8:	c398                	sw	a4,0(a5)
    480005aa:	fe842783          	lw	a5,-24(s0)
    480005ae:	2781                	sext.w	a5,a5
    480005b0:	cb8d                	beqz	a5,480005e2 <handle_tab+0x140>
    480005b2:	00002517          	auipc	a0,0x2
    480005b6:	ae650513          	addi	a0,a0,-1306 # 48002098 <cmd_end_+0x58>
    480005ba:	52a010ef          	jal	ra,48001ae4 <printf>
    480005be:	aadff0ef          	jal	ra,4800006a <prepend_prompt>
    480005c2:	00002517          	auipc	a0,0x2
    480005c6:	ade50513          	addi	a0,a0,-1314 # 480020a0 <cmd_end_+0x60>
    480005ca:	51a010ef          	jal	ra,48001ae4 <printf>
    480005ce:	fd843583          	ld	a1,-40(s0)
    480005d2:	00002517          	auipc	a0,0x2
    480005d6:	a8650513          	addi	a0,a0,-1402 # 48002058 <cmd_end_+0x18>
    480005da:	50a010ef          	jal	ra,48001ae4 <printf>
    480005de:	a011                	j	480005e2 <handle_tab+0x140>
    480005e0:	0001                	nop
    480005e2:	70a2                	ld	ra,40(sp)
    480005e4:	7402                	ld	s0,32(sp)
    480005e6:	6145                	addi	sp,sp,48
    480005e8:	8082                	ret

00000000480005ea <parse_line>:
    480005ea:	7139                	addi	sp,sp,-64
    480005ec:	fc06                	sd	ra,56(sp)
    480005ee:	f822                	sd	s0,48(sp)
    480005f0:	0080                	addi	s0,sp,64
    480005f2:	fca43c23          	sd	a0,-40(s0)
    480005f6:	fcb43823          	sd	a1,-48(s0)
    480005fa:	87b2                	mv	a5,a2
    480005fc:	fcf42623          	sw	a5,-52(s0)
    48000600:	fe042623          	sw	zero,-20(s0)
    48000604:	fe042423          	sw	zero,-24(s0)
    48000608:	fd043503          	ld	a0,-48(s0)
    4800060c:	039000ef          	jal	ra,48000e44 <strlen>
    48000610:	87aa                	mv	a5,a0
    48000612:	fef42223          	sw	a5,-28(s0)
    48000616:	a8c5                	j	48000706 <parse_line+0x11c>
    48000618:	fe842783          	lw	a5,-24(s0)
    4800061c:	fd043703          	ld	a4,-48(s0)
    48000620:	97ba                	add	a5,a5,a4
    48000622:	0007c783          	lbu	a5,0(a5)
    48000626:	873e                	mv	a4,a5
    48000628:	47a5                	li	a5,9
    4800062a:	04f70c63          	beq	a4,a5,48000682 <parse_line+0x98>
    4800062e:	fe842783          	lw	a5,-24(s0)
    48000632:	fd043703          	ld	a4,-48(s0)
    48000636:	97ba                	add	a5,a5,a4
    48000638:	0007c783          	lbu	a5,0(a5)
    4800063c:	873e                	mv	a4,a5
    4800063e:	02000793          	li	a5,32
    48000642:	04f70063          	beq	a4,a5,48000682 <parse_line+0x98>
    48000646:	fe842783          	lw	a5,-24(s0)
    4800064a:	fd043703          	ld	a4,-48(s0)
    4800064e:	97ba                	add	a5,a5,a4
    48000650:	0007c783          	lbu	a5,0(a5)
    48000654:	c79d                	beqz	a5,48000682 <parse_line+0x98>
    48000656:	fe842703          	lw	a4,-24(s0)
    4800065a:	fec42783          	lw	a5,-20(s0)
    4800065e:	0017869b          	addiw	a3,a5,1
    48000662:	fed42623          	sw	a3,-20(s0)
    48000666:	078e                	slli	a5,a5,0x3
    48000668:	fd843683          	ld	a3,-40(s0)
    4800066c:	97b6                	add	a5,a5,a3
    4800066e:	fd043683          	ld	a3,-48(s0)
    48000672:	9736                	add	a4,a4,a3
    48000674:	e398                	sd	a4,0(a5)
    48000676:	a031                	j	48000682 <parse_line+0x98>
    48000678:	fe842783          	lw	a5,-24(s0)
    4800067c:	2785                	addiw	a5,a5,1
    4800067e:	fef42423          	sw	a5,-24(s0)
    48000682:	fe842783          	lw	a5,-24(s0)
    48000686:	fd043703          	ld	a4,-48(s0)
    4800068a:	97ba                	add	a5,a5,a4
    4800068c:	0007c783          	lbu	a5,0(a5)
    48000690:	873e                	mv	a4,a5
    48000692:	47a5                	li	a5,9
    48000694:	02f70663          	beq	a4,a5,480006c0 <parse_line+0xd6>
    48000698:	fe842783          	lw	a5,-24(s0)
    4800069c:	fd043703          	ld	a4,-48(s0)
    480006a0:	97ba                	add	a5,a5,a4
    480006a2:	0007c783          	lbu	a5,0(a5)
    480006a6:	873e                	mv	a4,a5
    480006a8:	02000793          	li	a5,32
    480006ac:	00f70a63          	beq	a4,a5,480006c0 <parse_line+0xd6>
    480006b0:	fe842783          	lw	a5,-24(s0)
    480006b4:	fd043703          	ld	a4,-48(s0)
    480006b8:	97ba                	add	a5,a5,a4
    480006ba:	0007c783          	lbu	a5,0(a5)
    480006be:	ffcd                	bnez	a5,48000678 <parse_line+0x8e>
    480006c0:	fe842783          	lw	a5,-24(s0)
    480006c4:	fd043703          	ld	a4,-48(s0)
    480006c8:	97ba                	add	a5,a5,a4
    480006ca:	0007c783          	lbu	a5,0(a5)
    480006ce:	873e                	mv	a4,a5
    480006d0:	47a5                	li	a5,9
    480006d2:	00f70e63          	beq	a4,a5,480006ee <parse_line+0x104>
    480006d6:	fe842783          	lw	a5,-24(s0)
    480006da:	fd043703          	ld	a4,-48(s0)
    480006de:	97ba                	add	a5,a5,a4
    480006e0:	0007c783          	lbu	a5,0(a5)
    480006e4:	873e                	mv	a4,a5
    480006e6:	02000793          	li	a5,32
    480006ea:	00f71963          	bne	a4,a5,480006fc <parse_line+0x112>
    480006ee:	fe842783          	lw	a5,-24(s0)
    480006f2:	fd043703          	ld	a4,-48(s0)
    480006f6:	97ba                	add	a5,a5,a4
    480006f8:	00078023          	sb	zero,0(a5)
    480006fc:	fe842783          	lw	a5,-24(s0)
    48000700:	2785                	addiw	a5,a5,1
    48000702:	fef42423          	sw	a5,-24(s0)
    48000706:	fe842783          	lw	a5,-24(s0)
    4800070a:	873e                	mv	a4,a5
    4800070c:	fe442783          	lw	a5,-28(s0)
    48000710:	2701                	sext.w	a4,a4
    48000712:	2781                	sext.w	a5,a5
    48000714:	f0e7d2e3          	bge	a5,a4,48000618 <parse_line+0x2e>
    48000718:	fec42783          	lw	a5,-20(s0)
    4800071c:	853e                	mv	a0,a5
    4800071e:	70e2                	ld	ra,56(sp)
    48000720:	7442                	ld	s0,48(sp)
    48000722:	6121                	addi	sp,sp,64
    48000724:	8082                	ret

0000000048000726 <execute>:
    48000726:	7179                	addi	sp,sp,-48
    48000728:	f406                	sd	ra,40(sp)
    4800072a:	f022                	sd	s0,32(sp)
    4800072c:	1800                	addi	s0,sp,48
    4800072e:	87aa                	mv	a5,a0
    48000730:	fcb43823          	sd	a1,-48(s0)
    48000734:	fcf42e23          	sw	a5,-36(s0)
    48000738:	fe042623          	sw	zero,-20(s0)
    4800073c:	fe042423          	sw	zero,-24(s0)
    48000740:	a895                	j	480007b4 <execute+0x8e>
    48000742:	fd043783          	ld	a5,-48(s0)
    48000746:	6390                	ld	a2,0(a5)
    48000748:	00001797          	auipc	a5,0x1
    4800074c:	70078793          	addi	a5,a5,1792 # 48001e48 <table>
    48000750:	6394                	ld	a3,0(a5)
    48000752:	fe842703          	lw	a4,-24(s0)
    48000756:	87ba                	mv	a5,a4
    48000758:	0786                	slli	a5,a5,0x1
    4800075a:	97ba                	add	a5,a5,a4
    4800075c:	078e                	slli	a5,a5,0x3
    4800075e:	97b6                	add	a5,a5,a3
    48000760:	639c                	ld	a5,0(a5)
    48000762:	85be                	mv	a1,a5
    48000764:	8532                	mv	a0,a2
    48000766:	714000ef          	jal	ra,48000e7a <strcmp>
    4800076a:	87aa                	mv	a5,a0
    4800076c:	ef9d                	bnez	a5,480007aa <execute+0x84>
    4800076e:	00001797          	auipc	a5,0x1
    48000772:	6da78793          	addi	a5,a5,1754 # 48001e48 <table>
    48000776:	6394                	ld	a3,0(a5)
    48000778:	fe842703          	lw	a4,-24(s0)
    4800077c:	87ba                	mv	a5,a4
    4800077e:	0786                	slli	a5,a5,0x1
    48000780:	97ba                	add	a5,a5,a4
    48000782:	078e                	slli	a5,a5,0x3
    48000784:	97b6                	add	a5,a5,a3
    48000786:	6b9c                	ld	a5,16(a5)
    48000788:	fdc42703          	lw	a4,-36(s0)
    4800078c:	fd043583          	ld	a1,-48(s0)
    48000790:	853a                	mv	a0,a4
    48000792:	9782                	jalr	a5
    48000794:	87aa                	mv	a5,a0
    48000796:	873e                	mv	a4,a5
    48000798:	00001797          	auipc	a5,0x1
    4800079c:	74078793          	addi	a5,a5,1856 # 48001ed8 <__cmd_exec_status>
    480007a0:	c398                	sw	a4,0(a5)
    480007a2:	4785                	li	a5,1
    480007a4:	fef42623          	sw	a5,-20(s0)
    480007a8:	a025                	j	480007d0 <execute+0xaa>
    480007aa:	fe842783          	lw	a5,-24(s0)
    480007ae:	2785                	addiw	a5,a5,1
    480007b0:	fef42423          	sw	a5,-24(s0)
    480007b4:	00001797          	auipc	a5,0x1
    480007b8:	69478793          	addi	a5,a5,1684 # 48001e48 <table>
    480007bc:	6394                	ld	a3,0(a5)
    480007be:	fe842703          	lw	a4,-24(s0)
    480007c2:	87ba                	mv	a5,a4
    480007c4:	0786                	slli	a5,a5,0x1
    480007c6:	97ba                	add	a5,a5,a4
    480007c8:	078e                	slli	a5,a5,0x3
    480007ca:	97b6                	add	a5,a5,a3
    480007cc:	639c                	ld	a5,0(a5)
    480007ce:	fbb5                	bnez	a5,48000742 <execute+0x1c>
    480007d0:	fec42783          	lw	a5,-20(s0)
    480007d4:	2781                	sext.w	a5,a5
    480007d6:	e38d                	bnez	a5,480007f8 <execute+0xd2>
    480007d8:	fd043783          	ld	a5,-48(s0)
    480007dc:	639c                	ld	a5,0(a5)
    480007de:	85be                	mv	a1,a5
    480007e0:	00002517          	auipc	a0,0x2
    480007e4:	8c850513          	addi	a0,a0,-1848 # 480020a8 <cmd_end_+0x68>
    480007e8:	2fc010ef          	jal	ra,48001ae4 <printf>
    480007ec:	00001797          	auipc	a5,0x1
    480007f0:	6ec78793          	addi	a5,a5,1772 # 48001ed8 <__cmd_exec_status>
    480007f4:	577d                	li	a4,-1
    480007f6:	c398                	sw	a4,0(a5)
    480007f8:	0001                	nop
    480007fa:	70a2                	ld	ra,40(sp)
    480007fc:	7402                	ld	s0,32(sp)
    480007fe:	6145                	addi	sp,sp,48
    48000800:	8082                	ret

0000000048000802 <shell>:
    48000802:	7155                	addi	sp,sp,-208
    48000804:	e586                	sd	ra,200(sp)
    48000806:	e1a2                	sd	s0,192(sp)
    48000808:	0980                	addi	s0,sp,208
    4800080a:	fc042a23          	sw	zero,-44(s0)
    4800080e:	fe042623          	sw	zero,-20(s0)
    48000812:	fe042423          	sw	zero,-24(s0)
    48000816:	a821                	j	4800082e <shell+0x2c>
    48000818:	fe842783          	lw	a5,-24(s0)
    4800081c:	17c1                	addi	a5,a5,-16
    4800081e:	97a2                	add	a5,a5,s0
    48000820:	fc078023          	sb	zero,-64(a5)
    48000824:	fe842783          	lw	a5,-24(s0)
    48000828:	2785                	addiw	a5,a5,1
    4800082a:	fef42423          	sw	a5,-24(s0)
    4800082e:	fe842783          	lw	a5,-24(s0)
    48000832:	0007871b          	sext.w	a4,a5
    48000836:	47fd                	li	a5,31
    48000838:	fee7d0e3          	bge	a5,a4,48000818 <shell+0x16>
    4800083c:	fe042223          	sw	zero,-28(s0)
    48000840:	a829                	j	4800085a <shell+0x58>
    48000842:	fe442783          	lw	a5,-28(s0)
    48000846:	078e                	slli	a5,a5,0x3
    48000848:	17c1                	addi	a5,a5,-16
    4800084a:	97a2                	add	a5,a5,s0
    4800084c:	f407b023          	sd	zero,-192(a5)
    48000850:	fe442783          	lw	a5,-28(s0)
    48000854:	2785                	addiw	a5,a5,1
    48000856:	fef42223          	sw	a5,-28(s0)
    4800085a:	fe442783          	lw	a5,-28(s0)
    4800085e:	0007871b          	sext.w	a4,a5
    48000862:	47bd                	li	a5,15
    48000864:	fce7dfe3          	bge	a5,a4,48000842 <shell+0x40>
    48000868:	803ff0ef          	jal	ra,4800006a <prepend_prompt>
    4800086c:	00002517          	auipc	a0,0x2
    48000870:	83450513          	addi	a0,a0,-1996 # 480020a0 <cmd_end_+0x60>
    48000874:	270010ef          	jal	ra,48001ae4 <printf>
    48000878:	801ff0ef          	jal	ra,48000078 <active_prompt>
    4800087c:	87aa                	mv	a5,a0
    4800087e:	26078363          	beqz	a5,48000ae4 <shell+0x2e2>
    48000882:	00001797          	auipc	a5,0x1
    48000886:	64678793          	addi	a5,a5,1606 # 48001ec8 <__read_char__>
    4800088a:	639c                	ld	a5,0(a5)
    4800088c:	9782                	jalr	a5
    4800088e:	87aa                	mv	a5,a0
    48000890:	fef42023          	sw	a5,-32(s0)
    48000894:	fe042783          	lw	a5,-32(s0)
    48000898:	0007871b          	sext.w	a4,a5
    4800089c:	57fd                	li	a5,-1
    4800089e:	24f70063          	beq	a4,a5,48000ade <shell+0x2dc>
    480008a2:	fe042783          	lw	a5,-32(s0)
    480008a6:	fcf40fa3          	sb	a5,-33(s0)
    480008aa:	fdf44783          	lbu	a5,-33(s0)
    480008ae:	0ff7f713          	zext.b	a4,a5
    480008b2:	47b5                	li	a5,13
    480008b4:	00f70963          	beq	a4,a5,480008c6 <shell+0xc4>
    480008b8:	fdf44783          	lbu	a5,-33(s0)
    480008bc:	0ff7f713          	zext.b	a4,a5
    480008c0:	47a9                	li	a5,10
    480008c2:	04f71763          	bne	a4,a5,48000910 <shell+0x10e>
    480008c6:	fd442783          	lw	a5,-44(s0)
    480008ca:	17c1                	addi	a5,a5,-16
    480008cc:	97a2                	add	a5,a5,s0
    480008ce:	fc078023          	sb	zero,-64(a5)
    480008d2:	00001797          	auipc	a5,0x1
    480008d6:	5fe78793          	addi	a5,a5,1534 # 48001ed0 <__write_char__>
    480008da:	639c                	ld	a5,0(a5)
    480008dc:	4529                	li	a0,10
    480008de:	9782                	jalr	a5
    480008e0:	0001                	nop
    480008e2:	fb040793          	addi	a5,s0,-80
    480008e6:	853e                	mv	a0,a5
    480008e8:	9cdff0ef          	jal	ra,480002b4 <add_command_to_history>
    480008ec:	fb040713          	addi	a4,s0,-80
    480008f0:	f3040793          	addi	a5,s0,-208
    480008f4:	4641                	li	a2,16
    480008f6:	85ba                	mv	a1,a4
    480008f8:	853e                	mv	a0,a5
    480008fa:	cf1ff0ef          	jal	ra,480005ea <parse_line>
    480008fe:	87aa                	mv	a5,a0
    48000900:	fcf42c23          	sw	a5,-40(s0)
    48000904:	fd842783          	lw	a5,-40(s0)
    48000908:	2781                	sext.w	a5,a5
    4800090a:	1ef05963          	blez	a5,48000afc <shell+0x2fa>
    4800090e:	aaf9                	j	48000aec <shell+0x2ea>
    48000910:	fdf44783          	lbu	a5,-33(s0)
    48000914:	0ff7f713          	zext.b	a4,a5
    48000918:	07f00793          	li	a5,127
    4800091c:	00f70963          	beq	a4,a5,4800092e <shell+0x12c>
    48000920:	fdf44783          	lbu	a5,-33(s0)
    48000924:	0ff7f713          	zext.b	a4,a5
    48000928:	47a1                	li	a5,8
    4800092a:	04f71663          	bne	a4,a5,48000976 <shell+0x174>
    4800092e:	00001797          	auipc	a5,0x1
    48000932:	51278793          	addi	a5,a5,1298 # 48001e40 <__echo>
    48000936:	0007c783          	lbu	a5,0(a5)
    4800093a:	0ff7f793          	zext.b	a5,a5
    4800093e:	0017c793          	xori	a5,a5,1
    48000942:	0ff7f793          	zext.b	a5,a5
    48000946:	c789                	beqz	a5,48000950 <shell+0x14e>
    48000948:	f40ff0ef          	jal	ra,48000088 <delete>
    4800094c:	f3cff0ef          	jal	ra,48000088 <delete>
    48000950:	fd442783          	lw	a5,-44(s0)
    48000954:	18078a63          	beqz	a5,48000ae8 <shell+0x2e6>
    48000958:	fd442783          	lw	a5,-44(s0)
    4800095c:	37fd                	addiw	a5,a5,-1
    4800095e:	2781                	sext.w	a5,a5
    48000960:	fcf42a23          	sw	a5,-44(s0)
    48000964:	fd442783          	lw	a5,-44(s0)
    48000968:	17c1                	addi	a5,a5,-16
    4800096a:	97a2                	add	a5,a5,s0
    4800096c:	fc078023          	sb	zero,-64(a5)
    48000970:	f18ff0ef          	jal	ra,48000088 <delete>
    48000974:	a289                	j	48000ab6 <shell+0x2b4>
    48000976:	fdf44783          	lbu	a5,-33(s0)
    4800097a:	0ff7f713          	zext.b	a4,a5
    4800097e:	47ed                	li	a5,27
    48000980:	00f71663          	bne	a4,a5,4800098c <shell+0x18a>
    48000984:	4785                	li	a5,1
    48000986:	fef42623          	sw	a5,-20(s0)
    4800098a:	a285                	j	48000aea <shell+0x2e8>
    4800098c:	fdf44783          	lbu	a5,-33(s0)
    48000990:	0ff7f713          	zext.b	a4,a5
    48000994:	05b00793          	li	a5,91
    48000998:	00f71d63          	bne	a4,a5,480009b2 <shell+0x1b0>
    4800099c:	fec42783          	lw	a5,-20(s0)
    480009a0:	0007871b          	sext.w	a4,a5
    480009a4:	4785                	li	a5,1
    480009a6:	00f71663          	bne	a4,a5,480009b2 <shell+0x1b0>
    480009aa:	4789                	li	a5,2
    480009ac:	fef42623          	sw	a5,-20(s0)
    480009b0:	aa2d                	j	48000aea <shell+0x2e8>
    480009b2:	fdf44783          	lbu	a5,-33(s0)
    480009b6:	0ff7f713          	zext.b	a4,a5
    480009ba:	04300793          	li	a5,67
    480009be:	00f70a63          	beq	a4,a5,480009d2 <shell+0x1d0>
    480009c2:	fdf44783          	lbu	a5,-33(s0)
    480009c6:	0ff7f713          	zext.b	a4,a5
    480009ca:	04400793          	li	a5,68
    480009ce:	00f71963          	bne	a4,a5,480009e0 <shell+0x1de>
    480009d2:	fec42783          	lw	a5,-20(s0)
    480009d6:	2781                	sext.w	a5,a5
    480009d8:	c781                	beqz	a5,480009e0 <shell+0x1de>
    480009da:	fe042623          	sw	zero,-20(s0)
    480009de:	a231                	j	48000aea <shell+0x2e8>
    480009e0:	fdf44783          	lbu	a5,-33(s0)
    480009e4:	0ff7f713          	zext.b	a4,a5
    480009e8:	04100793          	li	a5,65
    480009ec:	00f70a63          	beq	a4,a5,48000a00 <shell+0x1fe>
    480009f0:	fdf44783          	lbu	a5,-33(s0)
    480009f4:	0ff7f713          	zext.b	a4,a5
    480009f8:	04200793          	li	a5,66
    480009fc:	06f71f63          	bne	a4,a5,48000a7a <shell+0x278>
    48000a00:	fec42783          	lw	a5,-20(s0)
    48000a04:	0007871b          	sext.w	a4,a5
    48000a08:	4789                	li	a5,2
    48000a0a:	06f71863          	bne	a4,a5,48000a7a <shell+0x278>
    48000a0e:	00001797          	auipc	a5,0x1
    48000a12:	43278793          	addi	a5,a5,1074 # 48001e40 <__echo>
    48000a16:	0007c783          	lbu	a5,0(a5)
    48000a1a:	0ff7f793          	zext.b	a5,a5
    48000a1e:	0017c793          	xori	a5,a5,1
    48000a22:	0ff7f793          	zext.b	a5,a5
    48000a26:	cb89                	beqz	a5,48000a38 <shell+0x236>
    48000a28:	fd442783          	lw	a5,-44(s0)
    48000a2c:	2791                	addiw	a5,a5,4
    48000a2e:	2781                	sext.w	a5,a5
    48000a30:	853e                	mv	a0,a5
    48000a32:	e94ff0ef          	jal	ra,480000c6 <clear_prompt>
    48000a36:	a031                	j	48000a42 <shell+0x240>
    48000a38:	fd442783          	lw	a5,-44(s0)
    48000a3c:	853e                	mv	a0,a5
    48000a3e:	e88ff0ef          	jal	ra,480000c6 <clear_prompt>
    48000a42:	fdf44783          	lbu	a5,-33(s0)
    48000a46:	0ff7f713          	zext.b	a4,a5
    48000a4a:	04100793          	li	a5,65
    48000a4e:	00f71b63          	bne	a4,a5,48000a64 <shell+0x262>
    48000a52:	fd440713          	addi	a4,s0,-44
    48000a56:	fb040793          	addi	a5,s0,-80
    48000a5a:	85ba                	mv	a1,a4
    48000a5c:	853e                	mv	a0,a5
    48000a5e:	e9aff0ef          	jal	ra,480000f8 <handle_up_arrow>
    48000a62:	a809                	j	48000a74 <shell+0x272>
    48000a64:	fd440713          	addi	a4,s0,-44
    48000a68:	fb040793          	addi	a5,s0,-80
    48000a6c:	85ba                	mv	a1,a4
    48000a6e:	853e                	mv	a0,a5
    48000a70:	f72ff0ef          	jal	ra,480001e2 <handle_down_arrow>
    48000a74:	fe042623          	sw	zero,-20(s0)
    48000a78:	a88d                	j	48000aea <shell+0x2e8>
    48000a7a:	fdf44783          	lbu	a5,-33(s0)
    48000a7e:	0ff7f713          	zext.b	a4,a5
    48000a82:	47a5                	li	a5,9
    48000a84:	00f71b63          	bne	a4,a5,48000a9a <shell+0x298>
    48000a88:	fd440713          	addi	a4,s0,-44
    48000a8c:	fb040793          	addi	a5,s0,-80
    48000a90:	85ba                	mv	a1,a4
    48000a92:	853e                	mv	a0,a5
    48000a94:	a0fff0ef          	jal	ra,480004a2 <handle_tab>
    48000a98:	a889                	j	48000aea <shell+0x2e8>
    48000a9a:	fd442783          	lw	a5,-44(s0)
    48000a9e:	17c1                	addi	a5,a5,-16
    48000aa0:	97a2                	add	a5,a5,s0
    48000aa2:	fdf44703          	lbu	a4,-33(s0)
    48000aa6:	fce78023          	sb	a4,-64(a5)
    48000aaa:	fd442783          	lw	a5,-44(s0)
    48000aae:	2785                	addiw	a5,a5,1
    48000ab0:	2781                	sext.w	a5,a5
    48000ab2:	fcf42a23          	sw	a5,-44(s0)
    48000ab6:	00001797          	auipc	a5,0x1
    48000aba:	38a78793          	addi	a5,a5,906 # 48001e40 <__echo>
    48000abe:	0007c783          	lbu	a5,0(a5)
    48000ac2:	0ff7f793          	zext.b	a5,a5
    48000ac6:	da0789e3          	beqz	a5,48000878 <shell+0x76>
    48000aca:	00001797          	auipc	a5,0x1
    48000ace:	40678793          	addi	a5,a5,1030 # 48001ed0 <__write_char__>
    48000ad2:	639c                	ld	a5,0(a5)
    48000ad4:	fdf44703          	lbu	a4,-33(s0)
    48000ad8:	853a                	mv	a0,a4
    48000ada:	9782                	jalr	a5
    48000adc:	bb71                	j	48000878 <shell+0x76>
    48000ade:	d7eff0ef          	jal	ra,4800005c <loop>
    48000ae2:	bb59                	j	48000878 <shell+0x76>
    48000ae4:	0001                	nop
    48000ae6:	bb49                	j	48000878 <shell+0x76>
    48000ae8:	0001                	nop
    48000aea:	b379                	j	48000878 <shell+0x76>
    48000aec:	f3040713          	addi	a4,s0,-208
    48000af0:	fd842783          	lw	a5,-40(s0)
    48000af4:	85ba                	mv	a1,a4
    48000af6:	853e                	mv	a0,a5
    48000af8:	c2fff0ef          	jal	ra,48000726 <execute>
    48000afc:	0001                	nop
    48000afe:	60ae                	ld	ra,200(sp)
    48000b00:	640e                	ld	s0,192(sp)
    48000b02:	6169                	addi	sp,sp,208
    48000b04:	8082                	ret

0000000048000b06 <exec_auto_cmds>:
    48000b06:	1101                	addi	sp,sp,-32
    48000b08:	ec06                	sd	ra,24(sp)
    48000b0a:	e822                	sd	s0,16(sp)
    48000b0c:	1000                	addi	s0,sp,32
    48000b0e:	fe042623          	sw	zero,-20(s0)
    48000b12:	a035                	j	48000b3e <exec_auto_cmds+0x38>
    48000b14:	00001797          	auipc	a5,0x1
    48000b18:	33c78793          	addi	a5,a5,828 # 48001e50 <auto_load>
    48000b1c:	6394                	ld	a3,0(a5)
    48000b1e:	fec42703          	lw	a4,-20(s0)
    48000b22:	87ba                	mv	a5,a4
    48000b24:	0786                	slli	a5,a5,0x1
    48000b26:	97ba                	add	a5,a5,a4
    48000b28:	078e                	slli	a5,a5,0x3
    48000b2a:	97b6                	add	a5,a5,a3
    48000b2c:	6b9c                	ld	a5,16(a5)
    48000b2e:	4581                	li	a1,0
    48000b30:	4501                	li	a0,0
    48000b32:	9782                	jalr	a5
    48000b34:	fec42783          	lw	a5,-20(s0)
    48000b38:	2785                	addiw	a5,a5,1
    48000b3a:	fef42623          	sw	a5,-20(s0)
    48000b3e:	00001797          	auipc	a5,0x1
    48000b42:	31278793          	addi	a5,a5,786 # 48001e50 <auto_load>
    48000b46:	6394                	ld	a3,0(a5)
    48000b48:	fec42703          	lw	a4,-20(s0)
    48000b4c:	87ba                	mv	a5,a4
    48000b4e:	0786                	slli	a5,a5,0x1
    48000b50:	97ba                	add	a5,a5,a4
    48000b52:	078e                	slli	a5,a5,0x3
    48000b54:	97b6                	add	a5,a5,a3
    48000b56:	639c                	ld	a5,0(a5)
    48000b58:	ffd5                	bnez	a5,48000b14 <exec_auto_cmds+0xe>
    48000b5a:	0001                	nop
    48000b5c:	0001                	nop
    48000b5e:	60e2                	ld	ra,24(sp)
    48000b60:	6442                	ld	s0,16(sp)
    48000b62:	6105                	addi	sp,sp,32
    48000b64:	8082                	ret

0000000048000b66 <build_info>:
    48000b66:	1101                	addi	sp,sp,-32
    48000b68:	ec06                	sd	ra,24(sp)
    48000b6a:	e822                	sd	s0,16(sp)
    48000b6c:	1000                	addi	s0,sp,32
    48000b6e:	87aa                	mv	a5,a0
    48000b70:	feb43023          	sd	a1,-32(s0)
    48000b74:	fef42623          	sw	a5,-20(s0)
    48000b78:	00001517          	auipc	a0,0x1
    48000b7c:	57050513          	addi	a0,a0,1392 # 480020e8 <cmd_end_+0xa8>
    48000b80:	765000ef          	jal	ra,48001ae4 <printf>
    48000b84:	4781                	li	a5,0
    48000b86:	853e                	mv	a0,a5
    48000b88:	60e2                	ld	ra,24(sp)
    48000b8a:	6442                	ld	s0,16(sp)
    48000b8c:	6105                	addi	sp,sp,32
    48000b8e:	8082                	ret

0000000048000b90 <initial_setup>:
    48000b90:	1101                	addi	sp,sp,-32
    48000b92:	ec06                	sd	ra,24(sp)
    48000b94:	e822                	sd	s0,16(sp)
    48000b96:	1000                	addi	s0,sp,32
    48000b98:	00001797          	auipc	a5,0x1
    48000b9c:	2d87b783          	ld	a5,728(a5) # 48001e70 <_GLOBAL_OFFSET_TABLE_+0x8>
    48000ba0:	fef43423          	sd	a5,-24(s0)
    48000ba4:	00001797          	auipc	a5,0x1
    48000ba8:	2f47b783          	ld	a5,756(a5) # 48001e98 <_GLOBAL_OFFSET_TABLE_+0x30>
    48000bac:	fef43023          	sd	a5,-32(s0)
    48000bb0:	fe043703          	ld	a4,-32(s0)
    48000bb4:	fe843783          	ld	a5,-24(s0)
    48000bb8:	02f70b63          	beq	a4,a5,48000bee <initial_setup+0x5e>
    48000bbc:	a00d                	j	48000bde <initial_setup+0x4e>
    48000bbe:	fe843703          	ld	a4,-24(s0)
    48000bc2:	00170793          	addi	a5,a4,1
    48000bc6:	fef43423          	sd	a5,-24(s0)
    48000bca:	fe043783          	ld	a5,-32(s0)
    48000bce:	00178693          	addi	a3,a5,1
    48000bd2:	fed43023          	sd	a3,-32(s0)
    48000bd6:	00074703          	lbu	a4,0(a4)
    48000bda:	00e78023          	sb	a4,0(a5)
    48000bde:	fe043703          	ld	a4,-32(s0)
    48000be2:	00001797          	auipc	a5,0x1
    48000be6:	2be7b783          	ld	a5,702(a5) # 48001ea0 <_GLOBAL_OFFSET_TABLE_+0x38>
    48000bea:	fcf76ae3          	bltu	a4,a5,48000bbe <initial_setup+0x2e>
    48000bee:	00001797          	auipc	a5,0x1
    48000bf2:	29a7b783          	ld	a5,666(a5) # 48001e88 <_GLOBAL_OFFSET_TABLE_+0x20>
    48000bf6:	fef43023          	sd	a5,-32(s0)
    48000bfa:	a811                	j	48000c0e <initial_setup+0x7e>
    48000bfc:	fe043783          	ld	a5,-32(s0)
    48000c00:	00078023          	sb	zero,0(a5)
    48000c04:	fe043783          	ld	a5,-32(s0)
    48000c08:	0785                	addi	a5,a5,1
    48000c0a:	fef43023          	sd	a5,-32(s0)
    48000c0e:	fe043703          	ld	a4,-32(s0)
    48000c12:	00001797          	auipc	a5,0x1
    48000c16:	26e7b783          	ld	a5,622(a5) # 48001e80 <_GLOBAL_OFFSET_TABLE_+0x18>
    48000c1a:	fef761e3          	bltu	a4,a5,48000bfc <initial_setup+0x6c>
    48000c1e:	13e010ef          	jal	ra,48001d5c <platform_init>
    48000c22:	0001                	nop
    48000c24:	60e2                	ld	ra,24(sp)
    48000c26:	6442                	ld	s0,16(sp)
    48000c28:	6105                	addi	sp,sp,32
    48000c2a:	8082                	ret

0000000048000c2c <prompt>:
    48000c2c:	1141                	addi	sp,sp,-16
    48000c2e:	e406                	sd	ra,8(sp)
    48000c30:	e022                	sd	s0,0(sp)
    48000c32:	0800                	addi	s0,sp,16
    48000c34:	f5dff0ef          	jal	ra,48000b90 <initial_setup>
    48000c38:	ecfff0ef          	jal	ra,48000b06 <exec_auto_cmds>
    48000c3c:	c12ff0ef          	jal	ra,4800004e <setup>
    48000c40:	bc3ff0ef          	jal	ra,48000802 <shell>
    48000c44:	bff5                	j	48000c40 <prompt+0x14>

0000000048000c46 <exec>:
    48000c46:	7171                	addi	sp,sp,-176
    48000c48:	f506                	sd	ra,168(sp)
    48000c4a:	f122                	sd	s0,160(sp)
    48000c4c:	1900                	addi	s0,sp,176
    48000c4e:	f4a43c23          	sd	a0,-168(s0)
    48000c52:	f6840793          	addi	a5,s0,-152
    48000c56:	4641                	li	a2,16
    48000c58:	f5843583          	ld	a1,-168(s0)
    48000c5c:	853e                	mv	a0,a5
    48000c5e:	98dff0ef          	jal	ra,480005ea <parse_line>
    48000c62:	87aa                	mv	a5,a0
    48000c64:	fef42623          	sw	a5,-20(s0)
    48000c68:	fec42783          	lw	a5,-20(s0)
    48000c6c:	2781                	sext.w	a5,a5
    48000c6e:	00f05a63          	blez	a5,48000c82 <exec+0x3c>
    48000c72:	f6840713          	addi	a4,s0,-152
    48000c76:	fec42783          	lw	a5,-20(s0)
    48000c7a:	85ba                	mv	a1,a4
    48000c7c:	853e                	mv	a0,a5
    48000c7e:	aa9ff0ef          	jal	ra,48000726 <execute>
    48000c82:	00001797          	auipc	a5,0x1
    48000c86:	25678793          	addi	a5,a5,598 # 48001ed8 <__cmd_exec_status>
    48000c8a:	439c                	lw	a5,0(a5)
    48000c8c:	2781                	sext.w	a5,a5
    48000c8e:	853e                	mv	a0,a5
    48000c90:	70aa                	ld	ra,168(sp)
    48000c92:	740a                	ld	s0,160(sp)
    48000c94:	614d                	addi	sp,sp,176
    48000c96:	8082                	ret

0000000048000c98 <get_function_addr>:
    48000c98:	7179                	addi	sp,sp,-48
    48000c9a:	f406                	sd	ra,40(sp)
    48000c9c:	f022                	sd	s0,32(sp)
    48000c9e:	1800                	addi	s0,sp,48
    48000ca0:	fca43c23          	sd	a0,-40(s0)
    48000ca4:	fe042623          	sw	zero,-20(s0)
    48000ca8:	a881                	j	48000cf8 <get_function_addr+0x60>
    48000caa:	00001797          	auipc	a5,0x1
    48000cae:	19e78793          	addi	a5,a5,414 # 48001e48 <table>
    48000cb2:	6394                	ld	a3,0(a5)
    48000cb4:	fec42703          	lw	a4,-20(s0)
    48000cb8:	87ba                	mv	a5,a4
    48000cba:	0786                	slli	a5,a5,0x1
    48000cbc:	97ba                	add	a5,a5,a4
    48000cbe:	078e                	slli	a5,a5,0x3
    48000cc0:	97b6                	add	a5,a5,a3
    48000cc2:	639c                	ld	a5,0(a5)
    48000cc4:	85be                	mv	a1,a5
    48000cc6:	fd843503          	ld	a0,-40(s0)
    48000cca:	1b0000ef          	jal	ra,48000e7a <strcmp>
    48000cce:	87aa                	mv	a5,a0
    48000cd0:	ef99                	bnez	a5,48000cee <get_function_addr+0x56>
    48000cd2:	00001797          	auipc	a5,0x1
    48000cd6:	17678793          	addi	a5,a5,374 # 48001e48 <table>
    48000cda:	6394                	ld	a3,0(a5)
    48000cdc:	fec42703          	lw	a4,-20(s0)
    48000ce0:	87ba                	mv	a5,a4
    48000ce2:	0786                	slli	a5,a5,0x1
    48000ce4:	97ba                	add	a5,a5,a4
    48000ce6:	078e                	slli	a5,a5,0x3
    48000ce8:	97b6                	add	a5,a5,a3
    48000cea:	6b9c                	ld	a5,16(a5)
    48000cec:	a02d                	j	48000d16 <get_function_addr+0x7e>
    48000cee:	fec42783          	lw	a5,-20(s0)
    48000cf2:	2785                	addiw	a5,a5,1
    48000cf4:	fef42623          	sw	a5,-20(s0)
    48000cf8:	00001797          	auipc	a5,0x1
    48000cfc:	15078793          	addi	a5,a5,336 # 48001e48 <table>
    48000d00:	6394                	ld	a3,0(a5)
    48000d02:	fec42703          	lw	a4,-20(s0)
    48000d06:	87ba                	mv	a5,a4
    48000d08:	0786                	slli	a5,a5,0x1
    48000d0a:	97ba                	add	a5,a5,a4
    48000d0c:	078e                	slli	a5,a5,0x3
    48000d0e:	97b6                	add	a5,a5,a3
    48000d10:	639c                	ld	a5,0(a5)
    48000d12:	ffc1                	bnez	a5,48000caa <get_function_addr+0x12>
    48000d14:	4781                	li	a5,0
    48000d16:	853e                	mv	a0,a5
    48000d18:	70a2                	ld	ra,40(sp)
    48000d1a:	7402                	ld	s0,32(sp)
    48000d1c:	6145                	addi	sp,sp,48
    48000d1e:	8082                	ret

0000000048000d20 <help>:
    48000d20:	7179                	addi	sp,sp,-48
    48000d22:	f406                	sd	ra,40(sp)
    48000d24:	f022                	sd	s0,32(sp)
    48000d26:	1800                	addi	s0,sp,48
    48000d28:	87aa                	mv	a5,a0
    48000d2a:	fcb43823          	sd	a1,-48(s0)
    48000d2e:	fcf42e23          	sw	a5,-36(s0)
    48000d32:	fe042623          	sw	zero,-20(s0)
    48000d36:	4785                	li	a5,1
    48000d38:	fef405a3          	sb	a5,-21(s0)
    48000d3c:	fdc42783          	lw	a5,-36(s0)
    48000d40:	0007871b          	sext.w	a4,a5
    48000d44:	4785                	li	a5,1
    48000d46:	02e7d263          	bge	a5,a4,48000d6a <help+0x4a>
    48000d4a:	fd043783          	ld	a5,-48(s0)
    48000d4e:	07a1                	addi	a5,a5,8
    48000d50:	639c                	ld	a5,0(a5)
    48000d52:	00001597          	auipc	a1,0x1
    48000d56:	3de58593          	addi	a1,a1,990 # 48002130 <cmd_end_+0xf0>
    48000d5a:	853e                	mv	a0,a5
    48000d5c:	11e000ef          	jal	ra,48000e7a <strcmp>
    48000d60:	87aa                	mv	a5,a0
    48000d62:	e781                	bnez	a5,48000d6a <help+0x4a>
    48000d64:	fe0405a3          	sb	zero,-21(s0)
    48000d68:	a039                	j	48000d76 <help+0x56>
    48000d6a:	00001517          	auipc	a0,0x1
    48000d6e:	3ce50513          	addi	a0,a0,974 # 48002138 <cmd_end_+0xf8>
    48000d72:	573000ef          	jal	ra,48001ae4 <printf>
    48000d76:	a0bd                	j	48000de4 <help+0xc4>
    48000d78:	00001797          	auipc	a5,0x1
    48000d7c:	0d078793          	addi	a5,a5,208 # 48001e48 <table>
    48000d80:	6394                	ld	a3,0(a5)
    48000d82:	fec42703          	lw	a4,-20(s0)
    48000d86:	87ba                	mv	a5,a4
    48000d88:	0786                	slli	a5,a5,0x1
    48000d8a:	97ba                	add	a5,a5,a4
    48000d8c:	078e                	slli	a5,a5,0x3
    48000d8e:	97b6                	add	a5,a5,a3
    48000d90:	639c                	ld	a5,0(a5)
    48000d92:	853e                	mv	a0,a5
    48000d94:	551000ef          	jal	ra,48001ae4 <printf>
    48000d98:	feb44783          	lbu	a5,-21(s0)
    48000d9c:	0ff7f793          	zext.b	a5,a5
    48000da0:	c79d                	beqz	a5,48000dce <help+0xae>
    48000da2:	00001517          	auipc	a0,0x1
    48000da6:	3b650513          	addi	a0,a0,950 # 48002158 <cmd_end_+0x118>
    48000daa:	53b000ef          	jal	ra,48001ae4 <printf>
    48000dae:	00001797          	auipc	a5,0x1
    48000db2:	09a78793          	addi	a5,a5,154 # 48001e48 <table>
    48000db6:	6394                	ld	a3,0(a5)
    48000db8:	fec42703          	lw	a4,-20(s0)
    48000dbc:	87ba                	mv	a5,a4
    48000dbe:	0786                	slli	a5,a5,0x1
    48000dc0:	97ba                	add	a5,a5,a4
    48000dc2:	078e                	slli	a5,a5,0x3
    48000dc4:	97b6                	add	a5,a5,a3
    48000dc6:	679c                	ld	a5,8(a5)
    48000dc8:	853e                	mv	a0,a5
    48000dca:	51b000ef          	jal	ra,48001ae4 <printf>
    48000dce:	00001517          	auipc	a0,0x1
    48000dd2:	2ca50513          	addi	a0,a0,714 # 48002098 <cmd_end_+0x58>
    48000dd6:	50f000ef          	jal	ra,48001ae4 <printf>
    48000dda:	fec42783          	lw	a5,-20(s0)
    48000dde:	2785                	addiw	a5,a5,1
    48000de0:	fef42623          	sw	a5,-20(s0)
    48000de4:	00001797          	auipc	a5,0x1
    48000de8:	06478793          	addi	a5,a5,100 # 48001e48 <table>
    48000dec:	6394                	ld	a3,0(a5)
    48000dee:	fec42703          	lw	a4,-20(s0)
    48000df2:	87ba                	mv	a5,a4
    48000df4:	0786                	slli	a5,a5,0x1
    48000df6:	97ba                	add	a5,a5,a4
    48000df8:	078e                	slli	a5,a5,0x3
    48000dfa:	97b6                	add	a5,a5,a3
    48000dfc:	639c                	ld	a5,0(a5)
    48000dfe:	ffad                	bnez	a5,48000d78 <help+0x58>
    48000e00:	4781                	li	a5,0
    48000e02:	853e                	mv	a0,a5
    48000e04:	70a2                	ld	ra,40(sp)
    48000e06:	7402                	ld	s0,32(sp)
    48000e08:	6145                	addi	sp,sp,48
    48000e0a:	8082                	ret

0000000048000e0c <cmd_exec_status>:
    48000e0c:	1101                	addi	sp,sp,-32
    48000e0e:	ec06                	sd	ra,24(sp)
    48000e10:	e822                	sd	s0,16(sp)
    48000e12:	1000                	addi	s0,sp,32
    48000e14:	87aa                	mv	a5,a0
    48000e16:	feb43023          	sd	a1,-32(s0)
    48000e1a:	fef42623          	sw	a5,-20(s0)
    48000e1e:	00001797          	auipc	a5,0x1
    48000e22:	0ba78793          	addi	a5,a5,186 # 48001ed8 <__cmd_exec_status>
    48000e26:	439c                	lw	a5,0(a5)
    48000e28:	2781                	sext.w	a5,a5
    48000e2a:	85be                	mv	a1,a5
    48000e2c:	00001517          	auipc	a0,0x1
    48000e30:	33450513          	addi	a0,a0,820 # 48002160 <cmd_end_+0x120>
    48000e34:	4b1000ef          	jal	ra,48001ae4 <printf>
    48000e38:	4781                	li	a5,0
    48000e3a:	853e                	mv	a0,a5
    48000e3c:	60e2                	ld	ra,24(sp)
    48000e3e:	6442                	ld	s0,16(sp)
    48000e40:	6105                	addi	sp,sp,32
    48000e42:	8082                	ret

0000000048000e44 <strlen>:
    48000e44:	7179                	addi	sp,sp,-48
    48000e46:	f422                	sd	s0,40(sp)
    48000e48:	1800                	addi	s0,sp,48
    48000e4a:	fca43c23          	sd	a0,-40(s0)
    48000e4e:	fe043423          	sd	zero,-24(s0)
    48000e52:	a031                	j	48000e5e <strlen+0x1a>
    48000e54:	fe843783          	ld	a5,-24(s0)
    48000e58:	0785                	addi	a5,a5,1
    48000e5a:	fef43423          	sd	a5,-24(s0)
    48000e5e:	fd843703          	ld	a4,-40(s0)
    48000e62:	fe843783          	ld	a5,-24(s0)
    48000e66:	97ba                	add	a5,a5,a4
    48000e68:	0007c783          	lbu	a5,0(a5)
    48000e6c:	f7e5                	bnez	a5,48000e54 <strlen+0x10>
    48000e6e:	fe843783          	ld	a5,-24(s0)
    48000e72:	853e                	mv	a0,a5
    48000e74:	7422                	ld	s0,40(sp)
    48000e76:	6145                	addi	sp,sp,48
    48000e78:	8082                	ret

0000000048000e7a <strcmp>:
    48000e7a:	1101                	addi	sp,sp,-32
    48000e7c:	ec22                	sd	s0,24(sp)
    48000e7e:	1000                	addi	s0,sp,32
    48000e80:	fea43423          	sd	a0,-24(s0)
    48000e84:	feb43023          	sd	a1,-32(s0)
    48000e88:	a819                	j	48000e9e <strcmp+0x24>
    48000e8a:	fe843783          	ld	a5,-24(s0)
    48000e8e:	0785                	addi	a5,a5,1
    48000e90:	fef43423          	sd	a5,-24(s0)
    48000e94:	fe043783          	ld	a5,-32(s0)
    48000e98:	0785                	addi	a5,a5,1
    48000e9a:	fef43023          	sd	a5,-32(s0)
    48000e9e:	fe843783          	ld	a5,-24(s0)
    48000ea2:	0007c783          	lbu	a5,0(a5)
    48000ea6:	cb99                	beqz	a5,48000ebc <strcmp+0x42>
    48000ea8:	fe843783          	ld	a5,-24(s0)
    48000eac:	0007c703          	lbu	a4,0(a5)
    48000eb0:	fe043783          	ld	a5,-32(s0)
    48000eb4:	0007c783          	lbu	a5,0(a5)
    48000eb8:	fcf709e3          	beq	a4,a5,48000e8a <strcmp+0x10>
    48000ebc:	fe843783          	ld	a5,-24(s0)
    48000ec0:	0007c783          	lbu	a5,0(a5)
    48000ec4:	0007871b          	sext.w	a4,a5
    48000ec8:	fe043783          	ld	a5,-32(s0)
    48000ecc:	0007c783          	lbu	a5,0(a5)
    48000ed0:	2781                	sext.w	a5,a5
    48000ed2:	40f707bb          	subw	a5,a4,a5
    48000ed6:	2781                	sext.w	a5,a5
    48000ed8:	853e                	mv	a0,a5
    48000eda:	6462                	ld	s0,24(sp)
    48000edc:	6105                	addi	sp,sp,32
    48000ede:	8082                	ret

0000000048000ee0 <strcpy>:
    48000ee0:	1101                	addi	sp,sp,-32
    48000ee2:	ec22                	sd	s0,24(sp)
    48000ee4:	1000                	addi	s0,sp,32
    48000ee6:	fea43423          	sd	a0,-24(s0)
    48000eea:	feb43023          	sd	a1,-32(s0)
    48000eee:	a00d                	j	48000f10 <strcpy+0x30>
    48000ef0:	fe043703          	ld	a4,-32(s0)
    48000ef4:	00170793          	addi	a5,a4,1
    48000ef8:	fef43023          	sd	a5,-32(s0)
    48000efc:	fe843783          	ld	a5,-24(s0)
    48000f00:	00178693          	addi	a3,a5,1
    48000f04:	fed43423          	sd	a3,-24(s0)
    48000f08:	00074703          	lbu	a4,0(a4)
    48000f0c:	00e78023          	sb	a4,0(a5)
    48000f10:	fe043783          	ld	a5,-32(s0)
    48000f14:	0007c783          	lbu	a5,0(a5)
    48000f18:	ffe1                	bnez	a5,48000ef0 <strcpy+0x10>
    48000f1a:	fe843783          	ld	a5,-24(s0)
    48000f1e:	00078023          	sb	zero,0(a5)
    48000f22:	4781                	li	a5,0
    48000f24:	853e                	mv	a0,a5
    48000f26:	6462                	ld	s0,24(sp)
    48000f28:	6105                	addi	sp,sp,32
    48000f2a:	8082                	ret

0000000048000f2c <memcpy>:
    48000f2c:	715d                	addi	sp,sp,-80
    48000f2e:	e4a2                	sd	s0,72(sp)
    48000f30:	0880                	addi	s0,sp,80
    48000f32:	fca43423          	sd	a0,-56(s0)
    48000f36:	fcb43023          	sd	a1,-64(s0)
    48000f3a:	fac43c23          	sd	a2,-72(s0)
    48000f3e:	fc043783          	ld	a5,-64(s0)
    48000f42:	fef43023          	sd	a5,-32(s0)
    48000f46:	fc843783          	ld	a5,-56(s0)
    48000f4a:	fcf43c23          	sd	a5,-40(s0)
    48000f4e:	fe043423          	sd	zero,-24(s0)
    48000f52:	a025                	j	48000f7a <memcpy+0x4e>
    48000f54:	fe043703          	ld	a4,-32(s0)
    48000f58:	fe843783          	ld	a5,-24(s0)
    48000f5c:	973e                	add	a4,a4,a5
    48000f5e:	fd843683          	ld	a3,-40(s0)
    48000f62:	fe843783          	ld	a5,-24(s0)
    48000f66:	97b6                	add	a5,a5,a3
    48000f68:	00074703          	lbu	a4,0(a4)
    48000f6c:	00e78023          	sb	a4,0(a5)
    48000f70:	fe843783          	ld	a5,-24(s0)
    48000f74:	0785                	addi	a5,a5,1
    48000f76:	fef43423          	sd	a5,-24(s0)
    48000f7a:	fe843703          	ld	a4,-24(s0)
    48000f7e:	fb843783          	ld	a5,-72(s0)
    48000f82:	fcf769e3          	bltu	a4,a5,48000f54 <memcpy+0x28>
    48000f86:	4781                	li	a5,0
    48000f88:	853e                	mv	a0,a5
    48000f8a:	6426                	ld	s0,72(sp)
    48000f8c:	6161                	addi	sp,sp,80
    48000f8e:	8082                	ret

0000000048000f90 <memset>:
    48000f90:	7139                	addi	sp,sp,-64
    48000f92:	fc22                	sd	s0,56(sp)
    48000f94:	0080                	addi	s0,sp,64
    48000f96:	fca43c23          	sd	a0,-40(s0)
    48000f9a:	87ae                	mv	a5,a1
    48000f9c:	fcc43423          	sd	a2,-56(s0)
    48000fa0:	fcf42a23          	sw	a5,-44(s0)
    48000fa4:	fd843783          	ld	a5,-40(s0)
    48000fa8:	fef43023          	sd	a5,-32(s0)
    48000fac:	fe043423          	sd	zero,-24(s0)
    48000fb0:	a00d                	j	48000fd2 <memset+0x42>
    48000fb2:	fe043703          	ld	a4,-32(s0)
    48000fb6:	fe843783          	ld	a5,-24(s0)
    48000fba:	97ba                	add	a5,a5,a4
    48000fbc:	fd442703          	lw	a4,-44(s0)
    48000fc0:	0ff77713          	zext.b	a4,a4
    48000fc4:	00e78023          	sb	a4,0(a5)
    48000fc8:	fe843783          	ld	a5,-24(s0)
    48000fcc:	0785                	addi	a5,a5,1
    48000fce:	fef43423          	sd	a5,-24(s0)
    48000fd2:	fe843703          	ld	a4,-24(s0)
    48000fd6:	fc843783          	ld	a5,-56(s0)
    48000fda:	fcf76ce3          	bltu	a4,a5,48000fb2 <memset+0x22>
    48000fde:	4781                	li	a5,0
    48000fe0:	853e                	mv	a0,a5
    48000fe2:	7462                	ld	s0,56(sp)
    48000fe4:	6121                	addi	sp,sp,64
    48000fe6:	8082                	ret

0000000048000fe8 <atoi>:
    48000fe8:	7179                	addi	sp,sp,-48
    48000fea:	f422                	sd	s0,40(sp)
    48000fec:	1800                	addi	s0,sp,48
    48000fee:	fca43c23          	sd	a0,-40(s0)
    48000ff2:	fe042623          	sw	zero,-20(s0)
    48000ff6:	fe042423          	sw	zero,-24(s0)
    48000ffa:	a83d                	j	48001038 <atoi+0x50>
    48000ffc:	fec42783          	lw	a5,-20(s0)
    48001000:	873e                	mv	a4,a5
    48001002:	87ba                	mv	a5,a4
    48001004:	0027979b          	slliw	a5,a5,0x2
    48001008:	9fb9                	addw	a5,a5,a4
    4800100a:	0017979b          	slliw	a5,a5,0x1
    4800100e:	0007871b          	sext.w	a4,a5
    48001012:	fe842783          	lw	a5,-24(s0)
    48001016:	fd843683          	ld	a3,-40(s0)
    4800101a:	97b6                	add	a5,a5,a3
    4800101c:	0007c783          	lbu	a5,0(a5)
    48001020:	2781                	sext.w	a5,a5
    48001022:	9fb9                	addw	a5,a5,a4
    48001024:	2781                	sext.w	a5,a5
    48001026:	fd07879b          	addiw	a5,a5,-48
    4800102a:	fef42623          	sw	a5,-20(s0)
    4800102e:	fe842783          	lw	a5,-24(s0)
    48001032:	2785                	addiw	a5,a5,1
    48001034:	fef42423          	sw	a5,-24(s0)
    48001038:	fe842783          	lw	a5,-24(s0)
    4800103c:	fd843703          	ld	a4,-40(s0)
    48001040:	97ba                	add	a5,a5,a4
    48001042:	0007c783          	lbu	a5,0(a5)
    48001046:	fbdd                	bnez	a5,48000ffc <atoi+0x14>
    48001048:	fec42783          	lw	a5,-20(s0)
    4800104c:	853e                	mv	a0,a5
    4800104e:	7422                	ld	s0,40(sp)
    48001050:	6145                	addi	sp,sp,48
    48001052:	8082                	ret

0000000048001054 <atoh>:
    48001054:	7179                	addi	sp,sp,-48
    48001056:	f422                	sd	s0,40(sp)
    48001058:	1800                	addi	s0,sp,48
    4800105a:	fca43c23          	sd	a0,-40(s0)
    4800105e:	fe042623          	sw	zero,-20(s0)
    48001062:	fe042423          	sw	zero,-24(s0)
    48001066:	fe042223          	sw	zero,-28(s0)
    4800106a:	a239                	j	48001178 <atoh+0x124>
    4800106c:	fe446783          	lwu	a5,-28(s0)
    48001070:	fd843703          	ld	a4,-40(s0)
    48001074:	97ba                	add	a5,a5,a4
    48001076:	0007c783          	lbu	a5,0(a5)
    4800107a:	873e                	mv	a4,a5
    4800107c:	02f00793          	li	a5,47
    48001080:	02e7fc63          	bgeu	a5,a4,480010b8 <atoh+0x64>
    48001084:	fe446783          	lwu	a5,-28(s0)
    48001088:	fd843703          	ld	a4,-40(s0)
    4800108c:	97ba                	add	a5,a5,a4
    4800108e:	0007c783          	lbu	a5,0(a5)
    48001092:	873e                	mv	a4,a5
    48001094:	03900793          	li	a5,57
    48001098:	02e7e063          	bltu	a5,a4,480010b8 <atoh+0x64>
    4800109c:	fe446783          	lwu	a5,-28(s0)
    480010a0:	fd843703          	ld	a4,-40(s0)
    480010a4:	97ba                	add	a5,a5,a4
    480010a6:	0007c783          	lbu	a5,0(a5)
    480010aa:	2781                	sext.w	a5,a5
    480010ac:	fd07879b          	addiw	a5,a5,-48
    480010b0:	2781                	sext.w	a5,a5
    480010b2:	fef42423          	sw	a5,-24(s0)
    480010b6:	a861                	j	4800114e <atoh+0xfa>
    480010b8:	fe446783          	lwu	a5,-28(s0)
    480010bc:	fd843703          	ld	a4,-40(s0)
    480010c0:	97ba                	add	a5,a5,a4
    480010c2:	0007c783          	lbu	a5,0(a5)
    480010c6:	873e                	mv	a4,a5
    480010c8:	06000793          	li	a5,96
    480010cc:	02e7fc63          	bgeu	a5,a4,48001104 <atoh+0xb0>
    480010d0:	fe446783          	lwu	a5,-28(s0)
    480010d4:	fd843703          	ld	a4,-40(s0)
    480010d8:	97ba                	add	a5,a5,a4
    480010da:	0007c783          	lbu	a5,0(a5)
    480010de:	873e                	mv	a4,a5
    480010e0:	06600793          	li	a5,102
    480010e4:	02e7e063          	bltu	a5,a4,48001104 <atoh+0xb0>
    480010e8:	fe446783          	lwu	a5,-28(s0)
    480010ec:	fd843703          	ld	a4,-40(s0)
    480010f0:	97ba                	add	a5,a5,a4
    480010f2:	0007c783          	lbu	a5,0(a5)
    480010f6:	2781                	sext.w	a5,a5
    480010f8:	fa97879b          	addiw	a5,a5,-87
    480010fc:	2781                	sext.w	a5,a5
    480010fe:	fef42423          	sw	a5,-24(s0)
    48001102:	a0b1                	j	4800114e <atoh+0xfa>
    48001104:	fe446783          	lwu	a5,-28(s0)
    48001108:	fd843703          	ld	a4,-40(s0)
    4800110c:	97ba                	add	a5,a5,a4
    4800110e:	0007c783          	lbu	a5,0(a5)
    48001112:	873e                	mv	a4,a5
    48001114:	04000793          	li	a5,64
    48001118:	04e7fa63          	bgeu	a5,a4,4800116c <atoh+0x118>
    4800111c:	fe446783          	lwu	a5,-28(s0)
    48001120:	fd843703          	ld	a4,-40(s0)
    48001124:	97ba                	add	a5,a5,a4
    48001126:	0007c783          	lbu	a5,0(a5)
    4800112a:	873e                	mv	a4,a5
    4800112c:	04600793          	li	a5,70
    48001130:	02e7ee63          	bltu	a5,a4,4800116c <atoh+0x118>
    48001134:	fe446783          	lwu	a5,-28(s0)
    48001138:	fd843703          	ld	a4,-40(s0)
    4800113c:	97ba                	add	a5,a5,a4
    4800113e:	0007c783          	lbu	a5,0(a5)
    48001142:	2781                	sext.w	a5,a5
    48001144:	fc97879b          	addiw	a5,a5,-55
    48001148:	2781                	sext.w	a5,a5
    4800114a:	fef42423          	sw	a5,-24(s0)
    4800114e:	fec42783          	lw	a5,-20(s0)
    48001152:	0047979b          	slliw	a5,a5,0x4
    48001156:	fef42623          	sw	a5,-20(s0)
    4800115a:	fec42783          	lw	a5,-20(s0)
    4800115e:	873e                	mv	a4,a5
    48001160:	fe842783          	lw	a5,-24(s0)
    48001164:	8fd9                	or	a5,a5,a4
    48001166:	fef42623          	sw	a5,-20(s0)
    4800116a:	a011                	j	4800116e <atoh+0x11a>
    4800116c:	0001                	nop
    4800116e:	fe442783          	lw	a5,-28(s0)
    48001172:	2785                	addiw	a5,a5,1
    48001174:	fef42223          	sw	a5,-28(s0)
    48001178:	fe446783          	lwu	a5,-28(s0)
    4800117c:	fd843703          	ld	a4,-40(s0)
    48001180:	97ba                	add	a5,a5,a4
    48001182:	0007c783          	lbu	a5,0(a5)
    48001186:	ee0793e3          	bnez	a5,4800106c <atoh+0x18>
    4800118a:	fec42783          	lw	a5,-20(s0)
    4800118e:	853e                	mv	a0,a5
    48001190:	7422                	ld	s0,40(sp)
    48001192:	6145                	addi	sp,sp,48
    48001194:	8082                	ret

0000000048001196 <r32>:
    48001196:	7179                	addi	sp,sp,-48
    48001198:	f406                	sd	ra,40(sp)
    4800119a:	f022                	sd	s0,32(sp)
    4800119c:	1800                	addi	s0,sp,48
    4800119e:	87aa                	mv	a5,a0
    480011a0:	fcb43823          	sd	a1,-48(s0)
    480011a4:	fcf42e23          	sw	a5,-36(s0)
    480011a8:	fdc42783          	lw	a5,-36(s0)
    480011ac:	0007871b          	sext.w	a4,a5
    480011b0:	4785                	li	a5,1
    480011b2:	00e7ce63          	blt	a5,a4,480011ce <r32+0x38>
    480011b6:	fd043783          	ld	a5,-48(s0)
    480011ba:	639c                	ld	a5,0(a5)
    480011bc:	85be                	mv	a1,a5
    480011be:	00001517          	auipc	a0,0x1
    480011c2:	03250513          	addi	a0,a0,50 # 480021f0 <cmd_end_+0x1b0>
    480011c6:	11f000ef          	jal	ra,48001ae4 <printf>
    480011ca:	57fd                	li	a5,-1
    480011cc:	a82d                	j	48001206 <r32+0x70>
    480011ce:	fd043783          	ld	a5,-48(s0)
    480011d2:	07a1                	addi	a5,a5,8
    480011d4:	639c                	ld	a5,0(a5)
    480011d6:	853e                	mv	a0,a5
    480011d8:	e7dff0ef          	jal	ra,48001054 <atoh>
    480011dc:	87aa                	mv	a5,a0
    480011de:	fef42623          	sw	a5,-20(s0)
    480011e2:	fec46783          	lwu	a5,-20(s0)
    480011e6:	439c                	lw	a5,0(a5)
    480011e8:	fef42423          	sw	a5,-24(s0)
    480011ec:	fe842703          	lw	a4,-24(s0)
    480011f0:	fec42783          	lw	a5,-20(s0)
    480011f4:	863a                	mv	a2,a4
    480011f6:	85be                	mv	a1,a5
    480011f8:	00001517          	auipc	a0,0x1
    480011fc:	01850513          	addi	a0,a0,24 # 48002210 <cmd_end_+0x1d0>
    48001200:	0e5000ef          	jal	ra,48001ae4 <printf>
    48001204:	4781                	li	a5,0
    48001206:	853e                	mv	a0,a5
    48001208:	70a2                	ld	ra,40(sp)
    4800120a:	7402                	ld	s0,32(sp)
    4800120c:	6145                	addi	sp,sp,48
    4800120e:	8082                	ret

0000000048001210 <w32>:
    48001210:	7179                	addi	sp,sp,-48
    48001212:	f406                	sd	ra,40(sp)
    48001214:	f022                	sd	s0,32(sp)
    48001216:	1800                	addi	s0,sp,48
    48001218:	87aa                	mv	a5,a0
    4800121a:	fcb43823          	sd	a1,-48(s0)
    4800121e:	fcf42e23          	sw	a5,-36(s0)
    48001222:	fdc42783          	lw	a5,-36(s0)
    48001226:	0007871b          	sext.w	a4,a5
    4800122a:	4789                	li	a5,2
    4800122c:	00e7ce63          	blt	a5,a4,48001248 <w32+0x38>
    48001230:	fd043783          	ld	a5,-48(s0)
    48001234:	639c                	ld	a5,0(a5)
    48001236:	85be                	mv	a1,a5
    48001238:	00001517          	auipc	a0,0x1
    4800123c:	fe850513          	addi	a0,a0,-24 # 48002220 <cmd_end_+0x1e0>
    48001240:	0a5000ef          	jal	ra,48001ae4 <printf>
    48001244:	57fd                	li	a5,-1
    48001246:	a825                	j	4800127e <w32+0x6e>
    48001248:	fd043783          	ld	a5,-48(s0)
    4800124c:	07a1                	addi	a5,a5,8
    4800124e:	639c                	ld	a5,0(a5)
    48001250:	853e                	mv	a0,a5
    48001252:	e03ff0ef          	jal	ra,48001054 <atoh>
    48001256:	87aa                	mv	a5,a0
    48001258:	fef42623          	sw	a5,-20(s0)
    4800125c:	fd043783          	ld	a5,-48(s0)
    48001260:	07c1                	addi	a5,a5,16
    48001262:	639c                	ld	a5,0(a5)
    48001264:	853e                	mv	a0,a5
    48001266:	defff0ef          	jal	ra,48001054 <atoh>
    4800126a:	87aa                	mv	a5,a0
    4800126c:	fef42423          	sw	a5,-24(s0)
    48001270:	fec46783          	lwu	a5,-20(s0)
    48001274:	873e                	mv	a4,a5
    48001276:	fe842783          	lw	a5,-24(s0)
    4800127a:	c31c                	sw	a5,0(a4)
    4800127c:	4781                	li	a5,0
    4800127e:	853e                	mv	a0,a5
    48001280:	70a2                	ld	ra,40(sp)
    48001282:	7402                	ld	s0,32(sp)
    48001284:	6145                	addi	sp,sp,48
    48001286:	8082                	ret

0000000048001288 <read_mem>:
    48001288:	7179                	addi	sp,sp,-48
    4800128a:	f406                	sd	ra,40(sp)
    4800128c:	f022                	sd	s0,32(sp)
    4800128e:	1800                	addi	s0,sp,48
    48001290:	87aa                	mv	a5,a0
    48001292:	fcb43823          	sd	a1,-48(s0)
    48001296:	fcf42e23          	sw	a5,-36(s0)
    4800129a:	fdc42783          	lw	a5,-36(s0)
    4800129e:	0007871b          	sext.w	a4,a5
    480012a2:	4789                	li	a5,2
    480012a4:	00e7ce63          	blt	a5,a4,480012c0 <read_mem+0x38>
    480012a8:	fd043783          	ld	a5,-48(s0)
    480012ac:	639c                	ld	a5,0(a5)
    480012ae:	85be                	mv	a1,a5
    480012b0:	00001517          	auipc	a0,0x1
    480012b4:	fa050513          	addi	a0,a0,-96 # 48002250 <cmd_end_+0x210>
    480012b8:	02d000ef          	jal	ra,48001ae4 <printf>
    480012bc:	57fd                	li	a5,-1
    480012be:	a8bd                	j	4800133c <read_mem+0xb4>
    480012c0:	fd043783          	ld	a5,-48(s0)
    480012c4:	07a1                	addi	a5,a5,8
    480012c6:	639c                	ld	a5,0(a5)
    480012c8:	853e                	mv	a0,a5
    480012ca:	d8bff0ef          	jal	ra,48001054 <atoh>
    480012ce:	87aa                	mv	a5,a0
    480012d0:	fef42623          	sw	a5,-20(s0)
    480012d4:	fd043783          	ld	a5,-48(s0)
    480012d8:	07c1                	addi	a5,a5,16
    480012da:	639c                	ld	a5,0(a5)
    480012dc:	853e                	mv	a0,a5
    480012de:	d0bff0ef          	jal	ra,48000fe8 <atoi>
    480012e2:	87aa                	mv	a5,a0
    480012e4:	fef42223          	sw	a5,-28(s0)
    480012e8:	fe042423          	sw	zero,-24(s0)
    480012ec:	fe042023          	sw	zero,-32(s0)
    480012f0:	a825                	j	48001328 <read_mem+0xa0>
    480012f2:	fec46783          	lwu	a5,-20(s0)
    480012f6:	439c                	lw	a5,0(a5)
    480012f8:	fef42023          	sw	a5,-32(s0)
    480012fc:	fe042703          	lw	a4,-32(s0)
    48001300:	fec42783          	lw	a5,-20(s0)
    48001304:	863a                	mv	a2,a4
    48001306:	85be                	mv	a1,a5
    48001308:	00001517          	auipc	a0,0x1
    4800130c:	f0850513          	addi	a0,a0,-248 # 48002210 <cmd_end_+0x1d0>
    48001310:	7d4000ef          	jal	ra,48001ae4 <printf>
    48001314:	fec42783          	lw	a5,-20(s0)
    48001318:	2791                	addiw	a5,a5,4
    4800131a:	fef42623          	sw	a5,-20(s0)
    4800131e:	fe842783          	lw	a5,-24(s0)
    48001322:	2785                	addiw	a5,a5,1
    48001324:	fef42423          	sw	a5,-24(s0)
    48001328:	fe842783          	lw	a5,-24(s0)
    4800132c:	873e                	mv	a4,a5
    4800132e:	fe442783          	lw	a5,-28(s0)
    48001332:	2701                	sext.w	a4,a4
    48001334:	2781                	sext.w	a5,a5
    48001336:	faf76ee3          	bltu	a4,a5,480012f2 <read_mem+0x6a>
    4800133a:	4781                	li	a5,0
    4800133c:	853e                	mv	a0,a5
    4800133e:	70a2                	ld	ra,40(sp)
    48001340:	7402                	ld	s0,32(sp)
    48001342:	6145                	addi	sp,sp,48
    48001344:	8082                	ret

0000000048001346 <w32_bit>:
    48001346:	7179                	addi	sp,sp,-48
    48001348:	f406                	sd	ra,40(sp)
    4800134a:	f022                	sd	s0,32(sp)
    4800134c:	1800                	addi	s0,sp,48
    4800134e:	87aa                	mv	a5,a0
    48001350:	fcb43823          	sd	a1,-48(s0)
    48001354:	fcf42e23          	sw	a5,-36(s0)
    48001358:	fdc42783          	lw	a5,-36(s0)
    4800135c:	0007871b          	sext.w	a4,a5
    48001360:	478d                	li	a5,3
    48001362:	0ce7df63          	bge	a5,a4,48001440 <w32_bit+0xfa>
    48001366:	fd043783          	ld	a5,-48(s0)
    4800136a:	07a1                	addi	a5,a5,8
    4800136c:	639c                	ld	a5,0(a5)
    4800136e:	853e                	mv	a0,a5
    48001370:	ce5ff0ef          	jal	ra,48001054 <atoh>
    48001374:	87aa                	mv	a5,a0
    48001376:	fef42623          	sw	a5,-20(s0)
    4800137a:	fd043783          	ld	a5,-48(s0)
    4800137e:	07c1                	addi	a5,a5,16
    48001380:	639c                	ld	a5,0(a5)
    48001382:	853e                	mv	a0,a5
    48001384:	c65ff0ef          	jal	ra,48000fe8 <atoi>
    48001388:	87aa                	mv	a5,a0
    4800138a:	fef42423          	sw	a5,-24(s0)
    4800138e:	fd043783          	ld	a5,-48(s0)
    48001392:	07e1                	addi	a5,a5,24
    48001394:	639c                	ld	a5,0(a5)
    48001396:	853e                	mv	a0,a5
    48001398:	c51ff0ef          	jal	ra,48000fe8 <atoi>
    4800139c:	87aa                	mv	a5,a0
    4800139e:	fef42223          	sw	a5,-28(s0)
    480013a2:	fe842783          	lw	a5,-24(s0)
    480013a6:	0007871b          	sext.w	a4,a5
    480013aa:	47fd                	li	a5,31
    480013ac:	00e7f963          	bgeu	a5,a4,480013be <w32_bit+0x78>
    480013b0:	00001517          	auipc	a0,0x1
    480013b4:	ed850513          	addi	a0,a0,-296 # 48002288 <cmd_end_+0x248>
    480013b8:	72c000ef          	jal	ra,48001ae4 <printf>
    480013bc:	a059                	j	48001442 <w32_bit+0xfc>
    480013be:	fe442783          	lw	a5,-28(s0)
    480013c2:	2781                	sext.w	a5,a5
    480013c4:	cf99                	beqz	a5,480013e2 <w32_bit+0x9c>
    480013c6:	fe442783          	lw	a5,-28(s0)
    480013ca:	0007871b          	sext.w	a4,a5
    480013ce:	4785                	li	a5,1
    480013d0:	00f70963          	beq	a4,a5,480013e2 <w32_bit+0x9c>
    480013d4:	00001517          	auipc	a0,0x1
    480013d8:	edc50513          	addi	a0,a0,-292 # 480022b0 <cmd_end_+0x270>
    480013dc:	708000ef          	jal	ra,48001ae4 <printf>
    480013e0:	a08d                	j	48001442 <w32_bit+0xfc>
    480013e2:	fec46783          	lwu	a5,-20(s0)
    480013e6:	439c                	lw	a5,0(a5)
    480013e8:	fef42023          	sw	a5,-32(s0)
    480013ec:	fe842783          	lw	a5,-24(s0)
    480013f0:	fe442703          	lw	a4,-28(s0)
    480013f4:	00f717bb          	sllw	a5,a4,a5
    480013f8:	2781                	sext.w	a5,a5
    480013fa:	fe042703          	lw	a4,-32(s0)
    480013fe:	8fd9                	or	a5,a5,a4
    48001400:	fef42023          	sw	a5,-32(s0)
    48001404:	fe442783          	lw	a5,-28(s0)
    48001408:	2781                	sext.w	a5,a5
    4800140a:	0017b793          	seqz	a5,a5
    4800140e:	0ff7f793          	zext.b	a5,a5
    48001412:	2781                	sext.w	a5,a5
    48001414:	fe842703          	lw	a4,-24(s0)
    48001418:	00e797bb          	sllw	a5,a5,a4
    4800141c:	2781                	sext.w	a5,a5
    4800141e:	fff7c793          	not	a5,a5
    48001422:	2781                	sext.w	a5,a5
    48001424:	2781                	sext.w	a5,a5
    48001426:	fe042703          	lw	a4,-32(s0)
    4800142a:	8ff9                	and	a5,a5,a4
    4800142c:	fef42023          	sw	a5,-32(s0)
    48001430:	fec46783          	lwu	a5,-20(s0)
    48001434:	873e                	mv	a4,a5
    48001436:	fe042783          	lw	a5,-32(s0)
    4800143a:	c31c                	sw	a5,0(a4)
    4800143c:	4781                	li	a5,0
    4800143e:	a829                	j	48001458 <w32_bit+0x112>
    48001440:	0001                	nop
    48001442:	fd043783          	ld	a5,-48(s0)
    48001446:	639c                	ld	a5,0(a5)
    48001448:	85be                	mv	a1,a5
    4800144a:	00001517          	auipc	a0,0x1
    4800144e:	e8e50513          	addi	a0,a0,-370 # 480022d8 <cmd_end_+0x298>
    48001452:	692000ef          	jal	ra,48001ae4 <printf>
    48001456:	57fd                	li	a5,-1
    48001458:	853e                	mv	a0,a5
    4800145a:	70a2                	ld	ra,40(sp)
    4800145c:	7402                	ld	s0,32(sp)
    4800145e:	6145                	addi	sp,sp,48
    48001460:	8082                	ret

0000000048001462 <r32_bit>:
    48001462:	7179                	addi	sp,sp,-48
    48001464:	f406                	sd	ra,40(sp)
    48001466:	f022                	sd	s0,32(sp)
    48001468:	1800                	addi	s0,sp,48
    4800146a:	87aa                	mv	a5,a0
    4800146c:	fcb43823          	sd	a1,-48(s0)
    48001470:	fcf42e23          	sw	a5,-36(s0)
    48001474:	fdc42783          	lw	a5,-36(s0)
    48001478:	0007871b          	sext.w	a4,a5
    4800147c:	4789                	li	a5,2
    4800147e:	08e7d363          	bge	a5,a4,48001504 <r32_bit+0xa2>
    48001482:	fd043783          	ld	a5,-48(s0)
    48001486:	07a1                	addi	a5,a5,8
    48001488:	639c                	ld	a5,0(a5)
    4800148a:	853e                	mv	a0,a5
    4800148c:	bc9ff0ef          	jal	ra,48001054 <atoh>
    48001490:	87aa                	mv	a5,a0
    48001492:	fef42623          	sw	a5,-20(s0)
    48001496:	fd043783          	ld	a5,-48(s0)
    4800149a:	07c1                	addi	a5,a5,16
    4800149c:	639c                	ld	a5,0(a5)
    4800149e:	853e                	mv	a0,a5
    480014a0:	b49ff0ef          	jal	ra,48000fe8 <atoi>
    480014a4:	87aa                	mv	a5,a0
    480014a6:	fef42423          	sw	a5,-24(s0)
    480014aa:	fe842783          	lw	a5,-24(s0)
    480014ae:	0007871b          	sext.w	a4,a5
    480014b2:	47fd                	li	a5,31
    480014b4:	00e7f963          	bgeu	a5,a4,480014c6 <r32_bit+0x64>
    480014b8:	00001517          	auipc	a0,0x1
    480014bc:	dd050513          	addi	a0,a0,-560 # 48002288 <cmd_end_+0x248>
    480014c0:	624000ef          	jal	ra,48001ae4 <printf>
    480014c4:	a089                	j	48001506 <r32_bit+0xa4>
    480014c6:	fec46783          	lwu	a5,-20(s0)
    480014ca:	439c                	lw	a5,0(a5)
    480014cc:	fef42223          	sw	a5,-28(s0)
    480014d0:	fe842783          	lw	a5,-24(s0)
    480014d4:	fe442703          	lw	a4,-28(s0)
    480014d8:	00f757bb          	srlw	a5,a4,a5
    480014dc:	2781                	sext.w	a5,a5
    480014de:	8b85                	andi	a5,a5,1
    480014e0:	fef42023          	sw	a5,-32(s0)
    480014e4:	fe042683          	lw	a3,-32(s0)
    480014e8:	fec42703          	lw	a4,-20(s0)
    480014ec:	fe842783          	lw	a5,-24(s0)
    480014f0:	863a                	mv	a2,a4
    480014f2:	85be                	mv	a1,a5
    480014f4:	00001517          	auipc	a0,0x1
    480014f8:	e4450513          	addi	a0,a0,-444 # 48002338 <cmd_end_+0x2f8>
    480014fc:	5e8000ef          	jal	ra,48001ae4 <printf>
    48001500:	4781                	li	a5,0
    48001502:	a829                	j	4800151c <r32_bit+0xba>
    48001504:	0001                	nop
    48001506:	fd043783          	ld	a5,-48(s0)
    4800150a:	639c                	ld	a5,0(a5)
    4800150c:	85be                	mv	a1,a5
    4800150e:	00001517          	auipc	a0,0x1
    48001512:	e4250513          	addi	a0,a0,-446 # 48002350 <cmd_end_+0x310>
    48001516:	5ce000ef          	jal	ra,48001ae4 <printf>
    4800151a:	57fd                	li	a5,-1
    4800151c:	853e                	mv	a0,a5
    4800151e:	70a2                	ld	ra,40(sp)
    48001520:	7402                	ld	s0,32(sp)
    48001522:	6145                	addi	sp,sp,48
    48001524:	8082                	ret

0000000048001526 <memlog_init>:
    48001526:	1101                	addi	sp,sp,-32
    48001528:	ec06                	sd	ra,24(sp)
    4800152a:	e822                	sd	s0,16(sp)
    4800152c:	1000                	addi	s0,sp,32
    4800152e:	fea43423          	sd	a0,-24(s0)
    48001532:	87ae                	mv	a5,a1
    48001534:	8732                	mv	a4,a2
    48001536:	fef42223          	sw	a5,-28(s0)
    4800153a:	87ba                	mv	a5,a4
    4800153c:	fef42023          	sw	a5,-32(s0)
    48001540:	00001797          	auipc	a5,0x1
    48001544:	a0878793          	addi	a5,a5,-1528 # 48001f48 <selected_mode>
    48001548:	fe042703          	lw	a4,-32(s0)
    4800154c:	c398                	sw	a4,0(a5)
    4800154e:	00001797          	auipc	a5,0x1
    48001552:	9fa78793          	addi	a5,a5,-1542 # 48001f48 <selected_mode>
    48001556:	439c                	lw	a5,0(a5)
    48001558:	cbe1                	beqz	a5,48001628 <memlog_init+0x102>
    4800155a:	00001797          	auipc	a5,0x1
    4800155e:	9de78793          	addi	a5,a5,-1570 # 48001f38 <out_buf_rgn>
    48001562:	fe843703          	ld	a4,-24(s0)
    48001566:	e398                	sd	a4,0(a5)
    48001568:	fe442783          	lw	a5,-28(s0)
    4800156c:	0017d79b          	srliw	a5,a5,0x1
    48001570:	0007871b          	sext.w	a4,a5
    48001574:	00001797          	auipc	a5,0x1
    48001578:	9c478793          	addi	a5,a5,-1596 # 48001f38 <out_buf_rgn>
    4800157c:	c798                	sw	a4,8(a5)
    4800157e:	00001797          	auipc	a5,0x1
    48001582:	9ba78793          	addi	a5,a5,-1606 # 48001f38 <out_buf_rgn>
    48001586:	0007a623          	sw	zero,12(a5)
    4800158a:	fe442783          	lw	a5,-28(s0)
    4800158e:	0017d79b          	srliw	a5,a5,0x1
    48001592:	2781                	sext.w	a5,a5
    48001594:	1782                	slli	a5,a5,0x20
    48001596:	9381                	srli	a5,a5,0x20
    48001598:	fe843703          	ld	a4,-24(s0)
    4800159c:	973e                	add	a4,a4,a5
    4800159e:	00001797          	auipc	a5,0x1
    480015a2:	98a78793          	addi	a5,a5,-1654 # 48001f28 <inp_buf_rgn>
    480015a6:	e398                	sd	a4,0(a5)
    480015a8:	fe442783          	lw	a5,-28(s0)
    480015ac:	0017d79b          	srliw	a5,a5,0x1
    480015b0:	0007871b          	sext.w	a4,a5
    480015b4:	00001797          	auipc	a5,0x1
    480015b8:	97478793          	addi	a5,a5,-1676 # 48001f28 <inp_buf_rgn>
    480015bc:	c798                	sw	a4,8(a5)
    480015be:	00001797          	auipc	a5,0x1
    480015c2:	96a78793          	addi	a5,a5,-1686 # 48001f28 <inp_buf_rgn>
    480015c6:	0007a623          	sw	zero,12(a5)
    480015ca:	00001797          	auipc	a5,0x1
    480015ce:	97e78793          	addi	a5,a5,-1666 # 48001f48 <selected_mode>
    480015d2:	439c                	lw	a5,0(a5)
    480015d4:	8b85                	andi	a5,a5,1
    480015d6:	2781                	sext.w	a5,a5
    480015d8:	eb89                	bnez	a5,480015ea <memlog_init+0xc4>
    480015da:	00001797          	auipc	a5,0x1
    480015de:	95e78793          	addi	a5,a5,-1698 # 48001f38 <out_buf_rgn>
    480015e2:	fe442703          	lw	a4,-28(s0)
    480015e6:	c798                	sw	a4,8(a5)
    480015e8:	a03d                	j	48001616 <memlog_init+0xf0>
    480015ea:	00001797          	auipc	a5,0x1
    480015ee:	95e78793          	addi	a5,a5,-1698 # 48001f48 <selected_mode>
    480015f2:	439c                	lw	a5,0(a5)
    480015f4:	8b89                	andi	a5,a5,2
    480015f6:	2781                	sext.w	a5,a5
    480015f8:	ef99                	bnez	a5,48001616 <memlog_init+0xf0>
    480015fa:	00001797          	auipc	a5,0x1
    480015fe:	92e78793          	addi	a5,a5,-1746 # 48001f28 <inp_buf_rgn>
    48001602:	fe843703          	ld	a4,-24(s0)
    48001606:	e398                	sd	a4,0(a5)
    48001608:	00001797          	auipc	a5,0x1
    4800160c:	92078793          	addi	a5,a5,-1760 # 48001f28 <inp_buf_rgn>
    48001610:	fe442703          	lw	a4,-28(s0)
    48001614:	c798                	sw	a4,8(a5)
    48001616:	fe446783          	lwu	a5,-28(s0)
    4800161a:	863e                	mv	a2,a5
    4800161c:	4581                	li	a1,0
    4800161e:	fe843503          	ld	a0,-24(s0)
    48001622:	96fff0ef          	jal	ra,48000f90 <memset>
    48001626:	a011                	j	4800162a <memlog_init+0x104>
    48001628:	0001                	nop
    4800162a:	60e2                	ld	ra,24(sp)
    4800162c:	6442                	ld	s0,16(sp)
    4800162e:	6105                	addi	sp,sp,32
    48001630:	8082                	ret

0000000048001632 <memlog_getc>:
    48001632:	1101                	addi	sp,sp,-32
    48001634:	ec22                	sd	s0,24(sp)
    48001636:	1000                	addi	s0,sp,32
    48001638:	00001797          	auipc	a5,0x1
    4800163c:	91078793          	addi	a5,a5,-1776 # 48001f48 <selected_mode>
    48001640:	439c                	lw	a5,0(a5)
    48001642:	8b85                	andi	a5,a5,1
    48001644:	2781                	sext.w	a5,a5
    48001646:	e399                	bnez	a5,4800164c <memlog_getc+0x1a>
    48001648:	57fd                	li	a5,-1
    4800164a:	a065                	j	480016f2 <memlog_getc+0xc0>
    4800164c:	00001797          	auipc	a5,0x1
    48001650:	8dc78793          	addi	a5,a5,-1828 # 48001f28 <inp_buf_rgn>
    48001654:	639c                	ld	a5,0(a5)
    48001656:	00001717          	auipc	a4,0x1
    4800165a:	8d270713          	addi	a4,a4,-1838 # 48001f28 <inp_buf_rgn>
    4800165e:	4758                	lw	a4,12(a4)
    48001660:	97ba                	add	a5,a5,a4
    48001662:	0007c783          	lbu	a5,0(a5)
    48001666:	0ff7f793          	zext.b	a5,a5
    4800166a:	e399                	bnez	a5,48001670 <memlog_getc+0x3e>
    4800166c:	57fd                	li	a5,-1
    4800166e:	a051                	j	480016f2 <memlog_getc+0xc0>
    48001670:	00001797          	auipc	a5,0x1
    48001674:	8b878793          	addi	a5,a5,-1864 # 48001f28 <inp_buf_rgn>
    48001678:	639c                	ld	a5,0(a5)
    4800167a:	00001717          	auipc	a4,0x1
    4800167e:	8ae70713          	addi	a4,a4,-1874 # 48001f28 <inp_buf_rgn>
    48001682:	4758                	lw	a4,12(a4)
    48001684:	97ba                	add	a5,a5,a4
    48001686:	0007c783          	lbu	a5,0(a5)
    4800168a:	0ff7f793          	zext.b	a5,a5
    4800168e:	fef42623          	sw	a5,-20(s0)
    48001692:	00001797          	auipc	a5,0x1
    48001696:	89678793          	addi	a5,a5,-1898 # 48001f28 <inp_buf_rgn>
    4800169a:	639c                	ld	a5,0(a5)
    4800169c:	00001717          	auipc	a4,0x1
    480016a0:	88c70713          	addi	a4,a4,-1908 # 48001f28 <inp_buf_rgn>
    480016a4:	4758                	lw	a4,12(a4)
    480016a6:	97ba                	add	a5,a5,a4
    480016a8:	00078023          	sb	zero,0(a5)
    480016ac:	00001797          	auipc	a5,0x1
    480016b0:	87c78793          	addi	a5,a5,-1924 # 48001f28 <inp_buf_rgn>
    480016b4:	47dc                	lw	a5,12(a5)
    480016b6:	2785                	addiw	a5,a5,1
    480016b8:	0007871b          	sext.w	a4,a5
    480016bc:	00001797          	auipc	a5,0x1
    480016c0:	86c78793          	addi	a5,a5,-1940 # 48001f28 <inp_buf_rgn>
    480016c4:	c7d8                	sw	a4,12(a5)
    480016c6:	00001797          	auipc	a5,0x1
    480016ca:	86278793          	addi	a5,a5,-1950 # 48001f28 <inp_buf_rgn>
    480016ce:	47dc                	lw	a5,12(a5)
    480016d0:	0007871b          	sext.w	a4,a5
    480016d4:	00001797          	auipc	a5,0x1
    480016d8:	85478793          	addi	a5,a5,-1964 # 48001f28 <inp_buf_rgn>
    480016dc:	479c                	lw	a5,8(a5)
    480016de:	00f71863          	bne	a4,a5,480016ee <memlog_getc+0xbc>
    480016e2:	00001797          	auipc	a5,0x1
    480016e6:	84678793          	addi	a5,a5,-1978 # 48001f28 <inp_buf_rgn>
    480016ea:	0007a623          	sw	zero,12(a5)
    480016ee:	fec42783          	lw	a5,-20(s0)
    480016f2:	853e                	mv	a0,a5
    480016f4:	6462                	ld	s0,24(sp)
    480016f6:	6105                	addi	sp,sp,32
    480016f8:	8082                	ret

00000000480016fa <memlog_putc>:
    480016fa:	1101                	addi	sp,sp,-32
    480016fc:	ec22                	sd	s0,24(sp)
    480016fe:	1000                	addi	s0,sp,32
    48001700:	87aa                	mv	a5,a0
    48001702:	fef407a3          	sb	a5,-17(s0)
    48001706:	00001797          	auipc	a5,0x1
    4800170a:	84278793          	addi	a5,a5,-1982 # 48001f48 <selected_mode>
    4800170e:	439c                	lw	a5,0(a5)
    48001710:	8b89                	andi	a5,a5,2
    48001712:	2781                	sext.w	a5,a5
    48001714:	c7bd                	beqz	a5,48001782 <memlog_putc+0x88>
    48001716:	fef44783          	lbu	a5,-17(s0)
    4800171a:	0ff7f793          	zext.b	a5,a5
    4800171e:	c3b5                	beqz	a5,48001782 <memlog_putc+0x88>
    48001720:	00001797          	auipc	a5,0x1
    48001724:	81878793          	addi	a5,a5,-2024 # 48001f38 <out_buf_rgn>
    48001728:	639c                	ld	a5,0(a5)
    4800172a:	00001717          	auipc	a4,0x1
    4800172e:	80e70713          	addi	a4,a4,-2034 # 48001f38 <out_buf_rgn>
    48001732:	4758                	lw	a4,12(a4)
    48001734:	97ba                	add	a5,a5,a4
    48001736:	fef44703          	lbu	a4,-17(s0)
    4800173a:	00e78023          	sb	a4,0(a5)
    4800173e:	00000797          	auipc	a5,0x0
    48001742:	7fa78793          	addi	a5,a5,2042 # 48001f38 <out_buf_rgn>
    48001746:	47dc                	lw	a5,12(a5)
    48001748:	2785                	addiw	a5,a5,1
    4800174a:	0007871b          	sext.w	a4,a5
    4800174e:	00000797          	auipc	a5,0x0
    48001752:	7ea78793          	addi	a5,a5,2026 # 48001f38 <out_buf_rgn>
    48001756:	c7d8                	sw	a4,12(a5)
    48001758:	00000797          	auipc	a5,0x0
    4800175c:	7e078793          	addi	a5,a5,2016 # 48001f38 <out_buf_rgn>
    48001760:	47dc                	lw	a5,12(a5)
    48001762:	0007871b          	sext.w	a4,a5
    48001766:	00000797          	auipc	a5,0x0
    4800176a:	7d278793          	addi	a5,a5,2002 # 48001f38 <out_buf_rgn>
    4800176e:	479c                	lw	a5,8(a5)
    48001770:	00f71a63          	bne	a4,a5,48001784 <memlog_putc+0x8a>
    48001774:	00000797          	auipc	a5,0x0
    48001778:	7c478793          	addi	a5,a5,1988 # 48001f38 <out_buf_rgn>
    4800177c:	0007a623          	sw	zero,12(a5)
    48001780:	a011                	j	48001784 <memlog_putc+0x8a>
    48001782:	0001                	nop
    48001784:	6462                	ld	s0,24(sp)
    48001786:	6105                	addi	sp,sp,32
    48001788:	8082                	ret

000000004800178a <outstr>:
    4800178a:	1101                	addi	sp,sp,-32
    4800178c:	ec06                	sd	ra,24(sp)
    4800178e:	e822                	sd	s0,16(sp)
    48001790:	1000                	addi	s0,sp,32
    48001792:	fea43423          	sd	a0,-24(s0)
    48001796:	a00d                	j	480017b8 <outstr+0x2e>
    48001798:	00000797          	auipc	a5,0x0
    4800179c:	7107b783          	ld	a5,1808(a5) # 48001ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    480017a0:	639c                	ld	a5,0(a5)
    480017a2:	fe843703          	ld	a4,-24(s0)
    480017a6:	00074703          	lbu	a4,0(a4)
    480017aa:	853a                	mv	a0,a4
    480017ac:	9782                	jalr	a5
    480017ae:	fe843783          	ld	a5,-24(s0)
    480017b2:	0785                	addi	a5,a5,1
    480017b4:	fef43423          	sd	a5,-24(s0)
    480017b8:	fe843783          	ld	a5,-24(s0)
    480017bc:	0007c783          	lbu	a5,0(a5)
    480017c0:	ffe1                	bnez	a5,48001798 <outstr+0xe>
    480017c2:	0001                	nop
    480017c4:	0001                	nop
    480017c6:	60e2                	ld	ra,24(sp)
    480017c8:	6442                	ld	s0,16(sp)
    480017ca:	6105                	addi	sp,sp,32
    480017cc:	8082                	ret

00000000480017ce <printf_numbers>:
    480017ce:	711d                	addi	sp,sp,-96
    480017d0:	ec86                	sd	ra,88(sp)
    480017d2:	e8a2                	sd	s0,80(sp)
    480017d4:	1080                	addi	s0,sp,96
    480017d6:	87aa                	mv	a5,a0
    480017d8:	fab43023          	sd	a1,-96(s0)
    480017dc:	8732                	mv	a4,a2
    480017de:	faf407a3          	sb	a5,-81(s0)
    480017e2:	87ba                	mv	a5,a4
    480017e4:	faf42423          	sw	a5,-88(s0)
    480017e8:	fe042623          	sw	zero,-20(s0)
    480017ec:	faf44783          	lbu	a5,-81(s0)
    480017f0:	2781                	sext.w	a5,a5
    480017f2:	86be                	mv	a3,a5
    480017f4:	07800713          	li	a4,120
    480017f8:	14e68163          	beq	a3,a4,4800193a <printf_numbers+0x16c>
    480017fc:	86be                	mv	a3,a5
    480017fe:	07800713          	li	a4,120
    48001802:	2cd74363          	blt	a4,a3,48001ac8 <printf_numbers+0x2fa>
    48001806:	86be                	mv	a3,a5
    48001808:	07500713          	li	a4,117
    4800180c:	12e68763          	beq	a3,a4,4800193a <printf_numbers+0x16c>
    48001810:	86be                	mv	a3,a5
    48001812:	07500713          	li	a4,117
    48001816:	2ad74963          	blt	a4,a3,48001ac8 <printf_numbers+0x2fa>
    4800181a:	86be                	mv	a3,a5
    4800181c:	05800713          	li	a4,88
    48001820:	10e68d63          	beq	a3,a4,4800193a <printf_numbers+0x16c>
    48001824:	873e                	mv	a4,a5
    48001826:	06400793          	li	a5,100
    4800182a:	28f71f63          	bne	a4,a5,48001ac8 <printf_numbers+0x2fa>
    4800182e:	fe043023          	sd	zero,-32(s0)
    48001832:	fa842783          	lw	a5,-88(s0)
    48001836:	2781                	sext.w	a5,a5
    48001838:	ef89                	bnez	a5,48001852 <printf_numbers+0x84>
    4800183a:	fa043783          	ld	a5,-96(s0)
    4800183e:	639c                	ld	a5,0(a5)
    48001840:	00878693          	addi	a3,a5,8
    48001844:	fa043703          	ld	a4,-96(s0)
    48001848:	e314                	sd	a3,0(a4)
    4800184a:	439c                	lw	a5,0(a5)
    4800184c:	fef43023          	sd	a5,-32(s0)
    48001850:	a889                	j	480018a2 <printf_numbers+0xd4>
    48001852:	fa842783          	lw	a5,-88(s0)
    48001856:	0007871b          	sext.w	a4,a5
    4800185a:	4785                	li	a5,1
    4800185c:	00f71e63          	bne	a4,a5,48001878 <printf_numbers+0xaa>
    48001860:	fa043783          	ld	a5,-96(s0)
    48001864:	639c                	ld	a5,0(a5)
    48001866:	00878693          	addi	a3,a5,8
    4800186a:	fa043703          	ld	a4,-96(s0)
    4800186e:	e314                	sd	a3,0(a4)
    48001870:	639c                	ld	a5,0(a5)
    48001872:	fef43023          	sd	a5,-32(s0)
    48001876:	a035                	j	480018a2 <printf_numbers+0xd4>
    48001878:	fa842783          	lw	a5,-88(s0)
    4800187c:	0007871b          	sext.w	a4,a5
    48001880:	4789                	li	a5,2
    48001882:	00f71e63          	bne	a4,a5,4800189e <printf_numbers+0xd0>
    48001886:	fa043783          	ld	a5,-96(s0)
    4800188a:	639c                	ld	a5,0(a5)
    4800188c:	00878693          	addi	a3,a5,8
    48001890:	fa043703          	ld	a4,-96(s0)
    48001894:	e314                	sd	a3,0(a4)
    48001896:	639c                	ld	a5,0(a5)
    48001898:	fef43023          	sd	a5,-32(s0)
    4800189c:	a019                	j	480018a2 <printf_numbers+0xd4>
    4800189e:	4781                	li	a5,0
    480018a0:	ac2d                	j	48001ada <printf_numbers+0x30c>
    480018a2:	fe043783          	ld	a5,-32(s0)
    480018a6:	0207d063          	bgez	a5,480018c6 <printf_numbers+0xf8>
    480018aa:	00000797          	auipc	a5,0x0
    480018ae:	5fe7b783          	ld	a5,1534(a5) # 48001ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    480018b2:	639c                	ld	a5,0(a5)
    480018b4:	02d00513          	li	a0,45
    480018b8:	9782                	jalr	a5
    480018ba:	fe043783          	ld	a5,-32(s0)
    480018be:	40f007b3          	neg	a5,a5
    480018c2:	fef43023          	sd	a5,-32(s0)
    480018c6:	fe043703          	ld	a4,-32(s0)
    480018ca:	47a9                	li	a5,10
    480018cc:	02f76733          	rem	a4,a4,a5
    480018d0:	fec42783          	lw	a5,-20(s0)
    480018d4:	0017869b          	addiw	a3,a5,1
    480018d8:	fed42623          	sw	a3,-20(s0)
    480018dc:	00000697          	auipc	a3,0x0
    480018e0:	57c68693          	addi	a3,a3,1404 # 48001e58 <hextable>
    480018e4:	9736                	add	a4,a4,a3
    480018e6:	00074703          	lbu	a4,0(a4)
    480018ea:	17c1                	addi	a5,a5,-16
    480018ec:	97a2                	add	a5,a5,s0
    480018ee:	fce78423          	sb	a4,-56(a5)
    480018f2:	fe043703          	ld	a4,-32(s0)
    480018f6:	47a9                	li	a5,10
    480018f8:	02f747b3          	div	a5,a4,a5
    480018fc:	fef43023          	sd	a5,-32(s0)
    48001900:	fe043783          	ld	a5,-32(s0)
    48001904:	fcf041e3          	bgtz	a5,480018c6 <printf_numbers+0xf8>
    48001908:	a01d                	j	4800192e <printf_numbers+0x160>
    4800190a:	00000797          	auipc	a5,0x0
    4800190e:	59e7b783          	ld	a5,1438(a5) # 48001ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    48001912:	639c                	ld	a5,0(a5)
    48001914:	fec42703          	lw	a4,-20(s0)
    48001918:	377d                	addiw	a4,a4,-1
    4800191a:	fee42623          	sw	a4,-20(s0)
    4800191e:	fec42703          	lw	a4,-20(s0)
    48001922:	1741                	addi	a4,a4,-16
    48001924:	9722                	add	a4,a4,s0
    48001926:	fc874703          	lbu	a4,-56(a4)
    4800192a:	853a                	mv	a0,a4
    4800192c:	9782                	jalr	a5
    4800192e:	fec42783          	lw	a5,-20(s0)
    48001932:	2781                	sext.w	a5,a5
    48001934:	fcf04be3          	bgtz	a5,4800190a <printf_numbers+0x13c>
    48001938:	a245                	j	48001ad8 <printf_numbers+0x30a>
    4800193a:	fc043c23          	sd	zero,-40(s0)
    4800193e:	fa842783          	lw	a5,-88(s0)
    48001942:	2781                	sext.w	a5,a5
    48001944:	ef99                	bnez	a5,48001962 <printf_numbers+0x194>
    48001946:	fa043783          	ld	a5,-96(s0)
    4800194a:	639c                	ld	a5,0(a5)
    4800194c:	00878693          	addi	a3,a5,8
    48001950:	fa043703          	ld	a4,-96(s0)
    48001954:	e314                	sd	a3,0(a4)
    48001956:	439c                	lw	a5,0(a5)
    48001958:	1782                	slli	a5,a5,0x20
    4800195a:	9381                	srli	a5,a5,0x20
    4800195c:	fcf43c23          	sd	a5,-40(s0)
    48001960:	a889                	j	480019b2 <printf_numbers+0x1e4>
    48001962:	fa842783          	lw	a5,-88(s0)
    48001966:	0007871b          	sext.w	a4,a5
    4800196a:	4785                	li	a5,1
    4800196c:	00f71e63          	bne	a4,a5,48001988 <printf_numbers+0x1ba>
    48001970:	fa043783          	ld	a5,-96(s0)
    48001974:	639c                	ld	a5,0(a5)
    48001976:	00878693          	addi	a3,a5,8
    4800197a:	fa043703          	ld	a4,-96(s0)
    4800197e:	e314                	sd	a3,0(a4)
    48001980:	639c                	ld	a5,0(a5)
    48001982:	fcf43c23          	sd	a5,-40(s0)
    48001986:	a035                	j	480019b2 <printf_numbers+0x1e4>
    48001988:	fa842783          	lw	a5,-88(s0)
    4800198c:	0007871b          	sext.w	a4,a5
    48001990:	4789                	li	a5,2
    48001992:	00f71e63          	bne	a4,a5,480019ae <printf_numbers+0x1e0>
    48001996:	fa043783          	ld	a5,-96(s0)
    4800199a:	639c                	ld	a5,0(a5)
    4800199c:	00878693          	addi	a3,a5,8
    480019a0:	fa043703          	ld	a4,-96(s0)
    480019a4:	e314                	sd	a3,0(a4)
    480019a6:	639c                	ld	a5,0(a5)
    480019a8:	fcf43c23          	sd	a5,-40(s0)
    480019ac:	a019                	j	480019b2 <printf_numbers+0x1e4>
    480019ae:	4781                	li	a5,0
    480019b0:	a22d                	j	48001ada <printf_numbers+0x30c>
    480019b2:	faf44783          	lbu	a5,-81(s0)
    480019b6:	0ff7f713          	zext.b	a4,a5
    480019ba:	07500793          	li	a5,117
    480019be:	06f71b63          	bne	a4,a5,48001a34 <printf_numbers+0x266>
    480019c2:	fd843703          	ld	a4,-40(s0)
    480019c6:	47a9                	li	a5,10
    480019c8:	02f77733          	remu	a4,a4,a5
    480019cc:	fec42783          	lw	a5,-20(s0)
    480019d0:	0017869b          	addiw	a3,a5,1
    480019d4:	fed42623          	sw	a3,-20(s0)
    480019d8:	00000697          	auipc	a3,0x0
    480019dc:	48068693          	addi	a3,a3,1152 # 48001e58 <hextable>
    480019e0:	9736                	add	a4,a4,a3
    480019e2:	00074703          	lbu	a4,0(a4)
    480019e6:	17c1                	addi	a5,a5,-16
    480019e8:	97a2                	add	a5,a5,s0
    480019ea:	fce78423          	sb	a4,-56(a5)
    480019ee:	fd843703          	ld	a4,-40(s0)
    480019f2:	47a9                	li	a5,10
    480019f4:	02f757b3          	divu	a5,a4,a5
    480019f8:	fcf43c23          	sd	a5,-40(s0)
    480019fc:	fd843783          	ld	a5,-40(s0)
    48001a00:	f3e9                	bnez	a5,480019c2 <printf_numbers+0x1f4>
    48001a02:	a01d                	j	48001a28 <printf_numbers+0x25a>
    48001a04:	00000797          	auipc	a5,0x0
    48001a08:	4a47b783          	ld	a5,1188(a5) # 48001ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    48001a0c:	639c                	ld	a5,0(a5)
    48001a0e:	fec42703          	lw	a4,-20(s0)
    48001a12:	377d                	addiw	a4,a4,-1
    48001a14:	fee42623          	sw	a4,-20(s0)
    48001a18:	fec42703          	lw	a4,-20(s0)
    48001a1c:	1741                	addi	a4,a4,-16
    48001a1e:	9722                	add	a4,a4,s0
    48001a20:	fc874703          	lbu	a4,-56(a4)
    48001a24:	853a                	mv	a0,a4
    48001a26:	9782                	jalr	a5
    48001a28:	fec42783          	lw	a5,-20(s0)
    48001a2c:	2781                	sext.w	a5,a5
    48001a2e:	fcf04be3          	bgtz	a5,48001a04 <printf_numbers+0x236>
    48001a32:	a05d                	j	48001ad8 <printf_numbers+0x30a>
    48001a34:	fd843783          	ld	a5,-40(s0)
    48001a38:	ef99                	bnez	a5,48001a56 <printf_numbers+0x288>
    48001a3a:	00000797          	auipc	a5,0x0
    48001a3e:	46e7b783          	ld	a5,1134(a5) # 48001ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    48001a42:	639c                	ld	a5,0(a5)
    48001a44:	00000717          	auipc	a4,0x0
    48001a48:	41470713          	addi	a4,a4,1044 # 48001e58 <hextable>
    48001a4c:	00074703          	lbu	a4,0(a4)
    48001a50:	853a                	mv	a0,a4
    48001a52:	9782                	jalr	a5
    48001a54:	a051                	j	48001ad8 <printf_numbers+0x30a>
    48001a56:	03c00793          	li	a5,60
    48001a5a:	fcf42a23          	sw	a5,-44(s0)
    48001a5e:	fc0409a3          	sb	zero,-45(s0)
    48001a62:	a8a9                	j	48001abc <printf_numbers+0x2ee>
    48001a64:	fd442783          	lw	a5,-44(s0)
    48001a68:	873e                	mv	a4,a5
    48001a6a:	fd843783          	ld	a5,-40(s0)
    48001a6e:	00e7d7b3          	srl	a5,a5,a4
    48001a72:	2781                	sext.w	a5,a5
    48001a74:	8bbd                	andi	a5,a5,15
    48001a76:	fcf42623          	sw	a5,-52(s0)
    48001a7a:	fcc42783          	lw	a5,-52(s0)
    48001a7e:	2781                	sext.w	a5,a5
    48001a80:	e791                	bnez	a5,48001a8c <printf_numbers+0x2be>
    48001a82:	fd344783          	lbu	a5,-45(s0)
    48001a86:	0ff7f793          	zext.b	a5,a5
    48001a8a:	c785                	beqz	a5,48001ab2 <printf_numbers+0x2e4>
    48001a8c:	4785                	li	a5,1
    48001a8e:	fcf409a3          	sb	a5,-45(s0)
    48001a92:	00000797          	auipc	a5,0x0
    48001a96:	4167b783          	ld	a5,1046(a5) # 48001ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    48001a9a:	639c                	ld	a5,0(a5)
    48001a9c:	00000697          	auipc	a3,0x0
    48001aa0:	3bc68693          	addi	a3,a3,956 # 48001e58 <hextable>
    48001aa4:	fcc42703          	lw	a4,-52(s0)
    48001aa8:	9736                	add	a4,a4,a3
    48001aaa:	00074703          	lbu	a4,0(a4)
    48001aae:	853a                	mv	a0,a4
    48001ab0:	9782                	jalr	a5
    48001ab2:	fd442783          	lw	a5,-44(s0)
    48001ab6:	37f1                	addiw	a5,a5,-4
    48001ab8:	fcf42a23          	sw	a5,-44(s0)
    48001abc:	fd442783          	lw	a5,-44(s0)
    48001ac0:	2781                	sext.w	a5,a5
    48001ac2:	fa07d1e3          	bgez	a5,48001a64 <printf_numbers+0x296>
    48001ac6:	a809                	j	48001ad8 <printf_numbers+0x30a>
    48001ac8:	00001517          	auipc	a0,0x1
    48001acc:	9b050513          	addi	a0,a0,-1616 # 48002478 <cmd_end_+0x438>
    48001ad0:	cbbff0ef          	jal	ra,4800178a <outstr>
    48001ad4:	4781                	li	a5,0
    48001ad6:	a011                	j	48001ada <printf_numbers+0x30c>
    48001ad8:	4785                	li	a5,1
    48001ada:	853e                	mv	a0,a5
    48001adc:	60e6                	ld	ra,88(sp)
    48001ade:	6446                	ld	s0,80(sp)
    48001ae0:	6125                	addi	sp,sp,96
    48001ae2:	8082                	ret

0000000048001ae4 <printf>:
    48001ae4:	7159                	addi	sp,sp,-112
    48001ae6:	f406                	sd	ra,40(sp)
    48001ae8:	f022                	sd	s0,32(sp)
    48001aea:	1800                	addi	s0,sp,48
    48001aec:	fca43c23          	sd	a0,-40(s0)
    48001af0:	e40c                	sd	a1,8(s0)
    48001af2:	e810                	sd	a2,16(s0)
    48001af4:	ec14                	sd	a3,24(s0)
    48001af6:	f018                	sd	a4,32(s0)
    48001af8:	f41c                	sd	a5,40(s0)
    48001afa:	03043823          	sd	a6,48(s0)
    48001afe:	03143c23          	sd	a7,56(s0)
    48001b02:	fe042623          	sw	zero,-20(s0)
    48001b06:	04040793          	addi	a5,s0,64
    48001b0a:	fcf43823          	sd	a5,-48(s0)
    48001b0e:	fd043783          	ld	a5,-48(s0)
    48001b12:	fc878793          	addi	a5,a5,-56
    48001b16:	fef43023          	sd	a5,-32(s0)
    48001b1a:	a42d                	j	48001d44 <printf+0x260>
    48001b1c:	fec42783          	lw	a5,-20(s0)
    48001b20:	2781                	sext.w	a5,a5
    48001b22:	cb89                	beqz	a5,48001b34 <printf+0x50>
    48001b24:	fec42783          	lw	a5,-20(s0)
    48001b28:	0007871b          	sext.w	a4,a5
    48001b2c:	4785                	li	a5,1
    48001b2e:	04f70b63          	beq	a4,a5,48001b84 <printf+0xa0>
    48001b32:	ac09                	j	48001d44 <printf+0x260>
    48001b34:	fd843783          	ld	a5,-40(s0)
    48001b38:	0007c783          	lbu	a5,0(a5)
    48001b3c:	873e                	mv	a4,a5
    48001b3e:	02500793          	li	a5,37
    48001b42:	00f71b63          	bne	a4,a5,48001b58 <printf+0x74>
    48001b46:	4785                	li	a5,1
    48001b48:	fef42623          	sw	a5,-20(s0)
    48001b4c:	fd843783          	ld	a5,-40(s0)
    48001b50:	0785                	addi	a5,a5,1
    48001b52:	fcf43c23          	sd	a5,-40(s0)
    48001b56:	a2fd                	j	48001d44 <printf+0x260>
    48001b58:	00000797          	auipc	a5,0x0
    48001b5c:	3507b783          	ld	a5,848(a5) # 48001ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    48001b60:	639c                	ld	a5,0(a5)
    48001b62:	fd843703          	ld	a4,-40(s0)
    48001b66:	00074703          	lbu	a4,0(a4)
    48001b6a:	853a                	mv	a0,a4
    48001b6c:	9782                	jalr	a5
    48001b6e:	fd843783          	ld	a5,-40(s0)
    48001b72:	0785                	addi	a5,a5,1
    48001b74:	fcf43c23          	sd	a5,-40(s0)
    48001b78:	a2f1                	j	48001d44 <printf+0x260>
    48001b7a:	fd843783          	ld	a5,-40(s0)
    48001b7e:	0785                	addi	a5,a5,1
    48001b80:	fcf43c23          	sd	a5,-40(s0)
    48001b84:	fd843783          	ld	a5,-40(s0)
    48001b88:	0007c783          	lbu	a5,0(a5)
    48001b8c:	cf85                	beqz	a5,48001bc4 <printf+0xe0>
    48001b8e:	fd843783          	ld	a5,-40(s0)
    48001b92:	0007c783          	lbu	a5,0(a5)
    48001b96:	873e                	mv	a4,a5
    48001b98:	02f00793          	li	a5,47
    48001b9c:	00e7fb63          	bgeu	a5,a4,48001bb2 <printf+0xce>
    48001ba0:	fd843783          	ld	a5,-40(s0)
    48001ba4:	0007c783          	lbu	a5,0(a5)
    48001ba8:	873e                	mv	a4,a5
    48001baa:	03900793          	li	a5,57
    48001bae:	fce7f6e3          	bgeu	a5,a4,48001b7a <printf+0x96>
    48001bb2:	fd843783          	ld	a5,-40(s0)
    48001bb6:	0007c783          	lbu	a5,0(a5)
    48001bba:	873e                	mv	a4,a5
    48001bbc:	02d00793          	li	a5,45
    48001bc0:	faf70de3          	beq	a4,a5,48001b7a <printf+0x96>
    48001bc4:	fd843783          	ld	a5,-40(s0)
    48001bc8:	0007c783          	lbu	a5,0(a5)
    48001bcc:	2781                	sext.w	a5,a5
    48001bce:	86be                	mv	a3,a5
    48001bd0:	07300713          	li	a4,115
    48001bd4:	0ae68b63          	beq	a3,a4,48001c8a <printf+0x1a6>
    48001bd8:	86be                	mv	a3,a5
    48001bda:	07300713          	li	a4,115
    48001bde:	12d74c63          	blt	a4,a3,48001d16 <printf+0x232>
    48001be2:	86be                	mv	a3,a5
    48001be4:	06c00713          	li	a4,108
    48001be8:	0ce68363          	beq	a3,a4,48001cae <printf+0x1ca>
    48001bec:	86be                	mv	a3,a5
    48001bee:	06c00713          	li	a4,108
    48001bf2:	12d74263          	blt	a4,a3,48001d16 <printf+0x232>
    48001bf6:	86be                	mv	a3,a5
    48001bf8:	06300713          	li	a4,99
    48001bfc:	04e68f63          	beq	a3,a4,48001c5a <printf+0x176>
    48001c00:	86be                	mv	a3,a5
    48001c02:	06300713          	li	a4,99
    48001c06:	10d74863          	blt	a4,a3,48001d16 <printf+0x232>
    48001c0a:	86be                	mv	a3,a5
    48001c0c:	05300713          	li	a4,83
    48001c10:	06e68d63          	beq	a3,a4,48001c8a <printf+0x1a6>
    48001c14:	86be                	mv	a3,a5
    48001c16:	05300713          	li	a4,83
    48001c1a:	0ed74e63          	blt	a4,a3,48001d16 <printf+0x232>
    48001c1e:	86be                	mv	a3,a5
    48001c20:	02500713          	li	a4,37
    48001c24:	00e68863          	beq	a3,a4,48001c34 <printf+0x150>
    48001c28:	873e                	mv	a4,a5
    48001c2a:	04300793          	li	a5,67
    48001c2e:	02f70663          	beq	a4,a5,48001c5a <printf+0x176>
    48001c32:	a0d5                	j	48001d16 <printf+0x232>
    48001c34:	00000797          	auipc	a5,0x0
    48001c38:	2747b783          	ld	a5,628(a5) # 48001ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    48001c3c:	639c                	ld	a5,0(a5)
    48001c3e:	fd843703          	ld	a4,-40(s0)
    48001c42:	00074703          	lbu	a4,0(a4)
    48001c46:	853a                	mv	a0,a4
    48001c48:	9782                	jalr	a5
    48001c4a:	fd843783          	ld	a5,-40(s0)
    48001c4e:	0785                	addi	a5,a5,1
    48001c50:	fcf43c23          	sd	a5,-40(s0)
    48001c54:	fe042623          	sw	zero,-20(s0)
    48001c58:	a0f5                	j	48001d44 <printf+0x260>
    48001c5a:	00000797          	auipc	a5,0x0
    48001c5e:	24e7b783          	ld	a5,590(a5) # 48001ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    48001c62:	6398                	ld	a4,0(a5)
    48001c64:	fe043783          	ld	a5,-32(s0)
    48001c68:	00878693          	addi	a3,a5,8
    48001c6c:	fed43023          	sd	a3,-32(s0)
    48001c70:	439c                	lw	a5,0(a5)
    48001c72:	0ff7f793          	zext.b	a5,a5
    48001c76:	853e                	mv	a0,a5
    48001c78:	9702                	jalr	a4
    48001c7a:	fd843783          	ld	a5,-40(s0)
    48001c7e:	0785                	addi	a5,a5,1
    48001c80:	fcf43c23          	sd	a5,-40(s0)
    48001c84:	fe042623          	sw	zero,-20(s0)
    48001c88:	a875                	j	48001d44 <printf+0x260>
    48001c8a:	fe043783          	ld	a5,-32(s0)
    48001c8e:	00878713          	addi	a4,a5,8
    48001c92:	fee43023          	sd	a4,-32(s0)
    48001c96:	639c                	ld	a5,0(a5)
    48001c98:	853e                	mv	a0,a5
    48001c9a:	af1ff0ef          	jal	ra,4800178a <outstr>
    48001c9e:	fd843783          	ld	a5,-40(s0)
    48001ca2:	0785                	addi	a5,a5,1
    48001ca4:	fcf43c23          	sd	a5,-40(s0)
    48001ca8:	fe042623          	sw	zero,-20(s0)
    48001cac:	a861                	j	48001d44 <printf+0x260>
    48001cae:	4785                	li	a5,1
    48001cb0:	fef42423          	sw	a5,-24(s0)
    48001cb4:	fd843783          	ld	a5,-40(s0)
    48001cb8:	0785                	addi	a5,a5,1
    48001cba:	fcf43c23          	sd	a5,-40(s0)
    48001cbe:	fd843783          	ld	a5,-40(s0)
    48001cc2:	0007c783          	lbu	a5,0(a5)
    48001cc6:	873e                	mv	a4,a5
    48001cc8:	06c00793          	li	a5,108
    48001ccc:	00f71c63          	bne	a4,a5,48001ce4 <printf+0x200>
    48001cd0:	fe842783          	lw	a5,-24(s0)
    48001cd4:	2785                	addiw	a5,a5,1
    48001cd6:	fef42423          	sw	a5,-24(s0)
    48001cda:	fd843783          	ld	a5,-40(s0)
    48001cde:	0785                	addi	a5,a5,1
    48001ce0:	fcf43c23          	sd	a5,-40(s0)
    48001ce4:	fd843783          	ld	a5,-40(s0)
    48001ce8:	0007c783          	lbu	a5,0(a5)
    48001cec:	fe842683          	lw	a3,-24(s0)
    48001cf0:	fe040713          	addi	a4,s0,-32
    48001cf4:	8636                	mv	a2,a3
    48001cf6:	85ba                	mv	a1,a4
    48001cf8:	853e                	mv	a0,a5
    48001cfa:	ad5ff0ef          	jal	ra,480017ce <printf_numbers>
    48001cfe:	87aa                	mv	a5,a0
    48001d00:	cb89                	beqz	a5,48001d12 <printf+0x22e>
    48001d02:	fe042623          	sw	zero,-20(s0)
    48001d06:	fd843783          	ld	a5,-40(s0)
    48001d0a:	0785                	addi	a5,a5,1
    48001d0c:	fcf43c23          	sd	a5,-40(s0)
    48001d10:	a815                	j	48001d44 <printf+0x260>
    48001d12:	57fd                	li	a5,-1
    48001d14:	a83d                	j	48001d52 <printf+0x26e>
    48001d16:	fd843783          	ld	a5,-40(s0)
    48001d1a:	0007c783          	lbu	a5,0(a5)
    48001d1e:	fe040713          	addi	a4,s0,-32
    48001d22:	4601                	li	a2,0
    48001d24:	85ba                	mv	a1,a4
    48001d26:	853e                	mv	a0,a5
    48001d28:	aa7ff0ef          	jal	ra,480017ce <printf_numbers>
    48001d2c:	87aa                	mv	a5,a0
    48001d2e:	cb89                	beqz	a5,48001d40 <printf+0x25c>
    48001d30:	fe042623          	sw	zero,-20(s0)
    48001d34:	fd843783          	ld	a5,-40(s0)
    48001d38:	0785                	addi	a5,a5,1
    48001d3a:	fcf43c23          	sd	a5,-40(s0)
    48001d3e:	a019                	j	48001d44 <printf+0x260>
    48001d40:	57fd                	li	a5,-1
    48001d42:	a801                	j	48001d52 <printf+0x26e>
    48001d44:	fd843783          	ld	a5,-40(s0)
    48001d48:	0007c783          	lbu	a5,0(a5)
    48001d4c:	dc0798e3          	bnez	a5,48001b1c <printf+0x38>
    48001d50:	4781                	li	a5,0
    48001d52:	853e                	mv	a0,a5
    48001d54:	70a2                	ld	ra,40(sp)
    48001d56:	7402                	ld	s0,32(sp)
    48001d58:	6165                	addi	sp,sp,112
    48001d5a:	8082                	ret

0000000048001d5c <platform_init>:
    48001d5c:	1141                	addi	sp,sp,-16
    48001d5e:	e406                	sd	ra,8(sp)
    48001d60:	e022                	sd	s0,0(sp)
    48001d62:	0800                	addi	s0,sp,16
    48001d64:	060000ef          	jal	ra,48001dc4 <_Z9uart_initv>
    48001d68:	00000517          	auipc	a0,0x0
    48001d6c:	12853503          	ld	a0,296(a0) # 48001e90 <_GLOBAL_OFFSET_TABLE_+0x28>
    48001d70:	a9efe0ef          	jal	ra,4800000e <set_read_char>
    48001d74:	00000517          	auipc	a0,0x0
    48001d78:	10453503          	ld	a0,260(a0) # 48001e78 <_GLOBAL_OFFSET_TABLE_+0x10>
    48001d7c:	ab2fe0ef          	jal	ra,4800002e <set_write_char>
    48001d80:	0001                	nop
    48001d82:	60a2                	ld	ra,8(sp)
    48001d84:	6402                	ld	s0,0(sp)
    48001d86:	0141                	addi	sp,sp,16
    48001d88:	8082                	ret

0000000048001d8a <_Z4putcc>:
    48001d8a:	1101                	addi	sp,sp,-32
    48001d8c:	ec22                	sd	s0,24(sp)
    48001d8e:	1000                	addi	s0,sp,32
    48001d90:	87aa                	mv	a5,a0
    48001d92:	fef407a3          	sb	a5,-17(s0)
    48001d96:	fef44783          	lbu	a5,-17(s0)
    48001d9a:	853e                	mv	a0,a5
    48001d9c:	4885                	li	a7,1
    48001d9e:	00000073          	ecall
    48001da2:	0001                	nop
    48001da4:	6462                	ld	s0,24(sp)
    48001da6:	6105                	addi	sp,sp,32
    48001da8:	8082                	ret

0000000048001daa <_Z4getcv>:
    48001daa:	1141                	addi	sp,sp,-16
    48001dac:	e422                	sd	s0,8(sp)
    48001dae:	0800                	addi	s0,sp,16
    48001db0:	4501                	li	a0,0
    48001db2:	4889                	li	a7,2
    48001db4:	00000073          	ecall
    48001db8:	87aa                	mv	a5,a0
    48001dba:	2781                	sext.w	a5,a5
    48001dbc:	853e                	mv	a0,a5
    48001dbe:	6422                	ld	s0,8(sp)
    48001dc0:	0141                	addi	sp,sp,16
    48001dc2:	8082                	ret

0000000048001dc4 <_Z9uart_initv>:
    48001dc4:	1141                	addi	sp,sp,-16
    48001dc6:	e422                	sd	s0,8(sp)
    48001dc8:	0800                	addi	s0,sp,16
    48001dca:	0001                	nop
    48001dcc:	6422                	ld	s0,8(sp)
    48001dce:	0141                	addi	sp,sp,16
    48001dd0:	8082                	ret

0000000048001dd2 <_Z5helloiPPc>:
    48001dd2:	7179                	addi	sp,sp,-48
    48001dd4:	f406                	sd	ra,40(sp)
    48001dd6:	f022                	sd	s0,32(sp)
    48001dd8:	1800                	addi	s0,sp,48
    48001dda:	87aa                	mv	a5,a0
    48001ddc:	fcb43823          	sd	a1,-48(s0)
    48001de0:	fcf42e23          	sw	a5,-36(s0)
    48001de4:	fe042623          	sw	zero,-20(s0)
    48001de8:	a035                	j	48001e14 <_Z5helloiPPc+0x42>
    48001dea:	fec42783          	lw	a5,-20(s0)
    48001dee:	078e                	slli	a5,a5,0x3
    48001df0:	fd043703          	ld	a4,-48(s0)
    48001df4:	97ba                	add	a5,a5,a4
    48001df6:	639c                	ld	a5,0(a5)
    48001df8:	853e                	mv	a0,a5
    48001dfa:	cebff0ef          	jal	ra,48001ae4 <printf>
    48001dfe:	00000517          	auipc	a0,0x0
    48001e02:	68a50513          	addi	a0,a0,1674 # 48002488 <cmd_end_+0x448>
    48001e06:	cdfff0ef          	jal	ra,48001ae4 <printf>
    48001e0a:	fec42783          	lw	a5,-20(s0)
    48001e0e:	2785                	addiw	a5,a5,1
    48001e10:	fef42623          	sw	a5,-20(s0)
    48001e14:	fec42783          	lw	a5,-20(s0)
    48001e18:	873e                	mv	a4,a5
    48001e1a:	fdc42783          	lw	a5,-36(s0)
    48001e1e:	2701                	sext.w	a4,a4
    48001e20:	2781                	sext.w	a5,a5
    48001e22:	fcf744e3          	blt	a4,a5,48001dea <_Z5helloiPPc+0x18>
    48001e26:	00000517          	auipc	a0,0x0
    48001e2a:	66a50513          	addi	a0,a0,1642 # 48002490 <cmd_end_+0x450>
    48001e2e:	cb7ff0ef          	jal	ra,48001ae4 <printf>
    48001e32:	4781                	li	a5,0
    48001e34:	853e                	mv	a0,a5
    48001e36:	70a2                	ld	ra,40(sp)
    48001e38:	7402                	ld	s0,32(sp)
    48001e3a:	6145                	addi	sp,sp,48
    48001e3c:	8082                	ret
