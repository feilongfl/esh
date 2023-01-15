
shell.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000080200000 <_start>:
    80200000:	00002117          	auipc	sp,0x2
    80200004:	eb013103          	ld	sp,-336(sp) # 80201eb0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80200008:	425000ef          	jal	ra,80200c2c <prompt>
    8020000c:	a001                	j	8020000c <_start+0xc>

000000008020000e <set_read_char>:
    8020000e:	1101                	addi	sp,sp,-32
    80200010:	ec22                	sd	s0,24(sp)
    80200012:	1000                	addi	s0,sp,32
    80200014:	fea43423          	sd	a0,-24(s0)
    80200018:	00002797          	auipc	a5,0x2
    8020001c:	eb078793          	addi	a5,a5,-336 # 80201ec8 <__read_char__>
    80200020:	fe843703          	ld	a4,-24(s0)
    80200024:	e398                	sd	a4,0(a5)
    80200026:	0001                	nop
    80200028:	6462                	ld	s0,24(sp)
    8020002a:	6105                	addi	sp,sp,32
    8020002c:	8082                	ret

000000008020002e <set_write_char>:
    8020002e:	1101                	addi	sp,sp,-32
    80200030:	ec22                	sd	s0,24(sp)
    80200032:	1000                	addi	s0,sp,32
    80200034:	fea43423          	sd	a0,-24(s0)
    80200038:	00002797          	auipc	a5,0x2
    8020003c:	e9878793          	addi	a5,a5,-360 # 80201ed0 <__write_char__>
    80200040:	fe843703          	ld	a4,-24(s0)
    80200044:	e398                	sd	a4,0(a5)
    80200046:	0001                	nop
    80200048:	6462                	ld	s0,24(sp)
    8020004a:	6105                	addi	sp,sp,32
    8020004c:	8082                	ret

000000008020004e <setup>:
    8020004e:	1141                	addi	sp,sp,-16
    80200050:	e422                	sd	s0,8(sp)
    80200052:	0800                	addi	s0,sp,16
    80200054:	0001                	nop
    80200056:	6422                	ld	s0,8(sp)
    80200058:	0141                	addi	sp,sp,16
    8020005a:	8082                	ret

000000008020005c <loop>:
    8020005c:	1141                	addi	sp,sp,-16
    8020005e:	e422                	sd	s0,8(sp)
    80200060:	0800                	addi	s0,sp,16
    80200062:	0001                	nop
    80200064:	6422                	ld	s0,8(sp)
    80200066:	0141                	addi	sp,sp,16
    80200068:	8082                	ret

000000008020006a <prepend_prompt>:
    8020006a:	1141                	addi	sp,sp,-16
    8020006c:	e422                	sd	s0,8(sp)
    8020006e:	0800                	addi	s0,sp,16
    80200070:	0001                	nop
    80200072:	6422                	ld	s0,8(sp)
    80200074:	0141                	addi	sp,sp,16
    80200076:	8082                	ret

0000000080200078 <active_prompt>:
    80200078:	1141                	addi	sp,sp,-16
    8020007a:	e422                	sd	s0,8(sp)
    8020007c:	0800                	addi	s0,sp,16
    8020007e:	4785                	li	a5,1
    80200080:	853e                	mv	a0,a5
    80200082:	6422                	ld	s0,8(sp)
    80200084:	0141                	addi	sp,sp,16
    80200086:	8082                	ret

0000000080200088 <delete>:
    80200088:	1141                	addi	sp,sp,-16
    8020008a:	e406                	sd	ra,8(sp)
    8020008c:	e022                	sd	s0,0(sp)
    8020008e:	0800                	addi	s0,sp,16
    80200090:	00002797          	auipc	a5,0x2
    80200094:	e4078793          	addi	a5,a5,-448 # 80201ed0 <__write_char__>
    80200098:	639c                	ld	a5,0(a5)
    8020009a:	4521                	li	a0,8
    8020009c:	9782                	jalr	a5
    8020009e:	00002797          	auipc	a5,0x2
    802000a2:	e3278793          	addi	a5,a5,-462 # 80201ed0 <__write_char__>
    802000a6:	639c                	ld	a5,0(a5)
    802000a8:	02000513          	li	a0,32
    802000ac:	9782                	jalr	a5
    802000ae:	00002797          	auipc	a5,0x2
    802000b2:	e2278793          	addi	a5,a5,-478 # 80201ed0 <__write_char__>
    802000b6:	639c                	ld	a5,0(a5)
    802000b8:	4521                	li	a0,8
    802000ba:	9782                	jalr	a5
    802000bc:	0001                	nop
    802000be:	60a2                	ld	ra,8(sp)
    802000c0:	6402                	ld	s0,0(sp)
    802000c2:	0141                	addi	sp,sp,16
    802000c4:	8082                	ret

00000000802000c6 <clear_prompt>:
    802000c6:	1101                	addi	sp,sp,-32
    802000c8:	ec06                	sd	ra,24(sp)
    802000ca:	e822                	sd	s0,16(sp)
    802000cc:	1000                	addi	s0,sp,32
    802000ce:	87aa                	mv	a5,a0
    802000d0:	fef42623          	sw	a5,-20(s0)
    802000d4:	a801                	j	802000e4 <clear_prompt+0x1e>
    802000d6:	fb3ff0ef          	jal	ra,80200088 <delete>
    802000da:	fec42783          	lw	a5,-20(s0)
    802000de:	37fd                	addiw	a5,a5,-1
    802000e0:	fef42623          	sw	a5,-20(s0)
    802000e4:	fec42783          	lw	a5,-20(s0)
    802000e8:	2781                	sext.w	a5,a5
    802000ea:	f7f5                	bnez	a5,802000d6 <clear_prompt+0x10>
    802000ec:	0001                	nop
    802000ee:	0001                	nop
    802000f0:	60e2                	ld	ra,24(sp)
    802000f2:	6442                	ld	s0,16(sp)
    802000f4:	6105                	addi	sp,sp,32
    802000f6:	8082                	ret

00000000802000f8 <handle_up_arrow>:
    802000f8:	7179                	addi	sp,sp,-48
    802000fa:	f406                	sd	ra,40(sp)
    802000fc:	f022                	sd	s0,32(sp)
    802000fe:	1800                	addi	s0,sp,48
    80200100:	fca43c23          	sd	a0,-40(s0)
    80200104:	fcb43823          	sd	a1,-48(s0)
    80200108:	00002797          	auipc	a5,0x2
    8020010c:	dd478793          	addi	a5,a5,-556 # 80201edc <total_num_commands>
    80200110:	439c                	lw	a5,0(a5)
    80200112:	2781                	sext.w	a5,a5
    80200114:	37f9                	addiw	a5,a5,-2
    80200116:	0007871b          	sext.w	a4,a5
    8020011a:	00002797          	auipc	a5,0x2
    8020011e:	dc678793          	addi	a5,a5,-570 # 80201ee0 <curr_command_ptr>
    80200122:	439c                	lw	a5,0(a5)
    80200124:	2781                	sext.w	a5,a5
    80200126:	00e7c963          	blt	a5,a4,80200138 <handle_up_arrow+0x40>
    8020012a:	00002797          	auipc	a5,0x2
    8020012e:	db678793          	addi	a5,a5,-586 # 80201ee0 <curr_command_ptr>
    80200132:	439c                	lw	a5,0(a5)
    80200134:	2781                	sext.w	a5,a5
    80200136:	eb91                	bnez	a5,8020014a <handle_up_arrow+0x52>
    80200138:	fd843583          	ld	a1,-40(s0)
    8020013c:	00002517          	auipc	a0,0x2
    80200140:	f1c50513          	addi	a0,a0,-228 # 80202058 <cmd_end_+0x18>
    80200144:	1a1010ef          	jal	ra,80201ae4 <printf>
    80200148:	a849                	j	802001da <handle_up_arrow+0xe2>
    8020014a:	02000613          	li	a2,32
    8020014e:	4581                	li	a1,0
    80200150:	fd843503          	ld	a0,-40(s0)
    80200154:	63d000ef          	jal	ra,80200f90 <memset>
    80200158:	00002797          	auipc	a5,0x2
    8020015c:	d8878793          	addi	a5,a5,-632 # 80201ee0 <curr_command_ptr>
    80200160:	439c                	lw	a5,0(a5)
    80200162:	2781                	sext.w	a5,a5
    80200164:	37fd                	addiw	a5,a5,-1
    80200166:	0007871b          	sext.w	a4,a5
    8020016a:	00002797          	auipc	a5,0x2
    8020016e:	d7678793          	addi	a5,a5,-650 # 80201ee0 <curr_command_ptr>
    80200172:	c398                	sw	a4,0(a5)
    80200174:	00002797          	auipc	a5,0x2
    80200178:	d6c78793          	addi	a5,a5,-660 # 80201ee0 <curr_command_ptr>
    8020017c:	439c                	lw	a5,0(a5)
    8020017e:	2781                	sext.w	a5,a5
    80200180:	873e                	mv	a4,a5
    80200182:	41f7579b          	sraiw	a5,a4,0x1f
    80200186:	01f7d79b          	srliw	a5,a5,0x1f
    8020018a:	9f3d                	addw	a4,a4,a5
    8020018c:	8b05                	andi	a4,a4,1
    8020018e:	40f707bb          	subw	a5,a4,a5
    80200192:	fef42623          	sw	a5,-20(s0)
    80200196:	fec42783          	lw	a5,-20(s0)
    8020019a:	00579713          	slli	a4,a5,0x5
    8020019e:	00002797          	auipc	a5,0x2
    802001a2:	d4a78793          	addi	a5,a5,-694 # 80201ee8 <cmd_history>
    802001a6:	97ba                	add	a5,a5,a4
    802001a8:	02000613          	li	a2,32
    802001ac:	85be                	mv	a1,a5
    802001ae:	fd843503          	ld	a0,-40(s0)
    802001b2:	57b000ef          	jal	ra,80200f2c <memcpy>
    802001b6:	fd843503          	ld	a0,-40(s0)
    802001ba:	48b000ef          	jal	ra,80200e44 <strlen>
    802001be:	87aa                	mv	a5,a0
    802001c0:	0007871b          	sext.w	a4,a5
    802001c4:	fd043783          	ld	a5,-48(s0)
    802001c8:	c398                	sw	a4,0(a5)
    802001ca:	fd843583          	ld	a1,-40(s0)
    802001ce:	00002517          	auipc	a0,0x2
    802001d2:	e8a50513          	addi	a0,a0,-374 # 80202058 <cmd_end_+0x18>
    802001d6:	10f010ef          	jal	ra,80201ae4 <printf>
    802001da:	70a2                	ld	ra,40(sp)
    802001dc:	7402                	ld	s0,32(sp)
    802001de:	6145                	addi	sp,sp,48
    802001e0:	8082                	ret

00000000802001e2 <handle_down_arrow>:
    802001e2:	7179                	addi	sp,sp,-48
    802001e4:	f406                	sd	ra,40(sp)
    802001e6:	f022                	sd	s0,32(sp)
    802001e8:	1800                	addi	s0,sp,48
    802001ea:	fca43c23          	sd	a0,-40(s0)
    802001ee:	fcb43823          	sd	a1,-48(s0)
    802001f2:	02000613          	li	a2,32
    802001f6:	4581                	li	a1,0
    802001f8:	fd843503          	ld	a0,-40(s0)
    802001fc:	595000ef          	jal	ra,80200f90 <memset>
    80200200:	fd043783          	ld	a5,-48(s0)
    80200204:	0007a023          	sw	zero,0(a5)
    80200208:	00002797          	auipc	a5,0x2
    8020020c:	cd878793          	addi	a5,a5,-808 # 80201ee0 <curr_command_ptr>
    80200210:	439c                	lw	a5,0(a5)
    80200212:	0007871b          	sext.w	a4,a5
    80200216:	00002797          	auipc	a5,0x2
    8020021a:	cc678793          	addi	a5,a5,-826 # 80201edc <total_num_commands>
    8020021e:	439c                	lw	a5,0(a5)
    80200220:	2781                	sext.w	a5,a5
    80200222:	08f70463          	beq	a4,a5,802002aa <handle_down_arrow+0xc8>
    80200226:	00002797          	auipc	a5,0x2
    8020022a:	cba78793          	addi	a5,a5,-838 # 80201ee0 <curr_command_ptr>
    8020022e:	439c                	lw	a5,0(a5)
    80200230:	2781                	sext.w	a5,a5
    80200232:	2785                	addiw	a5,a5,1
    80200234:	0007871b          	sext.w	a4,a5
    80200238:	00002797          	auipc	a5,0x2
    8020023c:	ca878793          	addi	a5,a5,-856 # 80201ee0 <curr_command_ptr>
    80200240:	c398                	sw	a4,0(a5)
    80200242:	00002797          	auipc	a5,0x2
    80200246:	c9e78793          	addi	a5,a5,-866 # 80201ee0 <curr_command_ptr>
    8020024a:	439c                	lw	a5,0(a5)
    8020024c:	2781                	sext.w	a5,a5
    8020024e:	873e                	mv	a4,a5
    80200250:	41f7579b          	sraiw	a5,a4,0x1f
    80200254:	01f7d79b          	srliw	a5,a5,0x1f
    80200258:	9f3d                	addw	a4,a4,a5
    8020025a:	8b05                	andi	a4,a4,1
    8020025c:	40f707bb          	subw	a5,a4,a5
    80200260:	fef42623          	sw	a5,-20(s0)
    80200264:	fec42783          	lw	a5,-20(s0)
    80200268:	00579713          	slli	a4,a5,0x5
    8020026c:	00002797          	auipc	a5,0x2
    80200270:	c7c78793          	addi	a5,a5,-900 # 80201ee8 <cmd_history>
    80200274:	97ba                	add	a5,a5,a4
    80200276:	02000613          	li	a2,32
    8020027a:	85be                	mv	a1,a5
    8020027c:	fd843503          	ld	a0,-40(s0)
    80200280:	4ad000ef          	jal	ra,80200f2c <memcpy>
    80200284:	fd843503          	ld	a0,-40(s0)
    80200288:	3bd000ef          	jal	ra,80200e44 <strlen>
    8020028c:	87aa                	mv	a5,a0
    8020028e:	0007871b          	sext.w	a4,a5
    80200292:	fd043783          	ld	a5,-48(s0)
    80200296:	c398                	sw	a4,0(a5)
    80200298:	fd843583          	ld	a1,-40(s0)
    8020029c:	00002517          	auipc	a0,0x2
    802002a0:	dbc50513          	addi	a0,a0,-580 # 80202058 <cmd_end_+0x18>
    802002a4:	041010ef          	jal	ra,80201ae4 <printf>
    802002a8:	a011                	j	802002ac <handle_down_arrow+0xca>
    802002aa:	0001                	nop
    802002ac:	70a2                	ld	ra,40(sp)
    802002ae:	7402                	ld	s0,32(sp)
    802002b0:	6145                	addi	sp,sp,48
    802002b2:	8082                	ret

00000000802002b4 <add_command_to_history>:
    802002b4:	7179                	addi	sp,sp,-48
    802002b6:	f406                	sd	ra,40(sp)
    802002b8:	f022                	sd	s0,32(sp)
    802002ba:	1800                	addi	s0,sp,48
    802002bc:	fca43c23          	sd	a0,-40(s0)
    802002c0:	fd843783          	ld	a5,-40(s0)
    802002c4:	c7d9                	beqz	a5,80200352 <add_command_to_history+0x9e>
    802002c6:	00002597          	auipc	a1,0x2
    802002ca:	d9a58593          	addi	a1,a1,-614 # 80202060 <cmd_end_+0x20>
    802002ce:	fd843503          	ld	a0,-40(s0)
    802002d2:	3a9000ef          	jal	ra,80200e7a <strcmp>
    802002d6:	87aa                	mv	a5,a0
    802002d8:	cfad                	beqz	a5,80200352 <add_command_to_history+0x9e>
    802002da:	00002797          	auipc	a5,0x2
    802002de:	c0278793          	addi	a5,a5,-1022 # 80201edc <total_num_commands>
    802002e2:	439c                	lw	a5,0(a5)
    802002e4:	2781                	sext.w	a5,a5
    802002e6:	873e                	mv	a4,a5
    802002e8:	41f7579b          	sraiw	a5,a4,0x1f
    802002ec:	01f7d79b          	srliw	a5,a5,0x1f
    802002f0:	9f3d                	addw	a4,a4,a5
    802002f2:	8b05                	andi	a4,a4,1
    802002f4:	40f707bb          	subw	a5,a4,a5
    802002f8:	fef42623          	sw	a5,-20(s0)
    802002fc:	fec42783          	lw	a5,-20(s0)
    80200300:	00579713          	slli	a4,a5,0x5
    80200304:	00002797          	auipc	a5,0x2
    80200308:	be478793          	addi	a5,a5,-1052 # 80201ee8 <cmd_history>
    8020030c:	97ba                	add	a5,a5,a4
    8020030e:	02000613          	li	a2,32
    80200312:	fd843583          	ld	a1,-40(s0)
    80200316:	853e                	mv	a0,a5
    80200318:	415000ef          	jal	ra,80200f2c <memcpy>
    8020031c:	00002797          	auipc	a5,0x2
    80200320:	bc078793          	addi	a5,a5,-1088 # 80201edc <total_num_commands>
    80200324:	439c                	lw	a5,0(a5)
    80200326:	2781                	sext.w	a5,a5
    80200328:	2785                	addiw	a5,a5,1
    8020032a:	0007871b          	sext.w	a4,a5
    8020032e:	00002797          	auipc	a5,0x2
    80200332:	bae78793          	addi	a5,a5,-1106 # 80201edc <total_num_commands>
    80200336:	c398                	sw	a4,0(a5)
    80200338:	00002797          	auipc	a5,0x2
    8020033c:	ba478793          	addi	a5,a5,-1116 # 80201edc <total_num_commands>
    80200340:	439c                	lw	a5,0(a5)
    80200342:	0007871b          	sext.w	a4,a5
    80200346:	00002797          	auipc	a5,0x2
    8020034a:	b9a78793          	addi	a5,a5,-1126 # 80201ee0 <curr_command_ptr>
    8020034e:	c398                	sw	a4,0(a5)
    80200350:	a011                	j	80200354 <add_command_to_history+0xa0>
    80200352:	0001                	nop
    80200354:	70a2                	ld	ra,40(sp)
    80200356:	7402                	ld	s0,32(sp)
    80200358:	6145                	addi	sp,sp,48
    8020035a:	8082                	ret

000000008020035c <show_history>:
    8020035c:	7179                	addi	sp,sp,-48
    8020035e:	f406                	sd	ra,40(sp)
    80200360:	f022                	sd	s0,32(sp)
    80200362:	1800                	addi	s0,sp,48
    80200364:	87aa                	mv	a5,a0
    80200366:	fcb43823          	sd	a1,-48(s0)
    8020036a:	fcf42e23          	sw	a5,-36(s0)
    8020036e:	00002797          	auipc	a5,0x2
    80200372:	b6e78793          	addi	a5,a5,-1170 # 80201edc <total_num_commands>
    80200376:	439c                	lw	a5,0(a5)
    80200378:	2781                	sext.w	a5,a5
    8020037a:	37fd                	addiw	a5,a5,-1
    8020037c:	2781                	sext.w	a5,a5
    8020037e:	fef42223          	sw	a5,-28(s0)
    80200382:	fe042623          	sw	zero,-20(s0)
    80200386:	00002797          	auipc	a5,0x2
    8020038a:	b5678793          	addi	a5,a5,-1194 # 80201edc <total_num_commands>
    8020038e:	439c                	lw	a5,0(a5)
    80200390:	2781                	sext.w	a5,a5
    80200392:	873e                	mv	a4,a5
    80200394:	4789                	li	a5,2
    80200396:	00e7dc63          	bge	a5,a4,802003ae <show_history+0x52>
    8020039a:	00002797          	auipc	a5,0x2
    8020039e:	b4278793          	addi	a5,a5,-1214 # 80201edc <total_num_commands>
    802003a2:	439c                	lw	a5,0(a5)
    802003a4:	2781                	sext.w	a5,a5
    802003a6:	37f9                	addiw	a5,a5,-2
    802003a8:	2781                	sext.w	a5,a5
    802003aa:	fef42623          	sw	a5,-20(s0)
    802003ae:	fec42783          	lw	a5,-20(s0)
    802003b2:	fef42423          	sw	a5,-24(s0)
    802003b6:	a815                	j	802003ea <show_history+0x8e>
    802003b8:	fe842783          	lw	a5,-24(s0)
    802003bc:	8b85                	andi	a5,a5,1
    802003be:	2781                	sext.w	a5,a5
    802003c0:	1782                	slli	a5,a5,0x20
    802003c2:	9381                	srli	a5,a5,0x20
    802003c4:	00579713          	slli	a4,a5,0x5
    802003c8:	00002797          	auipc	a5,0x2
    802003cc:	b2078793          	addi	a5,a5,-1248 # 80201ee8 <cmd_history>
    802003d0:	97ba                	add	a5,a5,a4
    802003d2:	85be                	mv	a1,a5
    802003d4:	00002517          	auipc	a0,0x2
    802003d8:	c9450513          	addi	a0,a0,-876 # 80202068 <cmd_end_+0x28>
    802003dc:	708010ef          	jal	ra,80201ae4 <printf>
    802003e0:	fe842783          	lw	a5,-24(s0)
    802003e4:	2785                	addiw	a5,a5,1
    802003e6:	fef42423          	sw	a5,-24(s0)
    802003ea:	fe842783          	lw	a5,-24(s0)
    802003ee:	873e                	mv	a4,a5
    802003f0:	fe442783          	lw	a5,-28(s0)
    802003f4:	2701                	sext.w	a4,a4
    802003f6:	2781                	sext.w	a5,a5
    802003f8:	fce7f0e3          	bgeu	a5,a4,802003b8 <show_history+0x5c>
    802003fc:	4781                	li	a5,0
    802003fe:	853e                	mv	a0,a5
    80200400:	70a2                	ld	ra,40(sp)
    80200402:	7402                	ld	s0,32(sp)
    80200404:	6145                	addi	sp,sp,48
    80200406:	8082                	ret

0000000080200408 <prefix_match>:
    80200408:	715d                	addi	sp,sp,-80
    8020040a:	e486                	sd	ra,72(sp)
    8020040c:	e0a2                	sd	s0,64(sp)
    8020040e:	fc26                	sd	s1,56(sp)
    80200410:	0880                	addi	s0,sp,80
    80200412:	fca43423          	sd	a0,-56(s0)
    80200416:	87ae                	mv	a5,a1
    80200418:	fac43c23          	sd	a2,-72(s0)
    8020041c:	fcf42223          	sw	a5,-60(s0)
    80200420:	fc843783          	ld	a5,-56(s0)
    80200424:	c395                	beqz	a5,80200448 <prefix_match+0x40>
    80200426:	fb843783          	ld	a5,-72(s0)
    8020042a:	cf99                	beqz	a5,80200448 <prefix_match+0x40>
    8020042c:	fc442783          	lw	a5,-60(s0)
    80200430:	2781                	sext.w	a5,a5
    80200432:	00f05b63          	blez	a5,80200448 <prefix_match+0x40>
    80200436:	fc442483          	lw	s1,-60(s0)
    8020043a:	fb843503          	ld	a0,-72(s0)
    8020043e:	207000ef          	jal	ra,80200e44 <strlen>
    80200442:	87aa                	mv	a5,a0
    80200444:	0097f463          	bgeu	a5,s1,8020044c <prefix_match+0x44>
    80200448:	4781                	li	a5,0
    8020044a:	a0b1                	j	80200496 <prefix_match+0x8e>
    8020044c:	fc042e23          	sw	zero,-36(s0)
    80200450:	a80d                	j	80200482 <prefix_match+0x7a>
    80200452:	fdc42783          	lw	a5,-36(s0)
    80200456:	fc843703          	ld	a4,-56(s0)
    8020045a:	97ba                	add	a5,a5,a4
    8020045c:	0007c683          	lbu	a3,0(a5)
    80200460:	fdc42783          	lw	a5,-36(s0)
    80200464:	fb843703          	ld	a4,-72(s0)
    80200468:	97ba                	add	a5,a5,a4
    8020046a:	0007c783          	lbu	a5,0(a5)
    8020046e:	8736                	mv	a4,a3
    80200470:	00f70463          	beq	a4,a5,80200478 <prefix_match+0x70>
    80200474:	4781                	li	a5,0
    80200476:	a005                	j	80200496 <prefix_match+0x8e>
    80200478:	fdc42783          	lw	a5,-36(s0)
    8020047c:	2785                	addiw	a5,a5,1
    8020047e:	fcf42e23          	sw	a5,-36(s0)
    80200482:	fdc42783          	lw	a5,-36(s0)
    80200486:	873e                	mv	a4,a5
    80200488:	fc442783          	lw	a5,-60(s0)
    8020048c:	2701                	sext.w	a4,a4
    8020048e:	2781                	sext.w	a5,a5
    80200490:	fcf741e3          	blt	a4,a5,80200452 <prefix_match+0x4a>
    80200494:	4785                	li	a5,1
    80200496:	853e                	mv	a0,a5
    80200498:	60a6                	ld	ra,72(sp)
    8020049a:	6406                	ld	s0,64(sp)
    8020049c:	74e2                	ld	s1,56(sp)
    8020049e:	6161                	addi	sp,sp,80
    802004a0:	8082                	ret

00000000802004a2 <handle_tab>:
    802004a2:	7179                	addi	sp,sp,-48
    802004a4:	f406                	sd	ra,40(sp)
    802004a6:	f022                	sd	s0,32(sp)
    802004a8:	1800                	addi	s0,sp,48
    802004aa:	fca43c23          	sd	a0,-40(s0)
    802004ae:	fcb43823          	sd	a1,-48(s0)
    802004b2:	fd843783          	ld	a5,-40(s0)
    802004b6:	12078563          	beqz	a5,802005e0 <handle_tab+0x13e>
    802004ba:	fd043783          	ld	a5,-48(s0)
    802004be:	12078163          	beqz	a5,802005e0 <handle_tab+0x13e>
    802004c2:	fe042623          	sw	zero,-20(s0)
    802004c6:	fe042423          	sw	zero,-24(s0)
    802004ca:	57fd                	li	a5,-1
    802004cc:	fef42223          	sw	a5,-28(s0)
    802004d0:	a895                	j	80200544 <handle_tab+0xa2>
    802004d2:	fd043783          	ld	a5,-48(s0)
    802004d6:	438c                	lw	a1,0(a5)
    802004d8:	00002797          	auipc	a5,0x2
    802004dc:	97078793          	addi	a5,a5,-1680 # 80201e48 <table>
    802004e0:	6394                	ld	a3,0(a5)
    802004e2:	fec42703          	lw	a4,-20(s0)
    802004e6:	87ba                	mv	a5,a4
    802004e8:	0786                	slli	a5,a5,0x1
    802004ea:	97ba                	add	a5,a5,a4
    802004ec:	078e                	slli	a5,a5,0x3
    802004ee:	97b6                	add	a5,a5,a3
    802004f0:	639c                	ld	a5,0(a5)
    802004f2:	863e                	mv	a2,a5
    802004f4:	fd843503          	ld	a0,-40(s0)
    802004f8:	f11ff0ef          	jal	ra,80200408 <prefix_match>
    802004fc:	87aa                	mv	a5,a0
    802004fe:	cf95                	beqz	a5,8020053a <handle_tab+0x98>
    80200500:	fe842783          	lw	a5,-24(s0)
    80200504:	2785                	addiw	a5,a5,1
    80200506:	fef42423          	sw	a5,-24(s0)
    8020050a:	fec42783          	lw	a5,-20(s0)
    8020050e:	fef42223          	sw	a5,-28(s0)
    80200512:	00002797          	auipc	a5,0x2
    80200516:	93678793          	addi	a5,a5,-1738 # 80201e48 <table>
    8020051a:	6394                	ld	a3,0(a5)
    8020051c:	fec42703          	lw	a4,-20(s0)
    80200520:	87ba                	mv	a5,a4
    80200522:	0786                	slli	a5,a5,0x1
    80200524:	97ba                	add	a5,a5,a4
    80200526:	078e                	slli	a5,a5,0x3
    80200528:	97b6                	add	a5,a5,a3
    8020052a:	639c                	ld	a5,0(a5)
    8020052c:	85be                	mv	a1,a5
    8020052e:	00002517          	auipc	a0,0x2
    80200532:	b6250513          	addi	a0,a0,-1182 # 80202090 <cmd_end_+0x50>
    80200536:	5ae010ef          	jal	ra,80201ae4 <printf>
    8020053a:	fec42783          	lw	a5,-20(s0)
    8020053e:	2785                	addiw	a5,a5,1
    80200540:	fef42623          	sw	a5,-20(s0)
    80200544:	00002797          	auipc	a5,0x2
    80200548:	90478793          	addi	a5,a5,-1788 # 80201e48 <table>
    8020054c:	6394                	ld	a3,0(a5)
    8020054e:	fec42703          	lw	a4,-20(s0)
    80200552:	87ba                	mv	a5,a4
    80200554:	0786                	slli	a5,a5,0x1
    80200556:	97ba                	add	a5,a5,a4
    80200558:	078e                	slli	a5,a5,0x3
    8020055a:	97b6                	add	a5,a5,a3
    8020055c:	639c                	ld	a5,0(a5)
    8020055e:	fbb5                	bnez	a5,802004d2 <handle_tab+0x30>
    80200560:	fe842783          	lw	a5,-24(s0)
    80200564:	0007871b          	sext.w	a4,a5
    80200568:	4785                	li	a5,1
    8020056a:	04f71063          	bne	a4,a5,802005aa <handle_tab+0x108>
    8020056e:	00002797          	auipc	a5,0x2
    80200572:	8da78793          	addi	a5,a5,-1830 # 80201e48 <table>
    80200576:	6394                	ld	a3,0(a5)
    80200578:	fe442703          	lw	a4,-28(s0)
    8020057c:	87ba                	mv	a5,a4
    8020057e:	0786                	slli	a5,a5,0x1
    80200580:	97ba                	add	a5,a5,a4
    80200582:	078e                	slli	a5,a5,0x3
    80200584:	97b6                	add	a5,a5,a3
    80200586:	639c                	ld	a5,0(a5)
    80200588:	02000613          	li	a2,32
    8020058c:	85be                	mv	a1,a5
    8020058e:	fd843503          	ld	a0,-40(s0)
    80200592:	19b000ef          	jal	ra,80200f2c <memcpy>
    80200596:	fd843503          	ld	a0,-40(s0)
    8020059a:	0ab000ef          	jal	ra,80200e44 <strlen>
    8020059e:	87aa                	mv	a5,a0
    802005a0:	0007871b          	sext.w	a4,a5
    802005a4:	fd043783          	ld	a5,-48(s0)
    802005a8:	c398                	sw	a4,0(a5)
    802005aa:	fe842783          	lw	a5,-24(s0)
    802005ae:	2781                	sext.w	a5,a5
    802005b0:	cb8d                	beqz	a5,802005e2 <handle_tab+0x140>
    802005b2:	00002517          	auipc	a0,0x2
    802005b6:	ae650513          	addi	a0,a0,-1306 # 80202098 <cmd_end_+0x58>
    802005ba:	52a010ef          	jal	ra,80201ae4 <printf>
    802005be:	aadff0ef          	jal	ra,8020006a <prepend_prompt>
    802005c2:	00002517          	auipc	a0,0x2
    802005c6:	ade50513          	addi	a0,a0,-1314 # 802020a0 <cmd_end_+0x60>
    802005ca:	51a010ef          	jal	ra,80201ae4 <printf>
    802005ce:	fd843583          	ld	a1,-40(s0)
    802005d2:	00002517          	auipc	a0,0x2
    802005d6:	a8650513          	addi	a0,a0,-1402 # 80202058 <cmd_end_+0x18>
    802005da:	50a010ef          	jal	ra,80201ae4 <printf>
    802005de:	a011                	j	802005e2 <handle_tab+0x140>
    802005e0:	0001                	nop
    802005e2:	70a2                	ld	ra,40(sp)
    802005e4:	7402                	ld	s0,32(sp)
    802005e6:	6145                	addi	sp,sp,48
    802005e8:	8082                	ret

00000000802005ea <parse_line>:
    802005ea:	7139                	addi	sp,sp,-64
    802005ec:	fc06                	sd	ra,56(sp)
    802005ee:	f822                	sd	s0,48(sp)
    802005f0:	0080                	addi	s0,sp,64
    802005f2:	fca43c23          	sd	a0,-40(s0)
    802005f6:	fcb43823          	sd	a1,-48(s0)
    802005fa:	87b2                	mv	a5,a2
    802005fc:	fcf42623          	sw	a5,-52(s0)
    80200600:	fe042623          	sw	zero,-20(s0)
    80200604:	fe042423          	sw	zero,-24(s0)
    80200608:	fd043503          	ld	a0,-48(s0)
    8020060c:	039000ef          	jal	ra,80200e44 <strlen>
    80200610:	87aa                	mv	a5,a0
    80200612:	fef42223          	sw	a5,-28(s0)
    80200616:	a8c5                	j	80200706 <parse_line+0x11c>
    80200618:	fe842783          	lw	a5,-24(s0)
    8020061c:	fd043703          	ld	a4,-48(s0)
    80200620:	97ba                	add	a5,a5,a4
    80200622:	0007c783          	lbu	a5,0(a5)
    80200626:	873e                	mv	a4,a5
    80200628:	47a5                	li	a5,9
    8020062a:	04f70c63          	beq	a4,a5,80200682 <parse_line+0x98>
    8020062e:	fe842783          	lw	a5,-24(s0)
    80200632:	fd043703          	ld	a4,-48(s0)
    80200636:	97ba                	add	a5,a5,a4
    80200638:	0007c783          	lbu	a5,0(a5)
    8020063c:	873e                	mv	a4,a5
    8020063e:	02000793          	li	a5,32
    80200642:	04f70063          	beq	a4,a5,80200682 <parse_line+0x98>
    80200646:	fe842783          	lw	a5,-24(s0)
    8020064a:	fd043703          	ld	a4,-48(s0)
    8020064e:	97ba                	add	a5,a5,a4
    80200650:	0007c783          	lbu	a5,0(a5)
    80200654:	c79d                	beqz	a5,80200682 <parse_line+0x98>
    80200656:	fe842703          	lw	a4,-24(s0)
    8020065a:	fec42783          	lw	a5,-20(s0)
    8020065e:	0017869b          	addiw	a3,a5,1
    80200662:	fed42623          	sw	a3,-20(s0)
    80200666:	078e                	slli	a5,a5,0x3
    80200668:	fd843683          	ld	a3,-40(s0)
    8020066c:	97b6                	add	a5,a5,a3
    8020066e:	fd043683          	ld	a3,-48(s0)
    80200672:	9736                	add	a4,a4,a3
    80200674:	e398                	sd	a4,0(a5)
    80200676:	a031                	j	80200682 <parse_line+0x98>
    80200678:	fe842783          	lw	a5,-24(s0)
    8020067c:	2785                	addiw	a5,a5,1
    8020067e:	fef42423          	sw	a5,-24(s0)
    80200682:	fe842783          	lw	a5,-24(s0)
    80200686:	fd043703          	ld	a4,-48(s0)
    8020068a:	97ba                	add	a5,a5,a4
    8020068c:	0007c783          	lbu	a5,0(a5)
    80200690:	873e                	mv	a4,a5
    80200692:	47a5                	li	a5,9
    80200694:	02f70663          	beq	a4,a5,802006c0 <parse_line+0xd6>
    80200698:	fe842783          	lw	a5,-24(s0)
    8020069c:	fd043703          	ld	a4,-48(s0)
    802006a0:	97ba                	add	a5,a5,a4
    802006a2:	0007c783          	lbu	a5,0(a5)
    802006a6:	873e                	mv	a4,a5
    802006a8:	02000793          	li	a5,32
    802006ac:	00f70a63          	beq	a4,a5,802006c0 <parse_line+0xd6>
    802006b0:	fe842783          	lw	a5,-24(s0)
    802006b4:	fd043703          	ld	a4,-48(s0)
    802006b8:	97ba                	add	a5,a5,a4
    802006ba:	0007c783          	lbu	a5,0(a5)
    802006be:	ffcd                	bnez	a5,80200678 <parse_line+0x8e>
    802006c0:	fe842783          	lw	a5,-24(s0)
    802006c4:	fd043703          	ld	a4,-48(s0)
    802006c8:	97ba                	add	a5,a5,a4
    802006ca:	0007c783          	lbu	a5,0(a5)
    802006ce:	873e                	mv	a4,a5
    802006d0:	47a5                	li	a5,9
    802006d2:	00f70e63          	beq	a4,a5,802006ee <parse_line+0x104>
    802006d6:	fe842783          	lw	a5,-24(s0)
    802006da:	fd043703          	ld	a4,-48(s0)
    802006de:	97ba                	add	a5,a5,a4
    802006e0:	0007c783          	lbu	a5,0(a5)
    802006e4:	873e                	mv	a4,a5
    802006e6:	02000793          	li	a5,32
    802006ea:	00f71963          	bne	a4,a5,802006fc <parse_line+0x112>
    802006ee:	fe842783          	lw	a5,-24(s0)
    802006f2:	fd043703          	ld	a4,-48(s0)
    802006f6:	97ba                	add	a5,a5,a4
    802006f8:	00078023          	sb	zero,0(a5)
    802006fc:	fe842783          	lw	a5,-24(s0)
    80200700:	2785                	addiw	a5,a5,1
    80200702:	fef42423          	sw	a5,-24(s0)
    80200706:	fe842783          	lw	a5,-24(s0)
    8020070a:	873e                	mv	a4,a5
    8020070c:	fe442783          	lw	a5,-28(s0)
    80200710:	2701                	sext.w	a4,a4
    80200712:	2781                	sext.w	a5,a5
    80200714:	f0e7d2e3          	bge	a5,a4,80200618 <parse_line+0x2e>
    80200718:	fec42783          	lw	a5,-20(s0)
    8020071c:	853e                	mv	a0,a5
    8020071e:	70e2                	ld	ra,56(sp)
    80200720:	7442                	ld	s0,48(sp)
    80200722:	6121                	addi	sp,sp,64
    80200724:	8082                	ret

0000000080200726 <execute>:
    80200726:	7179                	addi	sp,sp,-48
    80200728:	f406                	sd	ra,40(sp)
    8020072a:	f022                	sd	s0,32(sp)
    8020072c:	1800                	addi	s0,sp,48
    8020072e:	87aa                	mv	a5,a0
    80200730:	fcb43823          	sd	a1,-48(s0)
    80200734:	fcf42e23          	sw	a5,-36(s0)
    80200738:	fe042623          	sw	zero,-20(s0)
    8020073c:	fe042423          	sw	zero,-24(s0)
    80200740:	a895                	j	802007b4 <execute+0x8e>
    80200742:	fd043783          	ld	a5,-48(s0)
    80200746:	6390                	ld	a2,0(a5)
    80200748:	00001797          	auipc	a5,0x1
    8020074c:	70078793          	addi	a5,a5,1792 # 80201e48 <table>
    80200750:	6394                	ld	a3,0(a5)
    80200752:	fe842703          	lw	a4,-24(s0)
    80200756:	87ba                	mv	a5,a4
    80200758:	0786                	slli	a5,a5,0x1
    8020075a:	97ba                	add	a5,a5,a4
    8020075c:	078e                	slli	a5,a5,0x3
    8020075e:	97b6                	add	a5,a5,a3
    80200760:	639c                	ld	a5,0(a5)
    80200762:	85be                	mv	a1,a5
    80200764:	8532                	mv	a0,a2
    80200766:	714000ef          	jal	ra,80200e7a <strcmp>
    8020076a:	87aa                	mv	a5,a0
    8020076c:	ef9d                	bnez	a5,802007aa <execute+0x84>
    8020076e:	00001797          	auipc	a5,0x1
    80200772:	6da78793          	addi	a5,a5,1754 # 80201e48 <table>
    80200776:	6394                	ld	a3,0(a5)
    80200778:	fe842703          	lw	a4,-24(s0)
    8020077c:	87ba                	mv	a5,a4
    8020077e:	0786                	slli	a5,a5,0x1
    80200780:	97ba                	add	a5,a5,a4
    80200782:	078e                	slli	a5,a5,0x3
    80200784:	97b6                	add	a5,a5,a3
    80200786:	6b9c                	ld	a5,16(a5)
    80200788:	fdc42703          	lw	a4,-36(s0)
    8020078c:	fd043583          	ld	a1,-48(s0)
    80200790:	853a                	mv	a0,a4
    80200792:	9782                	jalr	a5
    80200794:	87aa                	mv	a5,a0
    80200796:	873e                	mv	a4,a5
    80200798:	00001797          	auipc	a5,0x1
    8020079c:	74078793          	addi	a5,a5,1856 # 80201ed8 <__cmd_exec_status>
    802007a0:	c398                	sw	a4,0(a5)
    802007a2:	4785                	li	a5,1
    802007a4:	fef42623          	sw	a5,-20(s0)
    802007a8:	a025                	j	802007d0 <execute+0xaa>
    802007aa:	fe842783          	lw	a5,-24(s0)
    802007ae:	2785                	addiw	a5,a5,1
    802007b0:	fef42423          	sw	a5,-24(s0)
    802007b4:	00001797          	auipc	a5,0x1
    802007b8:	69478793          	addi	a5,a5,1684 # 80201e48 <table>
    802007bc:	6394                	ld	a3,0(a5)
    802007be:	fe842703          	lw	a4,-24(s0)
    802007c2:	87ba                	mv	a5,a4
    802007c4:	0786                	slli	a5,a5,0x1
    802007c6:	97ba                	add	a5,a5,a4
    802007c8:	078e                	slli	a5,a5,0x3
    802007ca:	97b6                	add	a5,a5,a3
    802007cc:	639c                	ld	a5,0(a5)
    802007ce:	fbb5                	bnez	a5,80200742 <execute+0x1c>
    802007d0:	fec42783          	lw	a5,-20(s0)
    802007d4:	2781                	sext.w	a5,a5
    802007d6:	e38d                	bnez	a5,802007f8 <execute+0xd2>
    802007d8:	fd043783          	ld	a5,-48(s0)
    802007dc:	639c                	ld	a5,0(a5)
    802007de:	85be                	mv	a1,a5
    802007e0:	00002517          	auipc	a0,0x2
    802007e4:	8c850513          	addi	a0,a0,-1848 # 802020a8 <cmd_end_+0x68>
    802007e8:	2fc010ef          	jal	ra,80201ae4 <printf>
    802007ec:	00001797          	auipc	a5,0x1
    802007f0:	6ec78793          	addi	a5,a5,1772 # 80201ed8 <__cmd_exec_status>
    802007f4:	577d                	li	a4,-1
    802007f6:	c398                	sw	a4,0(a5)
    802007f8:	0001                	nop
    802007fa:	70a2                	ld	ra,40(sp)
    802007fc:	7402                	ld	s0,32(sp)
    802007fe:	6145                	addi	sp,sp,48
    80200800:	8082                	ret

0000000080200802 <shell>:
    80200802:	7155                	addi	sp,sp,-208
    80200804:	e586                	sd	ra,200(sp)
    80200806:	e1a2                	sd	s0,192(sp)
    80200808:	0980                	addi	s0,sp,208
    8020080a:	fc042a23          	sw	zero,-44(s0)
    8020080e:	fe042623          	sw	zero,-20(s0)
    80200812:	fe042423          	sw	zero,-24(s0)
    80200816:	a821                	j	8020082e <shell+0x2c>
    80200818:	fe842783          	lw	a5,-24(s0)
    8020081c:	17c1                	addi	a5,a5,-16
    8020081e:	97a2                	add	a5,a5,s0
    80200820:	fc078023          	sb	zero,-64(a5)
    80200824:	fe842783          	lw	a5,-24(s0)
    80200828:	2785                	addiw	a5,a5,1
    8020082a:	fef42423          	sw	a5,-24(s0)
    8020082e:	fe842783          	lw	a5,-24(s0)
    80200832:	0007871b          	sext.w	a4,a5
    80200836:	47fd                	li	a5,31
    80200838:	fee7d0e3          	bge	a5,a4,80200818 <shell+0x16>
    8020083c:	fe042223          	sw	zero,-28(s0)
    80200840:	a829                	j	8020085a <shell+0x58>
    80200842:	fe442783          	lw	a5,-28(s0)
    80200846:	078e                	slli	a5,a5,0x3
    80200848:	17c1                	addi	a5,a5,-16
    8020084a:	97a2                	add	a5,a5,s0
    8020084c:	f407b023          	sd	zero,-192(a5)
    80200850:	fe442783          	lw	a5,-28(s0)
    80200854:	2785                	addiw	a5,a5,1
    80200856:	fef42223          	sw	a5,-28(s0)
    8020085a:	fe442783          	lw	a5,-28(s0)
    8020085e:	0007871b          	sext.w	a4,a5
    80200862:	47bd                	li	a5,15
    80200864:	fce7dfe3          	bge	a5,a4,80200842 <shell+0x40>
    80200868:	803ff0ef          	jal	ra,8020006a <prepend_prompt>
    8020086c:	00002517          	auipc	a0,0x2
    80200870:	83450513          	addi	a0,a0,-1996 # 802020a0 <cmd_end_+0x60>
    80200874:	270010ef          	jal	ra,80201ae4 <printf>
    80200878:	801ff0ef          	jal	ra,80200078 <active_prompt>
    8020087c:	87aa                	mv	a5,a0
    8020087e:	26078363          	beqz	a5,80200ae4 <shell+0x2e2>
    80200882:	00001797          	auipc	a5,0x1
    80200886:	64678793          	addi	a5,a5,1606 # 80201ec8 <__read_char__>
    8020088a:	639c                	ld	a5,0(a5)
    8020088c:	9782                	jalr	a5
    8020088e:	87aa                	mv	a5,a0
    80200890:	fef42023          	sw	a5,-32(s0)
    80200894:	fe042783          	lw	a5,-32(s0)
    80200898:	0007871b          	sext.w	a4,a5
    8020089c:	57fd                	li	a5,-1
    8020089e:	24f70063          	beq	a4,a5,80200ade <shell+0x2dc>
    802008a2:	fe042783          	lw	a5,-32(s0)
    802008a6:	fcf40fa3          	sb	a5,-33(s0)
    802008aa:	fdf44783          	lbu	a5,-33(s0)
    802008ae:	0ff7f713          	zext.b	a4,a5
    802008b2:	47b5                	li	a5,13
    802008b4:	00f70963          	beq	a4,a5,802008c6 <shell+0xc4>
    802008b8:	fdf44783          	lbu	a5,-33(s0)
    802008bc:	0ff7f713          	zext.b	a4,a5
    802008c0:	47a9                	li	a5,10
    802008c2:	04f71763          	bne	a4,a5,80200910 <shell+0x10e>
    802008c6:	fd442783          	lw	a5,-44(s0)
    802008ca:	17c1                	addi	a5,a5,-16
    802008cc:	97a2                	add	a5,a5,s0
    802008ce:	fc078023          	sb	zero,-64(a5)
    802008d2:	00001797          	auipc	a5,0x1
    802008d6:	5fe78793          	addi	a5,a5,1534 # 80201ed0 <__write_char__>
    802008da:	639c                	ld	a5,0(a5)
    802008dc:	4529                	li	a0,10
    802008de:	9782                	jalr	a5
    802008e0:	0001                	nop
    802008e2:	fb040793          	addi	a5,s0,-80
    802008e6:	853e                	mv	a0,a5
    802008e8:	9cdff0ef          	jal	ra,802002b4 <add_command_to_history>
    802008ec:	fb040713          	addi	a4,s0,-80
    802008f0:	f3040793          	addi	a5,s0,-208
    802008f4:	4641                	li	a2,16
    802008f6:	85ba                	mv	a1,a4
    802008f8:	853e                	mv	a0,a5
    802008fa:	cf1ff0ef          	jal	ra,802005ea <parse_line>
    802008fe:	87aa                	mv	a5,a0
    80200900:	fcf42c23          	sw	a5,-40(s0)
    80200904:	fd842783          	lw	a5,-40(s0)
    80200908:	2781                	sext.w	a5,a5
    8020090a:	1ef05963          	blez	a5,80200afc <shell+0x2fa>
    8020090e:	aaf9                	j	80200aec <shell+0x2ea>
    80200910:	fdf44783          	lbu	a5,-33(s0)
    80200914:	0ff7f713          	zext.b	a4,a5
    80200918:	07f00793          	li	a5,127
    8020091c:	00f70963          	beq	a4,a5,8020092e <shell+0x12c>
    80200920:	fdf44783          	lbu	a5,-33(s0)
    80200924:	0ff7f713          	zext.b	a4,a5
    80200928:	47a1                	li	a5,8
    8020092a:	04f71663          	bne	a4,a5,80200976 <shell+0x174>
    8020092e:	00001797          	auipc	a5,0x1
    80200932:	51278793          	addi	a5,a5,1298 # 80201e40 <__echo>
    80200936:	0007c783          	lbu	a5,0(a5)
    8020093a:	0ff7f793          	zext.b	a5,a5
    8020093e:	0017c793          	xori	a5,a5,1
    80200942:	0ff7f793          	zext.b	a5,a5
    80200946:	c789                	beqz	a5,80200950 <shell+0x14e>
    80200948:	f40ff0ef          	jal	ra,80200088 <delete>
    8020094c:	f3cff0ef          	jal	ra,80200088 <delete>
    80200950:	fd442783          	lw	a5,-44(s0)
    80200954:	18078a63          	beqz	a5,80200ae8 <shell+0x2e6>
    80200958:	fd442783          	lw	a5,-44(s0)
    8020095c:	37fd                	addiw	a5,a5,-1
    8020095e:	2781                	sext.w	a5,a5
    80200960:	fcf42a23          	sw	a5,-44(s0)
    80200964:	fd442783          	lw	a5,-44(s0)
    80200968:	17c1                	addi	a5,a5,-16
    8020096a:	97a2                	add	a5,a5,s0
    8020096c:	fc078023          	sb	zero,-64(a5)
    80200970:	f18ff0ef          	jal	ra,80200088 <delete>
    80200974:	a289                	j	80200ab6 <shell+0x2b4>
    80200976:	fdf44783          	lbu	a5,-33(s0)
    8020097a:	0ff7f713          	zext.b	a4,a5
    8020097e:	47ed                	li	a5,27
    80200980:	00f71663          	bne	a4,a5,8020098c <shell+0x18a>
    80200984:	4785                	li	a5,1
    80200986:	fef42623          	sw	a5,-20(s0)
    8020098a:	a285                	j	80200aea <shell+0x2e8>
    8020098c:	fdf44783          	lbu	a5,-33(s0)
    80200990:	0ff7f713          	zext.b	a4,a5
    80200994:	05b00793          	li	a5,91
    80200998:	00f71d63          	bne	a4,a5,802009b2 <shell+0x1b0>
    8020099c:	fec42783          	lw	a5,-20(s0)
    802009a0:	0007871b          	sext.w	a4,a5
    802009a4:	4785                	li	a5,1
    802009a6:	00f71663          	bne	a4,a5,802009b2 <shell+0x1b0>
    802009aa:	4789                	li	a5,2
    802009ac:	fef42623          	sw	a5,-20(s0)
    802009b0:	aa2d                	j	80200aea <shell+0x2e8>
    802009b2:	fdf44783          	lbu	a5,-33(s0)
    802009b6:	0ff7f713          	zext.b	a4,a5
    802009ba:	04300793          	li	a5,67
    802009be:	00f70a63          	beq	a4,a5,802009d2 <shell+0x1d0>
    802009c2:	fdf44783          	lbu	a5,-33(s0)
    802009c6:	0ff7f713          	zext.b	a4,a5
    802009ca:	04400793          	li	a5,68
    802009ce:	00f71963          	bne	a4,a5,802009e0 <shell+0x1de>
    802009d2:	fec42783          	lw	a5,-20(s0)
    802009d6:	2781                	sext.w	a5,a5
    802009d8:	c781                	beqz	a5,802009e0 <shell+0x1de>
    802009da:	fe042623          	sw	zero,-20(s0)
    802009de:	a231                	j	80200aea <shell+0x2e8>
    802009e0:	fdf44783          	lbu	a5,-33(s0)
    802009e4:	0ff7f713          	zext.b	a4,a5
    802009e8:	04100793          	li	a5,65
    802009ec:	00f70a63          	beq	a4,a5,80200a00 <shell+0x1fe>
    802009f0:	fdf44783          	lbu	a5,-33(s0)
    802009f4:	0ff7f713          	zext.b	a4,a5
    802009f8:	04200793          	li	a5,66
    802009fc:	06f71f63          	bne	a4,a5,80200a7a <shell+0x278>
    80200a00:	fec42783          	lw	a5,-20(s0)
    80200a04:	0007871b          	sext.w	a4,a5
    80200a08:	4789                	li	a5,2
    80200a0a:	06f71863          	bne	a4,a5,80200a7a <shell+0x278>
    80200a0e:	00001797          	auipc	a5,0x1
    80200a12:	43278793          	addi	a5,a5,1074 # 80201e40 <__echo>
    80200a16:	0007c783          	lbu	a5,0(a5)
    80200a1a:	0ff7f793          	zext.b	a5,a5
    80200a1e:	0017c793          	xori	a5,a5,1
    80200a22:	0ff7f793          	zext.b	a5,a5
    80200a26:	cb89                	beqz	a5,80200a38 <shell+0x236>
    80200a28:	fd442783          	lw	a5,-44(s0)
    80200a2c:	2791                	addiw	a5,a5,4
    80200a2e:	2781                	sext.w	a5,a5
    80200a30:	853e                	mv	a0,a5
    80200a32:	e94ff0ef          	jal	ra,802000c6 <clear_prompt>
    80200a36:	a031                	j	80200a42 <shell+0x240>
    80200a38:	fd442783          	lw	a5,-44(s0)
    80200a3c:	853e                	mv	a0,a5
    80200a3e:	e88ff0ef          	jal	ra,802000c6 <clear_prompt>
    80200a42:	fdf44783          	lbu	a5,-33(s0)
    80200a46:	0ff7f713          	zext.b	a4,a5
    80200a4a:	04100793          	li	a5,65
    80200a4e:	00f71b63          	bne	a4,a5,80200a64 <shell+0x262>
    80200a52:	fd440713          	addi	a4,s0,-44
    80200a56:	fb040793          	addi	a5,s0,-80
    80200a5a:	85ba                	mv	a1,a4
    80200a5c:	853e                	mv	a0,a5
    80200a5e:	e9aff0ef          	jal	ra,802000f8 <handle_up_arrow>
    80200a62:	a809                	j	80200a74 <shell+0x272>
    80200a64:	fd440713          	addi	a4,s0,-44
    80200a68:	fb040793          	addi	a5,s0,-80
    80200a6c:	85ba                	mv	a1,a4
    80200a6e:	853e                	mv	a0,a5
    80200a70:	f72ff0ef          	jal	ra,802001e2 <handle_down_arrow>
    80200a74:	fe042623          	sw	zero,-20(s0)
    80200a78:	a88d                	j	80200aea <shell+0x2e8>
    80200a7a:	fdf44783          	lbu	a5,-33(s0)
    80200a7e:	0ff7f713          	zext.b	a4,a5
    80200a82:	47a5                	li	a5,9
    80200a84:	00f71b63          	bne	a4,a5,80200a9a <shell+0x298>
    80200a88:	fd440713          	addi	a4,s0,-44
    80200a8c:	fb040793          	addi	a5,s0,-80
    80200a90:	85ba                	mv	a1,a4
    80200a92:	853e                	mv	a0,a5
    80200a94:	a0fff0ef          	jal	ra,802004a2 <handle_tab>
    80200a98:	a889                	j	80200aea <shell+0x2e8>
    80200a9a:	fd442783          	lw	a5,-44(s0)
    80200a9e:	17c1                	addi	a5,a5,-16
    80200aa0:	97a2                	add	a5,a5,s0
    80200aa2:	fdf44703          	lbu	a4,-33(s0)
    80200aa6:	fce78023          	sb	a4,-64(a5)
    80200aaa:	fd442783          	lw	a5,-44(s0)
    80200aae:	2785                	addiw	a5,a5,1
    80200ab0:	2781                	sext.w	a5,a5
    80200ab2:	fcf42a23          	sw	a5,-44(s0)
    80200ab6:	00001797          	auipc	a5,0x1
    80200aba:	38a78793          	addi	a5,a5,906 # 80201e40 <__echo>
    80200abe:	0007c783          	lbu	a5,0(a5)
    80200ac2:	0ff7f793          	zext.b	a5,a5
    80200ac6:	da0789e3          	beqz	a5,80200878 <shell+0x76>
    80200aca:	00001797          	auipc	a5,0x1
    80200ace:	40678793          	addi	a5,a5,1030 # 80201ed0 <__write_char__>
    80200ad2:	639c                	ld	a5,0(a5)
    80200ad4:	fdf44703          	lbu	a4,-33(s0)
    80200ad8:	853a                	mv	a0,a4
    80200ada:	9782                	jalr	a5
    80200adc:	bb71                	j	80200878 <shell+0x76>
    80200ade:	d7eff0ef          	jal	ra,8020005c <loop>
    80200ae2:	bb59                	j	80200878 <shell+0x76>
    80200ae4:	0001                	nop
    80200ae6:	bb49                	j	80200878 <shell+0x76>
    80200ae8:	0001                	nop
    80200aea:	b379                	j	80200878 <shell+0x76>
    80200aec:	f3040713          	addi	a4,s0,-208
    80200af0:	fd842783          	lw	a5,-40(s0)
    80200af4:	85ba                	mv	a1,a4
    80200af6:	853e                	mv	a0,a5
    80200af8:	c2fff0ef          	jal	ra,80200726 <execute>
    80200afc:	0001                	nop
    80200afe:	60ae                	ld	ra,200(sp)
    80200b00:	640e                	ld	s0,192(sp)
    80200b02:	6169                	addi	sp,sp,208
    80200b04:	8082                	ret

0000000080200b06 <exec_auto_cmds>:
    80200b06:	1101                	addi	sp,sp,-32
    80200b08:	ec06                	sd	ra,24(sp)
    80200b0a:	e822                	sd	s0,16(sp)
    80200b0c:	1000                	addi	s0,sp,32
    80200b0e:	fe042623          	sw	zero,-20(s0)
    80200b12:	a035                	j	80200b3e <exec_auto_cmds+0x38>
    80200b14:	00001797          	auipc	a5,0x1
    80200b18:	33c78793          	addi	a5,a5,828 # 80201e50 <auto_load>
    80200b1c:	6394                	ld	a3,0(a5)
    80200b1e:	fec42703          	lw	a4,-20(s0)
    80200b22:	87ba                	mv	a5,a4
    80200b24:	0786                	slli	a5,a5,0x1
    80200b26:	97ba                	add	a5,a5,a4
    80200b28:	078e                	slli	a5,a5,0x3
    80200b2a:	97b6                	add	a5,a5,a3
    80200b2c:	6b9c                	ld	a5,16(a5)
    80200b2e:	4581                	li	a1,0
    80200b30:	4501                	li	a0,0
    80200b32:	9782                	jalr	a5
    80200b34:	fec42783          	lw	a5,-20(s0)
    80200b38:	2785                	addiw	a5,a5,1
    80200b3a:	fef42623          	sw	a5,-20(s0)
    80200b3e:	00001797          	auipc	a5,0x1
    80200b42:	31278793          	addi	a5,a5,786 # 80201e50 <auto_load>
    80200b46:	6394                	ld	a3,0(a5)
    80200b48:	fec42703          	lw	a4,-20(s0)
    80200b4c:	87ba                	mv	a5,a4
    80200b4e:	0786                	slli	a5,a5,0x1
    80200b50:	97ba                	add	a5,a5,a4
    80200b52:	078e                	slli	a5,a5,0x3
    80200b54:	97b6                	add	a5,a5,a3
    80200b56:	639c                	ld	a5,0(a5)
    80200b58:	ffd5                	bnez	a5,80200b14 <exec_auto_cmds+0xe>
    80200b5a:	0001                	nop
    80200b5c:	0001                	nop
    80200b5e:	60e2                	ld	ra,24(sp)
    80200b60:	6442                	ld	s0,16(sp)
    80200b62:	6105                	addi	sp,sp,32
    80200b64:	8082                	ret

0000000080200b66 <build_info>:
    80200b66:	1101                	addi	sp,sp,-32
    80200b68:	ec06                	sd	ra,24(sp)
    80200b6a:	e822                	sd	s0,16(sp)
    80200b6c:	1000                	addi	s0,sp,32
    80200b6e:	87aa                	mv	a5,a0
    80200b70:	feb43023          	sd	a1,-32(s0)
    80200b74:	fef42623          	sw	a5,-20(s0)
    80200b78:	00001517          	auipc	a0,0x1
    80200b7c:	57050513          	addi	a0,a0,1392 # 802020e8 <cmd_end_+0xa8>
    80200b80:	765000ef          	jal	ra,80201ae4 <printf>
    80200b84:	4781                	li	a5,0
    80200b86:	853e                	mv	a0,a5
    80200b88:	60e2                	ld	ra,24(sp)
    80200b8a:	6442                	ld	s0,16(sp)
    80200b8c:	6105                	addi	sp,sp,32
    80200b8e:	8082                	ret

0000000080200b90 <initial_setup>:
    80200b90:	1101                	addi	sp,sp,-32
    80200b92:	ec06                	sd	ra,24(sp)
    80200b94:	e822                	sd	s0,16(sp)
    80200b96:	1000                	addi	s0,sp,32
    80200b98:	00001797          	auipc	a5,0x1
    80200b9c:	2d87b783          	ld	a5,728(a5) # 80201e70 <_GLOBAL_OFFSET_TABLE_+0x8>
    80200ba0:	fef43423          	sd	a5,-24(s0)
    80200ba4:	00001797          	auipc	a5,0x1
    80200ba8:	2f47b783          	ld	a5,756(a5) # 80201e98 <_GLOBAL_OFFSET_TABLE_+0x30>
    80200bac:	fef43023          	sd	a5,-32(s0)
    80200bb0:	fe043703          	ld	a4,-32(s0)
    80200bb4:	fe843783          	ld	a5,-24(s0)
    80200bb8:	02f70b63          	beq	a4,a5,80200bee <initial_setup+0x5e>
    80200bbc:	a00d                	j	80200bde <initial_setup+0x4e>
    80200bbe:	fe843703          	ld	a4,-24(s0)
    80200bc2:	00170793          	addi	a5,a4,1
    80200bc6:	fef43423          	sd	a5,-24(s0)
    80200bca:	fe043783          	ld	a5,-32(s0)
    80200bce:	00178693          	addi	a3,a5,1
    80200bd2:	fed43023          	sd	a3,-32(s0)
    80200bd6:	00074703          	lbu	a4,0(a4)
    80200bda:	00e78023          	sb	a4,0(a5)
    80200bde:	fe043703          	ld	a4,-32(s0)
    80200be2:	00001797          	auipc	a5,0x1
    80200be6:	2be7b783          	ld	a5,702(a5) # 80201ea0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80200bea:	fcf76ae3          	bltu	a4,a5,80200bbe <initial_setup+0x2e>
    80200bee:	00001797          	auipc	a5,0x1
    80200bf2:	29a7b783          	ld	a5,666(a5) # 80201e88 <_GLOBAL_OFFSET_TABLE_+0x20>
    80200bf6:	fef43023          	sd	a5,-32(s0)
    80200bfa:	a811                	j	80200c0e <initial_setup+0x7e>
    80200bfc:	fe043783          	ld	a5,-32(s0)
    80200c00:	00078023          	sb	zero,0(a5)
    80200c04:	fe043783          	ld	a5,-32(s0)
    80200c08:	0785                	addi	a5,a5,1
    80200c0a:	fef43023          	sd	a5,-32(s0)
    80200c0e:	fe043703          	ld	a4,-32(s0)
    80200c12:	00001797          	auipc	a5,0x1
    80200c16:	26e7b783          	ld	a5,622(a5) # 80201e80 <_GLOBAL_OFFSET_TABLE_+0x18>
    80200c1a:	fef761e3          	bltu	a4,a5,80200bfc <initial_setup+0x6c>
    80200c1e:	13e010ef          	jal	ra,80201d5c <platform_init>
    80200c22:	0001                	nop
    80200c24:	60e2                	ld	ra,24(sp)
    80200c26:	6442                	ld	s0,16(sp)
    80200c28:	6105                	addi	sp,sp,32
    80200c2a:	8082                	ret

0000000080200c2c <prompt>:
    80200c2c:	1141                	addi	sp,sp,-16
    80200c2e:	e406                	sd	ra,8(sp)
    80200c30:	e022                	sd	s0,0(sp)
    80200c32:	0800                	addi	s0,sp,16
    80200c34:	f5dff0ef          	jal	ra,80200b90 <initial_setup>
    80200c38:	ecfff0ef          	jal	ra,80200b06 <exec_auto_cmds>
    80200c3c:	c12ff0ef          	jal	ra,8020004e <setup>
    80200c40:	bc3ff0ef          	jal	ra,80200802 <shell>
    80200c44:	bff5                	j	80200c40 <prompt+0x14>

0000000080200c46 <exec>:
    80200c46:	7171                	addi	sp,sp,-176
    80200c48:	f506                	sd	ra,168(sp)
    80200c4a:	f122                	sd	s0,160(sp)
    80200c4c:	1900                	addi	s0,sp,176
    80200c4e:	f4a43c23          	sd	a0,-168(s0)
    80200c52:	f6840793          	addi	a5,s0,-152
    80200c56:	4641                	li	a2,16
    80200c58:	f5843583          	ld	a1,-168(s0)
    80200c5c:	853e                	mv	a0,a5
    80200c5e:	98dff0ef          	jal	ra,802005ea <parse_line>
    80200c62:	87aa                	mv	a5,a0
    80200c64:	fef42623          	sw	a5,-20(s0)
    80200c68:	fec42783          	lw	a5,-20(s0)
    80200c6c:	2781                	sext.w	a5,a5
    80200c6e:	00f05a63          	blez	a5,80200c82 <exec+0x3c>
    80200c72:	f6840713          	addi	a4,s0,-152
    80200c76:	fec42783          	lw	a5,-20(s0)
    80200c7a:	85ba                	mv	a1,a4
    80200c7c:	853e                	mv	a0,a5
    80200c7e:	aa9ff0ef          	jal	ra,80200726 <execute>
    80200c82:	00001797          	auipc	a5,0x1
    80200c86:	25678793          	addi	a5,a5,598 # 80201ed8 <__cmd_exec_status>
    80200c8a:	439c                	lw	a5,0(a5)
    80200c8c:	2781                	sext.w	a5,a5
    80200c8e:	853e                	mv	a0,a5
    80200c90:	70aa                	ld	ra,168(sp)
    80200c92:	740a                	ld	s0,160(sp)
    80200c94:	614d                	addi	sp,sp,176
    80200c96:	8082                	ret

0000000080200c98 <get_function_addr>:
    80200c98:	7179                	addi	sp,sp,-48
    80200c9a:	f406                	sd	ra,40(sp)
    80200c9c:	f022                	sd	s0,32(sp)
    80200c9e:	1800                	addi	s0,sp,48
    80200ca0:	fca43c23          	sd	a0,-40(s0)
    80200ca4:	fe042623          	sw	zero,-20(s0)
    80200ca8:	a881                	j	80200cf8 <get_function_addr+0x60>
    80200caa:	00001797          	auipc	a5,0x1
    80200cae:	19e78793          	addi	a5,a5,414 # 80201e48 <table>
    80200cb2:	6394                	ld	a3,0(a5)
    80200cb4:	fec42703          	lw	a4,-20(s0)
    80200cb8:	87ba                	mv	a5,a4
    80200cba:	0786                	slli	a5,a5,0x1
    80200cbc:	97ba                	add	a5,a5,a4
    80200cbe:	078e                	slli	a5,a5,0x3
    80200cc0:	97b6                	add	a5,a5,a3
    80200cc2:	639c                	ld	a5,0(a5)
    80200cc4:	85be                	mv	a1,a5
    80200cc6:	fd843503          	ld	a0,-40(s0)
    80200cca:	1b0000ef          	jal	ra,80200e7a <strcmp>
    80200cce:	87aa                	mv	a5,a0
    80200cd0:	ef99                	bnez	a5,80200cee <get_function_addr+0x56>
    80200cd2:	00001797          	auipc	a5,0x1
    80200cd6:	17678793          	addi	a5,a5,374 # 80201e48 <table>
    80200cda:	6394                	ld	a3,0(a5)
    80200cdc:	fec42703          	lw	a4,-20(s0)
    80200ce0:	87ba                	mv	a5,a4
    80200ce2:	0786                	slli	a5,a5,0x1
    80200ce4:	97ba                	add	a5,a5,a4
    80200ce6:	078e                	slli	a5,a5,0x3
    80200ce8:	97b6                	add	a5,a5,a3
    80200cea:	6b9c                	ld	a5,16(a5)
    80200cec:	a02d                	j	80200d16 <get_function_addr+0x7e>
    80200cee:	fec42783          	lw	a5,-20(s0)
    80200cf2:	2785                	addiw	a5,a5,1
    80200cf4:	fef42623          	sw	a5,-20(s0)
    80200cf8:	00001797          	auipc	a5,0x1
    80200cfc:	15078793          	addi	a5,a5,336 # 80201e48 <table>
    80200d00:	6394                	ld	a3,0(a5)
    80200d02:	fec42703          	lw	a4,-20(s0)
    80200d06:	87ba                	mv	a5,a4
    80200d08:	0786                	slli	a5,a5,0x1
    80200d0a:	97ba                	add	a5,a5,a4
    80200d0c:	078e                	slli	a5,a5,0x3
    80200d0e:	97b6                	add	a5,a5,a3
    80200d10:	639c                	ld	a5,0(a5)
    80200d12:	ffc1                	bnez	a5,80200caa <get_function_addr+0x12>
    80200d14:	4781                	li	a5,0
    80200d16:	853e                	mv	a0,a5
    80200d18:	70a2                	ld	ra,40(sp)
    80200d1a:	7402                	ld	s0,32(sp)
    80200d1c:	6145                	addi	sp,sp,48
    80200d1e:	8082                	ret

0000000080200d20 <help>:
    80200d20:	7179                	addi	sp,sp,-48
    80200d22:	f406                	sd	ra,40(sp)
    80200d24:	f022                	sd	s0,32(sp)
    80200d26:	1800                	addi	s0,sp,48
    80200d28:	87aa                	mv	a5,a0
    80200d2a:	fcb43823          	sd	a1,-48(s0)
    80200d2e:	fcf42e23          	sw	a5,-36(s0)
    80200d32:	fe042623          	sw	zero,-20(s0)
    80200d36:	4785                	li	a5,1
    80200d38:	fef405a3          	sb	a5,-21(s0)
    80200d3c:	fdc42783          	lw	a5,-36(s0)
    80200d40:	0007871b          	sext.w	a4,a5
    80200d44:	4785                	li	a5,1
    80200d46:	02e7d263          	bge	a5,a4,80200d6a <help+0x4a>
    80200d4a:	fd043783          	ld	a5,-48(s0)
    80200d4e:	07a1                	addi	a5,a5,8
    80200d50:	639c                	ld	a5,0(a5)
    80200d52:	00001597          	auipc	a1,0x1
    80200d56:	3de58593          	addi	a1,a1,990 # 80202130 <cmd_end_+0xf0>
    80200d5a:	853e                	mv	a0,a5
    80200d5c:	11e000ef          	jal	ra,80200e7a <strcmp>
    80200d60:	87aa                	mv	a5,a0
    80200d62:	e781                	bnez	a5,80200d6a <help+0x4a>
    80200d64:	fe0405a3          	sb	zero,-21(s0)
    80200d68:	a039                	j	80200d76 <help+0x56>
    80200d6a:	00001517          	auipc	a0,0x1
    80200d6e:	3ce50513          	addi	a0,a0,974 # 80202138 <cmd_end_+0xf8>
    80200d72:	573000ef          	jal	ra,80201ae4 <printf>
    80200d76:	a0bd                	j	80200de4 <help+0xc4>
    80200d78:	00001797          	auipc	a5,0x1
    80200d7c:	0d078793          	addi	a5,a5,208 # 80201e48 <table>
    80200d80:	6394                	ld	a3,0(a5)
    80200d82:	fec42703          	lw	a4,-20(s0)
    80200d86:	87ba                	mv	a5,a4
    80200d88:	0786                	slli	a5,a5,0x1
    80200d8a:	97ba                	add	a5,a5,a4
    80200d8c:	078e                	slli	a5,a5,0x3
    80200d8e:	97b6                	add	a5,a5,a3
    80200d90:	639c                	ld	a5,0(a5)
    80200d92:	853e                	mv	a0,a5
    80200d94:	551000ef          	jal	ra,80201ae4 <printf>
    80200d98:	feb44783          	lbu	a5,-21(s0)
    80200d9c:	0ff7f793          	zext.b	a5,a5
    80200da0:	c79d                	beqz	a5,80200dce <help+0xae>
    80200da2:	00001517          	auipc	a0,0x1
    80200da6:	3b650513          	addi	a0,a0,950 # 80202158 <cmd_end_+0x118>
    80200daa:	53b000ef          	jal	ra,80201ae4 <printf>
    80200dae:	00001797          	auipc	a5,0x1
    80200db2:	09a78793          	addi	a5,a5,154 # 80201e48 <table>
    80200db6:	6394                	ld	a3,0(a5)
    80200db8:	fec42703          	lw	a4,-20(s0)
    80200dbc:	87ba                	mv	a5,a4
    80200dbe:	0786                	slli	a5,a5,0x1
    80200dc0:	97ba                	add	a5,a5,a4
    80200dc2:	078e                	slli	a5,a5,0x3
    80200dc4:	97b6                	add	a5,a5,a3
    80200dc6:	679c                	ld	a5,8(a5)
    80200dc8:	853e                	mv	a0,a5
    80200dca:	51b000ef          	jal	ra,80201ae4 <printf>
    80200dce:	00001517          	auipc	a0,0x1
    80200dd2:	2ca50513          	addi	a0,a0,714 # 80202098 <cmd_end_+0x58>
    80200dd6:	50f000ef          	jal	ra,80201ae4 <printf>
    80200dda:	fec42783          	lw	a5,-20(s0)
    80200dde:	2785                	addiw	a5,a5,1
    80200de0:	fef42623          	sw	a5,-20(s0)
    80200de4:	00001797          	auipc	a5,0x1
    80200de8:	06478793          	addi	a5,a5,100 # 80201e48 <table>
    80200dec:	6394                	ld	a3,0(a5)
    80200dee:	fec42703          	lw	a4,-20(s0)
    80200df2:	87ba                	mv	a5,a4
    80200df4:	0786                	slli	a5,a5,0x1
    80200df6:	97ba                	add	a5,a5,a4
    80200df8:	078e                	slli	a5,a5,0x3
    80200dfa:	97b6                	add	a5,a5,a3
    80200dfc:	639c                	ld	a5,0(a5)
    80200dfe:	ffad                	bnez	a5,80200d78 <help+0x58>
    80200e00:	4781                	li	a5,0
    80200e02:	853e                	mv	a0,a5
    80200e04:	70a2                	ld	ra,40(sp)
    80200e06:	7402                	ld	s0,32(sp)
    80200e08:	6145                	addi	sp,sp,48
    80200e0a:	8082                	ret

0000000080200e0c <cmd_exec_status>:
    80200e0c:	1101                	addi	sp,sp,-32
    80200e0e:	ec06                	sd	ra,24(sp)
    80200e10:	e822                	sd	s0,16(sp)
    80200e12:	1000                	addi	s0,sp,32
    80200e14:	87aa                	mv	a5,a0
    80200e16:	feb43023          	sd	a1,-32(s0)
    80200e1a:	fef42623          	sw	a5,-20(s0)
    80200e1e:	00001797          	auipc	a5,0x1
    80200e22:	0ba78793          	addi	a5,a5,186 # 80201ed8 <__cmd_exec_status>
    80200e26:	439c                	lw	a5,0(a5)
    80200e28:	2781                	sext.w	a5,a5
    80200e2a:	85be                	mv	a1,a5
    80200e2c:	00001517          	auipc	a0,0x1
    80200e30:	33450513          	addi	a0,a0,820 # 80202160 <cmd_end_+0x120>
    80200e34:	4b1000ef          	jal	ra,80201ae4 <printf>
    80200e38:	4781                	li	a5,0
    80200e3a:	853e                	mv	a0,a5
    80200e3c:	60e2                	ld	ra,24(sp)
    80200e3e:	6442                	ld	s0,16(sp)
    80200e40:	6105                	addi	sp,sp,32
    80200e42:	8082                	ret

0000000080200e44 <strlen>:
    80200e44:	7179                	addi	sp,sp,-48
    80200e46:	f422                	sd	s0,40(sp)
    80200e48:	1800                	addi	s0,sp,48
    80200e4a:	fca43c23          	sd	a0,-40(s0)
    80200e4e:	fe043423          	sd	zero,-24(s0)
    80200e52:	a031                	j	80200e5e <strlen+0x1a>
    80200e54:	fe843783          	ld	a5,-24(s0)
    80200e58:	0785                	addi	a5,a5,1
    80200e5a:	fef43423          	sd	a5,-24(s0)
    80200e5e:	fd843703          	ld	a4,-40(s0)
    80200e62:	fe843783          	ld	a5,-24(s0)
    80200e66:	97ba                	add	a5,a5,a4
    80200e68:	0007c783          	lbu	a5,0(a5)
    80200e6c:	f7e5                	bnez	a5,80200e54 <strlen+0x10>
    80200e6e:	fe843783          	ld	a5,-24(s0)
    80200e72:	853e                	mv	a0,a5
    80200e74:	7422                	ld	s0,40(sp)
    80200e76:	6145                	addi	sp,sp,48
    80200e78:	8082                	ret

0000000080200e7a <strcmp>:
    80200e7a:	1101                	addi	sp,sp,-32
    80200e7c:	ec22                	sd	s0,24(sp)
    80200e7e:	1000                	addi	s0,sp,32
    80200e80:	fea43423          	sd	a0,-24(s0)
    80200e84:	feb43023          	sd	a1,-32(s0)
    80200e88:	a819                	j	80200e9e <strcmp+0x24>
    80200e8a:	fe843783          	ld	a5,-24(s0)
    80200e8e:	0785                	addi	a5,a5,1
    80200e90:	fef43423          	sd	a5,-24(s0)
    80200e94:	fe043783          	ld	a5,-32(s0)
    80200e98:	0785                	addi	a5,a5,1
    80200e9a:	fef43023          	sd	a5,-32(s0)
    80200e9e:	fe843783          	ld	a5,-24(s0)
    80200ea2:	0007c783          	lbu	a5,0(a5)
    80200ea6:	cb99                	beqz	a5,80200ebc <strcmp+0x42>
    80200ea8:	fe843783          	ld	a5,-24(s0)
    80200eac:	0007c703          	lbu	a4,0(a5)
    80200eb0:	fe043783          	ld	a5,-32(s0)
    80200eb4:	0007c783          	lbu	a5,0(a5)
    80200eb8:	fcf709e3          	beq	a4,a5,80200e8a <strcmp+0x10>
    80200ebc:	fe843783          	ld	a5,-24(s0)
    80200ec0:	0007c783          	lbu	a5,0(a5)
    80200ec4:	0007871b          	sext.w	a4,a5
    80200ec8:	fe043783          	ld	a5,-32(s0)
    80200ecc:	0007c783          	lbu	a5,0(a5)
    80200ed0:	2781                	sext.w	a5,a5
    80200ed2:	40f707bb          	subw	a5,a4,a5
    80200ed6:	2781                	sext.w	a5,a5
    80200ed8:	853e                	mv	a0,a5
    80200eda:	6462                	ld	s0,24(sp)
    80200edc:	6105                	addi	sp,sp,32
    80200ede:	8082                	ret

0000000080200ee0 <strcpy>:
    80200ee0:	1101                	addi	sp,sp,-32
    80200ee2:	ec22                	sd	s0,24(sp)
    80200ee4:	1000                	addi	s0,sp,32
    80200ee6:	fea43423          	sd	a0,-24(s0)
    80200eea:	feb43023          	sd	a1,-32(s0)
    80200eee:	a00d                	j	80200f10 <strcpy+0x30>
    80200ef0:	fe043703          	ld	a4,-32(s0)
    80200ef4:	00170793          	addi	a5,a4,1
    80200ef8:	fef43023          	sd	a5,-32(s0)
    80200efc:	fe843783          	ld	a5,-24(s0)
    80200f00:	00178693          	addi	a3,a5,1
    80200f04:	fed43423          	sd	a3,-24(s0)
    80200f08:	00074703          	lbu	a4,0(a4)
    80200f0c:	00e78023          	sb	a4,0(a5)
    80200f10:	fe043783          	ld	a5,-32(s0)
    80200f14:	0007c783          	lbu	a5,0(a5)
    80200f18:	ffe1                	bnez	a5,80200ef0 <strcpy+0x10>
    80200f1a:	fe843783          	ld	a5,-24(s0)
    80200f1e:	00078023          	sb	zero,0(a5)
    80200f22:	4781                	li	a5,0
    80200f24:	853e                	mv	a0,a5
    80200f26:	6462                	ld	s0,24(sp)
    80200f28:	6105                	addi	sp,sp,32
    80200f2a:	8082                	ret

0000000080200f2c <memcpy>:
    80200f2c:	715d                	addi	sp,sp,-80
    80200f2e:	e4a2                	sd	s0,72(sp)
    80200f30:	0880                	addi	s0,sp,80
    80200f32:	fca43423          	sd	a0,-56(s0)
    80200f36:	fcb43023          	sd	a1,-64(s0)
    80200f3a:	fac43c23          	sd	a2,-72(s0)
    80200f3e:	fc043783          	ld	a5,-64(s0)
    80200f42:	fef43023          	sd	a5,-32(s0)
    80200f46:	fc843783          	ld	a5,-56(s0)
    80200f4a:	fcf43c23          	sd	a5,-40(s0)
    80200f4e:	fe043423          	sd	zero,-24(s0)
    80200f52:	a025                	j	80200f7a <memcpy+0x4e>
    80200f54:	fe043703          	ld	a4,-32(s0)
    80200f58:	fe843783          	ld	a5,-24(s0)
    80200f5c:	973e                	add	a4,a4,a5
    80200f5e:	fd843683          	ld	a3,-40(s0)
    80200f62:	fe843783          	ld	a5,-24(s0)
    80200f66:	97b6                	add	a5,a5,a3
    80200f68:	00074703          	lbu	a4,0(a4)
    80200f6c:	00e78023          	sb	a4,0(a5)
    80200f70:	fe843783          	ld	a5,-24(s0)
    80200f74:	0785                	addi	a5,a5,1
    80200f76:	fef43423          	sd	a5,-24(s0)
    80200f7a:	fe843703          	ld	a4,-24(s0)
    80200f7e:	fb843783          	ld	a5,-72(s0)
    80200f82:	fcf769e3          	bltu	a4,a5,80200f54 <memcpy+0x28>
    80200f86:	4781                	li	a5,0
    80200f88:	853e                	mv	a0,a5
    80200f8a:	6426                	ld	s0,72(sp)
    80200f8c:	6161                	addi	sp,sp,80
    80200f8e:	8082                	ret

0000000080200f90 <memset>:
    80200f90:	7139                	addi	sp,sp,-64
    80200f92:	fc22                	sd	s0,56(sp)
    80200f94:	0080                	addi	s0,sp,64
    80200f96:	fca43c23          	sd	a0,-40(s0)
    80200f9a:	87ae                	mv	a5,a1
    80200f9c:	fcc43423          	sd	a2,-56(s0)
    80200fa0:	fcf42a23          	sw	a5,-44(s0)
    80200fa4:	fd843783          	ld	a5,-40(s0)
    80200fa8:	fef43023          	sd	a5,-32(s0)
    80200fac:	fe043423          	sd	zero,-24(s0)
    80200fb0:	a00d                	j	80200fd2 <memset+0x42>
    80200fb2:	fe043703          	ld	a4,-32(s0)
    80200fb6:	fe843783          	ld	a5,-24(s0)
    80200fba:	97ba                	add	a5,a5,a4
    80200fbc:	fd442703          	lw	a4,-44(s0)
    80200fc0:	0ff77713          	zext.b	a4,a4
    80200fc4:	00e78023          	sb	a4,0(a5)
    80200fc8:	fe843783          	ld	a5,-24(s0)
    80200fcc:	0785                	addi	a5,a5,1
    80200fce:	fef43423          	sd	a5,-24(s0)
    80200fd2:	fe843703          	ld	a4,-24(s0)
    80200fd6:	fc843783          	ld	a5,-56(s0)
    80200fda:	fcf76ce3          	bltu	a4,a5,80200fb2 <memset+0x22>
    80200fde:	4781                	li	a5,0
    80200fe0:	853e                	mv	a0,a5
    80200fe2:	7462                	ld	s0,56(sp)
    80200fe4:	6121                	addi	sp,sp,64
    80200fe6:	8082                	ret

0000000080200fe8 <atoi>:
    80200fe8:	7179                	addi	sp,sp,-48
    80200fea:	f422                	sd	s0,40(sp)
    80200fec:	1800                	addi	s0,sp,48
    80200fee:	fca43c23          	sd	a0,-40(s0)
    80200ff2:	fe042623          	sw	zero,-20(s0)
    80200ff6:	fe042423          	sw	zero,-24(s0)
    80200ffa:	a83d                	j	80201038 <atoi+0x50>
    80200ffc:	fec42783          	lw	a5,-20(s0)
    80201000:	873e                	mv	a4,a5
    80201002:	87ba                	mv	a5,a4
    80201004:	0027979b          	slliw	a5,a5,0x2
    80201008:	9fb9                	addw	a5,a5,a4
    8020100a:	0017979b          	slliw	a5,a5,0x1
    8020100e:	0007871b          	sext.w	a4,a5
    80201012:	fe842783          	lw	a5,-24(s0)
    80201016:	fd843683          	ld	a3,-40(s0)
    8020101a:	97b6                	add	a5,a5,a3
    8020101c:	0007c783          	lbu	a5,0(a5)
    80201020:	2781                	sext.w	a5,a5
    80201022:	9fb9                	addw	a5,a5,a4
    80201024:	2781                	sext.w	a5,a5
    80201026:	fd07879b          	addiw	a5,a5,-48
    8020102a:	fef42623          	sw	a5,-20(s0)
    8020102e:	fe842783          	lw	a5,-24(s0)
    80201032:	2785                	addiw	a5,a5,1
    80201034:	fef42423          	sw	a5,-24(s0)
    80201038:	fe842783          	lw	a5,-24(s0)
    8020103c:	fd843703          	ld	a4,-40(s0)
    80201040:	97ba                	add	a5,a5,a4
    80201042:	0007c783          	lbu	a5,0(a5)
    80201046:	fbdd                	bnez	a5,80200ffc <atoi+0x14>
    80201048:	fec42783          	lw	a5,-20(s0)
    8020104c:	853e                	mv	a0,a5
    8020104e:	7422                	ld	s0,40(sp)
    80201050:	6145                	addi	sp,sp,48
    80201052:	8082                	ret

0000000080201054 <atoh>:
    80201054:	7179                	addi	sp,sp,-48
    80201056:	f422                	sd	s0,40(sp)
    80201058:	1800                	addi	s0,sp,48
    8020105a:	fca43c23          	sd	a0,-40(s0)
    8020105e:	fe042623          	sw	zero,-20(s0)
    80201062:	fe042423          	sw	zero,-24(s0)
    80201066:	fe042223          	sw	zero,-28(s0)
    8020106a:	a239                	j	80201178 <atoh+0x124>
    8020106c:	fe446783          	lwu	a5,-28(s0)
    80201070:	fd843703          	ld	a4,-40(s0)
    80201074:	97ba                	add	a5,a5,a4
    80201076:	0007c783          	lbu	a5,0(a5)
    8020107a:	873e                	mv	a4,a5
    8020107c:	02f00793          	li	a5,47
    80201080:	02e7fc63          	bgeu	a5,a4,802010b8 <atoh+0x64>
    80201084:	fe446783          	lwu	a5,-28(s0)
    80201088:	fd843703          	ld	a4,-40(s0)
    8020108c:	97ba                	add	a5,a5,a4
    8020108e:	0007c783          	lbu	a5,0(a5)
    80201092:	873e                	mv	a4,a5
    80201094:	03900793          	li	a5,57
    80201098:	02e7e063          	bltu	a5,a4,802010b8 <atoh+0x64>
    8020109c:	fe446783          	lwu	a5,-28(s0)
    802010a0:	fd843703          	ld	a4,-40(s0)
    802010a4:	97ba                	add	a5,a5,a4
    802010a6:	0007c783          	lbu	a5,0(a5)
    802010aa:	2781                	sext.w	a5,a5
    802010ac:	fd07879b          	addiw	a5,a5,-48
    802010b0:	2781                	sext.w	a5,a5
    802010b2:	fef42423          	sw	a5,-24(s0)
    802010b6:	a861                	j	8020114e <atoh+0xfa>
    802010b8:	fe446783          	lwu	a5,-28(s0)
    802010bc:	fd843703          	ld	a4,-40(s0)
    802010c0:	97ba                	add	a5,a5,a4
    802010c2:	0007c783          	lbu	a5,0(a5)
    802010c6:	873e                	mv	a4,a5
    802010c8:	06000793          	li	a5,96
    802010cc:	02e7fc63          	bgeu	a5,a4,80201104 <atoh+0xb0>
    802010d0:	fe446783          	lwu	a5,-28(s0)
    802010d4:	fd843703          	ld	a4,-40(s0)
    802010d8:	97ba                	add	a5,a5,a4
    802010da:	0007c783          	lbu	a5,0(a5)
    802010de:	873e                	mv	a4,a5
    802010e0:	06600793          	li	a5,102
    802010e4:	02e7e063          	bltu	a5,a4,80201104 <atoh+0xb0>
    802010e8:	fe446783          	lwu	a5,-28(s0)
    802010ec:	fd843703          	ld	a4,-40(s0)
    802010f0:	97ba                	add	a5,a5,a4
    802010f2:	0007c783          	lbu	a5,0(a5)
    802010f6:	2781                	sext.w	a5,a5
    802010f8:	fa97879b          	addiw	a5,a5,-87
    802010fc:	2781                	sext.w	a5,a5
    802010fe:	fef42423          	sw	a5,-24(s0)
    80201102:	a0b1                	j	8020114e <atoh+0xfa>
    80201104:	fe446783          	lwu	a5,-28(s0)
    80201108:	fd843703          	ld	a4,-40(s0)
    8020110c:	97ba                	add	a5,a5,a4
    8020110e:	0007c783          	lbu	a5,0(a5)
    80201112:	873e                	mv	a4,a5
    80201114:	04000793          	li	a5,64
    80201118:	04e7fa63          	bgeu	a5,a4,8020116c <atoh+0x118>
    8020111c:	fe446783          	lwu	a5,-28(s0)
    80201120:	fd843703          	ld	a4,-40(s0)
    80201124:	97ba                	add	a5,a5,a4
    80201126:	0007c783          	lbu	a5,0(a5)
    8020112a:	873e                	mv	a4,a5
    8020112c:	04600793          	li	a5,70
    80201130:	02e7ee63          	bltu	a5,a4,8020116c <atoh+0x118>
    80201134:	fe446783          	lwu	a5,-28(s0)
    80201138:	fd843703          	ld	a4,-40(s0)
    8020113c:	97ba                	add	a5,a5,a4
    8020113e:	0007c783          	lbu	a5,0(a5)
    80201142:	2781                	sext.w	a5,a5
    80201144:	fc97879b          	addiw	a5,a5,-55
    80201148:	2781                	sext.w	a5,a5
    8020114a:	fef42423          	sw	a5,-24(s0)
    8020114e:	fec42783          	lw	a5,-20(s0)
    80201152:	0047979b          	slliw	a5,a5,0x4
    80201156:	fef42623          	sw	a5,-20(s0)
    8020115a:	fec42783          	lw	a5,-20(s0)
    8020115e:	873e                	mv	a4,a5
    80201160:	fe842783          	lw	a5,-24(s0)
    80201164:	8fd9                	or	a5,a5,a4
    80201166:	fef42623          	sw	a5,-20(s0)
    8020116a:	a011                	j	8020116e <atoh+0x11a>
    8020116c:	0001                	nop
    8020116e:	fe442783          	lw	a5,-28(s0)
    80201172:	2785                	addiw	a5,a5,1
    80201174:	fef42223          	sw	a5,-28(s0)
    80201178:	fe446783          	lwu	a5,-28(s0)
    8020117c:	fd843703          	ld	a4,-40(s0)
    80201180:	97ba                	add	a5,a5,a4
    80201182:	0007c783          	lbu	a5,0(a5)
    80201186:	ee0793e3          	bnez	a5,8020106c <atoh+0x18>
    8020118a:	fec42783          	lw	a5,-20(s0)
    8020118e:	853e                	mv	a0,a5
    80201190:	7422                	ld	s0,40(sp)
    80201192:	6145                	addi	sp,sp,48
    80201194:	8082                	ret

0000000080201196 <r32>:
    80201196:	7179                	addi	sp,sp,-48
    80201198:	f406                	sd	ra,40(sp)
    8020119a:	f022                	sd	s0,32(sp)
    8020119c:	1800                	addi	s0,sp,48
    8020119e:	87aa                	mv	a5,a0
    802011a0:	fcb43823          	sd	a1,-48(s0)
    802011a4:	fcf42e23          	sw	a5,-36(s0)
    802011a8:	fdc42783          	lw	a5,-36(s0)
    802011ac:	0007871b          	sext.w	a4,a5
    802011b0:	4785                	li	a5,1
    802011b2:	00e7ce63          	blt	a5,a4,802011ce <r32+0x38>
    802011b6:	fd043783          	ld	a5,-48(s0)
    802011ba:	639c                	ld	a5,0(a5)
    802011bc:	85be                	mv	a1,a5
    802011be:	00001517          	auipc	a0,0x1
    802011c2:	03250513          	addi	a0,a0,50 # 802021f0 <cmd_end_+0x1b0>
    802011c6:	11f000ef          	jal	ra,80201ae4 <printf>
    802011ca:	57fd                	li	a5,-1
    802011cc:	a82d                	j	80201206 <r32+0x70>
    802011ce:	fd043783          	ld	a5,-48(s0)
    802011d2:	07a1                	addi	a5,a5,8
    802011d4:	639c                	ld	a5,0(a5)
    802011d6:	853e                	mv	a0,a5
    802011d8:	e7dff0ef          	jal	ra,80201054 <atoh>
    802011dc:	87aa                	mv	a5,a0
    802011de:	fef42623          	sw	a5,-20(s0)
    802011e2:	fec46783          	lwu	a5,-20(s0)
    802011e6:	439c                	lw	a5,0(a5)
    802011e8:	fef42423          	sw	a5,-24(s0)
    802011ec:	fe842703          	lw	a4,-24(s0)
    802011f0:	fec42783          	lw	a5,-20(s0)
    802011f4:	863a                	mv	a2,a4
    802011f6:	85be                	mv	a1,a5
    802011f8:	00001517          	auipc	a0,0x1
    802011fc:	01850513          	addi	a0,a0,24 # 80202210 <cmd_end_+0x1d0>
    80201200:	0e5000ef          	jal	ra,80201ae4 <printf>
    80201204:	4781                	li	a5,0
    80201206:	853e                	mv	a0,a5
    80201208:	70a2                	ld	ra,40(sp)
    8020120a:	7402                	ld	s0,32(sp)
    8020120c:	6145                	addi	sp,sp,48
    8020120e:	8082                	ret

0000000080201210 <w32>:
    80201210:	7179                	addi	sp,sp,-48
    80201212:	f406                	sd	ra,40(sp)
    80201214:	f022                	sd	s0,32(sp)
    80201216:	1800                	addi	s0,sp,48
    80201218:	87aa                	mv	a5,a0
    8020121a:	fcb43823          	sd	a1,-48(s0)
    8020121e:	fcf42e23          	sw	a5,-36(s0)
    80201222:	fdc42783          	lw	a5,-36(s0)
    80201226:	0007871b          	sext.w	a4,a5
    8020122a:	4789                	li	a5,2
    8020122c:	00e7ce63          	blt	a5,a4,80201248 <w32+0x38>
    80201230:	fd043783          	ld	a5,-48(s0)
    80201234:	639c                	ld	a5,0(a5)
    80201236:	85be                	mv	a1,a5
    80201238:	00001517          	auipc	a0,0x1
    8020123c:	fe850513          	addi	a0,a0,-24 # 80202220 <cmd_end_+0x1e0>
    80201240:	0a5000ef          	jal	ra,80201ae4 <printf>
    80201244:	57fd                	li	a5,-1
    80201246:	a825                	j	8020127e <w32+0x6e>
    80201248:	fd043783          	ld	a5,-48(s0)
    8020124c:	07a1                	addi	a5,a5,8
    8020124e:	639c                	ld	a5,0(a5)
    80201250:	853e                	mv	a0,a5
    80201252:	e03ff0ef          	jal	ra,80201054 <atoh>
    80201256:	87aa                	mv	a5,a0
    80201258:	fef42623          	sw	a5,-20(s0)
    8020125c:	fd043783          	ld	a5,-48(s0)
    80201260:	07c1                	addi	a5,a5,16
    80201262:	639c                	ld	a5,0(a5)
    80201264:	853e                	mv	a0,a5
    80201266:	defff0ef          	jal	ra,80201054 <atoh>
    8020126a:	87aa                	mv	a5,a0
    8020126c:	fef42423          	sw	a5,-24(s0)
    80201270:	fec46783          	lwu	a5,-20(s0)
    80201274:	873e                	mv	a4,a5
    80201276:	fe842783          	lw	a5,-24(s0)
    8020127a:	c31c                	sw	a5,0(a4)
    8020127c:	4781                	li	a5,0
    8020127e:	853e                	mv	a0,a5
    80201280:	70a2                	ld	ra,40(sp)
    80201282:	7402                	ld	s0,32(sp)
    80201284:	6145                	addi	sp,sp,48
    80201286:	8082                	ret

0000000080201288 <read_mem>:
    80201288:	7179                	addi	sp,sp,-48
    8020128a:	f406                	sd	ra,40(sp)
    8020128c:	f022                	sd	s0,32(sp)
    8020128e:	1800                	addi	s0,sp,48
    80201290:	87aa                	mv	a5,a0
    80201292:	fcb43823          	sd	a1,-48(s0)
    80201296:	fcf42e23          	sw	a5,-36(s0)
    8020129a:	fdc42783          	lw	a5,-36(s0)
    8020129e:	0007871b          	sext.w	a4,a5
    802012a2:	4789                	li	a5,2
    802012a4:	00e7ce63          	blt	a5,a4,802012c0 <read_mem+0x38>
    802012a8:	fd043783          	ld	a5,-48(s0)
    802012ac:	639c                	ld	a5,0(a5)
    802012ae:	85be                	mv	a1,a5
    802012b0:	00001517          	auipc	a0,0x1
    802012b4:	fa050513          	addi	a0,a0,-96 # 80202250 <cmd_end_+0x210>
    802012b8:	02d000ef          	jal	ra,80201ae4 <printf>
    802012bc:	57fd                	li	a5,-1
    802012be:	a8bd                	j	8020133c <read_mem+0xb4>
    802012c0:	fd043783          	ld	a5,-48(s0)
    802012c4:	07a1                	addi	a5,a5,8
    802012c6:	639c                	ld	a5,0(a5)
    802012c8:	853e                	mv	a0,a5
    802012ca:	d8bff0ef          	jal	ra,80201054 <atoh>
    802012ce:	87aa                	mv	a5,a0
    802012d0:	fef42623          	sw	a5,-20(s0)
    802012d4:	fd043783          	ld	a5,-48(s0)
    802012d8:	07c1                	addi	a5,a5,16
    802012da:	639c                	ld	a5,0(a5)
    802012dc:	853e                	mv	a0,a5
    802012de:	d0bff0ef          	jal	ra,80200fe8 <atoi>
    802012e2:	87aa                	mv	a5,a0
    802012e4:	fef42223          	sw	a5,-28(s0)
    802012e8:	fe042423          	sw	zero,-24(s0)
    802012ec:	fe042023          	sw	zero,-32(s0)
    802012f0:	a825                	j	80201328 <read_mem+0xa0>
    802012f2:	fec46783          	lwu	a5,-20(s0)
    802012f6:	439c                	lw	a5,0(a5)
    802012f8:	fef42023          	sw	a5,-32(s0)
    802012fc:	fe042703          	lw	a4,-32(s0)
    80201300:	fec42783          	lw	a5,-20(s0)
    80201304:	863a                	mv	a2,a4
    80201306:	85be                	mv	a1,a5
    80201308:	00001517          	auipc	a0,0x1
    8020130c:	f0850513          	addi	a0,a0,-248 # 80202210 <cmd_end_+0x1d0>
    80201310:	7d4000ef          	jal	ra,80201ae4 <printf>
    80201314:	fec42783          	lw	a5,-20(s0)
    80201318:	2791                	addiw	a5,a5,4
    8020131a:	fef42623          	sw	a5,-20(s0)
    8020131e:	fe842783          	lw	a5,-24(s0)
    80201322:	2785                	addiw	a5,a5,1
    80201324:	fef42423          	sw	a5,-24(s0)
    80201328:	fe842783          	lw	a5,-24(s0)
    8020132c:	873e                	mv	a4,a5
    8020132e:	fe442783          	lw	a5,-28(s0)
    80201332:	2701                	sext.w	a4,a4
    80201334:	2781                	sext.w	a5,a5
    80201336:	faf76ee3          	bltu	a4,a5,802012f2 <read_mem+0x6a>
    8020133a:	4781                	li	a5,0
    8020133c:	853e                	mv	a0,a5
    8020133e:	70a2                	ld	ra,40(sp)
    80201340:	7402                	ld	s0,32(sp)
    80201342:	6145                	addi	sp,sp,48
    80201344:	8082                	ret

0000000080201346 <w32_bit>:
    80201346:	7179                	addi	sp,sp,-48
    80201348:	f406                	sd	ra,40(sp)
    8020134a:	f022                	sd	s0,32(sp)
    8020134c:	1800                	addi	s0,sp,48
    8020134e:	87aa                	mv	a5,a0
    80201350:	fcb43823          	sd	a1,-48(s0)
    80201354:	fcf42e23          	sw	a5,-36(s0)
    80201358:	fdc42783          	lw	a5,-36(s0)
    8020135c:	0007871b          	sext.w	a4,a5
    80201360:	478d                	li	a5,3
    80201362:	0ce7df63          	bge	a5,a4,80201440 <w32_bit+0xfa>
    80201366:	fd043783          	ld	a5,-48(s0)
    8020136a:	07a1                	addi	a5,a5,8
    8020136c:	639c                	ld	a5,0(a5)
    8020136e:	853e                	mv	a0,a5
    80201370:	ce5ff0ef          	jal	ra,80201054 <atoh>
    80201374:	87aa                	mv	a5,a0
    80201376:	fef42623          	sw	a5,-20(s0)
    8020137a:	fd043783          	ld	a5,-48(s0)
    8020137e:	07c1                	addi	a5,a5,16
    80201380:	639c                	ld	a5,0(a5)
    80201382:	853e                	mv	a0,a5
    80201384:	c65ff0ef          	jal	ra,80200fe8 <atoi>
    80201388:	87aa                	mv	a5,a0
    8020138a:	fef42423          	sw	a5,-24(s0)
    8020138e:	fd043783          	ld	a5,-48(s0)
    80201392:	07e1                	addi	a5,a5,24
    80201394:	639c                	ld	a5,0(a5)
    80201396:	853e                	mv	a0,a5
    80201398:	c51ff0ef          	jal	ra,80200fe8 <atoi>
    8020139c:	87aa                	mv	a5,a0
    8020139e:	fef42223          	sw	a5,-28(s0)
    802013a2:	fe842783          	lw	a5,-24(s0)
    802013a6:	0007871b          	sext.w	a4,a5
    802013aa:	47fd                	li	a5,31
    802013ac:	00e7f963          	bgeu	a5,a4,802013be <w32_bit+0x78>
    802013b0:	00001517          	auipc	a0,0x1
    802013b4:	ed850513          	addi	a0,a0,-296 # 80202288 <cmd_end_+0x248>
    802013b8:	72c000ef          	jal	ra,80201ae4 <printf>
    802013bc:	a059                	j	80201442 <w32_bit+0xfc>
    802013be:	fe442783          	lw	a5,-28(s0)
    802013c2:	2781                	sext.w	a5,a5
    802013c4:	cf99                	beqz	a5,802013e2 <w32_bit+0x9c>
    802013c6:	fe442783          	lw	a5,-28(s0)
    802013ca:	0007871b          	sext.w	a4,a5
    802013ce:	4785                	li	a5,1
    802013d0:	00f70963          	beq	a4,a5,802013e2 <w32_bit+0x9c>
    802013d4:	00001517          	auipc	a0,0x1
    802013d8:	edc50513          	addi	a0,a0,-292 # 802022b0 <cmd_end_+0x270>
    802013dc:	708000ef          	jal	ra,80201ae4 <printf>
    802013e0:	a08d                	j	80201442 <w32_bit+0xfc>
    802013e2:	fec46783          	lwu	a5,-20(s0)
    802013e6:	439c                	lw	a5,0(a5)
    802013e8:	fef42023          	sw	a5,-32(s0)
    802013ec:	fe842783          	lw	a5,-24(s0)
    802013f0:	fe442703          	lw	a4,-28(s0)
    802013f4:	00f717bb          	sllw	a5,a4,a5
    802013f8:	2781                	sext.w	a5,a5
    802013fa:	fe042703          	lw	a4,-32(s0)
    802013fe:	8fd9                	or	a5,a5,a4
    80201400:	fef42023          	sw	a5,-32(s0)
    80201404:	fe442783          	lw	a5,-28(s0)
    80201408:	2781                	sext.w	a5,a5
    8020140a:	0017b793          	seqz	a5,a5
    8020140e:	0ff7f793          	zext.b	a5,a5
    80201412:	2781                	sext.w	a5,a5
    80201414:	fe842703          	lw	a4,-24(s0)
    80201418:	00e797bb          	sllw	a5,a5,a4
    8020141c:	2781                	sext.w	a5,a5
    8020141e:	fff7c793          	not	a5,a5
    80201422:	2781                	sext.w	a5,a5
    80201424:	2781                	sext.w	a5,a5
    80201426:	fe042703          	lw	a4,-32(s0)
    8020142a:	8ff9                	and	a5,a5,a4
    8020142c:	fef42023          	sw	a5,-32(s0)
    80201430:	fec46783          	lwu	a5,-20(s0)
    80201434:	873e                	mv	a4,a5
    80201436:	fe042783          	lw	a5,-32(s0)
    8020143a:	c31c                	sw	a5,0(a4)
    8020143c:	4781                	li	a5,0
    8020143e:	a829                	j	80201458 <w32_bit+0x112>
    80201440:	0001                	nop
    80201442:	fd043783          	ld	a5,-48(s0)
    80201446:	639c                	ld	a5,0(a5)
    80201448:	85be                	mv	a1,a5
    8020144a:	00001517          	auipc	a0,0x1
    8020144e:	e8e50513          	addi	a0,a0,-370 # 802022d8 <cmd_end_+0x298>
    80201452:	692000ef          	jal	ra,80201ae4 <printf>
    80201456:	57fd                	li	a5,-1
    80201458:	853e                	mv	a0,a5
    8020145a:	70a2                	ld	ra,40(sp)
    8020145c:	7402                	ld	s0,32(sp)
    8020145e:	6145                	addi	sp,sp,48
    80201460:	8082                	ret

0000000080201462 <r32_bit>:
    80201462:	7179                	addi	sp,sp,-48
    80201464:	f406                	sd	ra,40(sp)
    80201466:	f022                	sd	s0,32(sp)
    80201468:	1800                	addi	s0,sp,48
    8020146a:	87aa                	mv	a5,a0
    8020146c:	fcb43823          	sd	a1,-48(s0)
    80201470:	fcf42e23          	sw	a5,-36(s0)
    80201474:	fdc42783          	lw	a5,-36(s0)
    80201478:	0007871b          	sext.w	a4,a5
    8020147c:	4789                	li	a5,2
    8020147e:	08e7d363          	bge	a5,a4,80201504 <r32_bit+0xa2>
    80201482:	fd043783          	ld	a5,-48(s0)
    80201486:	07a1                	addi	a5,a5,8
    80201488:	639c                	ld	a5,0(a5)
    8020148a:	853e                	mv	a0,a5
    8020148c:	bc9ff0ef          	jal	ra,80201054 <atoh>
    80201490:	87aa                	mv	a5,a0
    80201492:	fef42623          	sw	a5,-20(s0)
    80201496:	fd043783          	ld	a5,-48(s0)
    8020149a:	07c1                	addi	a5,a5,16
    8020149c:	639c                	ld	a5,0(a5)
    8020149e:	853e                	mv	a0,a5
    802014a0:	b49ff0ef          	jal	ra,80200fe8 <atoi>
    802014a4:	87aa                	mv	a5,a0
    802014a6:	fef42423          	sw	a5,-24(s0)
    802014aa:	fe842783          	lw	a5,-24(s0)
    802014ae:	0007871b          	sext.w	a4,a5
    802014b2:	47fd                	li	a5,31
    802014b4:	00e7f963          	bgeu	a5,a4,802014c6 <r32_bit+0x64>
    802014b8:	00001517          	auipc	a0,0x1
    802014bc:	dd050513          	addi	a0,a0,-560 # 80202288 <cmd_end_+0x248>
    802014c0:	624000ef          	jal	ra,80201ae4 <printf>
    802014c4:	a089                	j	80201506 <r32_bit+0xa4>
    802014c6:	fec46783          	lwu	a5,-20(s0)
    802014ca:	439c                	lw	a5,0(a5)
    802014cc:	fef42223          	sw	a5,-28(s0)
    802014d0:	fe842783          	lw	a5,-24(s0)
    802014d4:	fe442703          	lw	a4,-28(s0)
    802014d8:	00f757bb          	srlw	a5,a4,a5
    802014dc:	2781                	sext.w	a5,a5
    802014de:	8b85                	andi	a5,a5,1
    802014e0:	fef42023          	sw	a5,-32(s0)
    802014e4:	fe042683          	lw	a3,-32(s0)
    802014e8:	fec42703          	lw	a4,-20(s0)
    802014ec:	fe842783          	lw	a5,-24(s0)
    802014f0:	863a                	mv	a2,a4
    802014f2:	85be                	mv	a1,a5
    802014f4:	00001517          	auipc	a0,0x1
    802014f8:	e4450513          	addi	a0,a0,-444 # 80202338 <cmd_end_+0x2f8>
    802014fc:	5e8000ef          	jal	ra,80201ae4 <printf>
    80201500:	4781                	li	a5,0
    80201502:	a829                	j	8020151c <r32_bit+0xba>
    80201504:	0001                	nop
    80201506:	fd043783          	ld	a5,-48(s0)
    8020150a:	639c                	ld	a5,0(a5)
    8020150c:	85be                	mv	a1,a5
    8020150e:	00001517          	auipc	a0,0x1
    80201512:	e4250513          	addi	a0,a0,-446 # 80202350 <cmd_end_+0x310>
    80201516:	5ce000ef          	jal	ra,80201ae4 <printf>
    8020151a:	57fd                	li	a5,-1
    8020151c:	853e                	mv	a0,a5
    8020151e:	70a2                	ld	ra,40(sp)
    80201520:	7402                	ld	s0,32(sp)
    80201522:	6145                	addi	sp,sp,48
    80201524:	8082                	ret

0000000080201526 <memlog_init>:
    80201526:	1101                	addi	sp,sp,-32
    80201528:	ec06                	sd	ra,24(sp)
    8020152a:	e822                	sd	s0,16(sp)
    8020152c:	1000                	addi	s0,sp,32
    8020152e:	fea43423          	sd	a0,-24(s0)
    80201532:	87ae                	mv	a5,a1
    80201534:	8732                	mv	a4,a2
    80201536:	fef42223          	sw	a5,-28(s0)
    8020153a:	87ba                	mv	a5,a4
    8020153c:	fef42023          	sw	a5,-32(s0)
    80201540:	00001797          	auipc	a5,0x1
    80201544:	a0878793          	addi	a5,a5,-1528 # 80201f48 <selected_mode>
    80201548:	fe042703          	lw	a4,-32(s0)
    8020154c:	c398                	sw	a4,0(a5)
    8020154e:	00001797          	auipc	a5,0x1
    80201552:	9fa78793          	addi	a5,a5,-1542 # 80201f48 <selected_mode>
    80201556:	439c                	lw	a5,0(a5)
    80201558:	cbe1                	beqz	a5,80201628 <memlog_init+0x102>
    8020155a:	00001797          	auipc	a5,0x1
    8020155e:	9de78793          	addi	a5,a5,-1570 # 80201f38 <out_buf_rgn>
    80201562:	fe843703          	ld	a4,-24(s0)
    80201566:	e398                	sd	a4,0(a5)
    80201568:	fe442783          	lw	a5,-28(s0)
    8020156c:	0017d79b          	srliw	a5,a5,0x1
    80201570:	0007871b          	sext.w	a4,a5
    80201574:	00001797          	auipc	a5,0x1
    80201578:	9c478793          	addi	a5,a5,-1596 # 80201f38 <out_buf_rgn>
    8020157c:	c798                	sw	a4,8(a5)
    8020157e:	00001797          	auipc	a5,0x1
    80201582:	9ba78793          	addi	a5,a5,-1606 # 80201f38 <out_buf_rgn>
    80201586:	0007a623          	sw	zero,12(a5)
    8020158a:	fe442783          	lw	a5,-28(s0)
    8020158e:	0017d79b          	srliw	a5,a5,0x1
    80201592:	2781                	sext.w	a5,a5
    80201594:	1782                	slli	a5,a5,0x20
    80201596:	9381                	srli	a5,a5,0x20
    80201598:	fe843703          	ld	a4,-24(s0)
    8020159c:	973e                	add	a4,a4,a5
    8020159e:	00001797          	auipc	a5,0x1
    802015a2:	98a78793          	addi	a5,a5,-1654 # 80201f28 <inp_buf_rgn>
    802015a6:	e398                	sd	a4,0(a5)
    802015a8:	fe442783          	lw	a5,-28(s0)
    802015ac:	0017d79b          	srliw	a5,a5,0x1
    802015b0:	0007871b          	sext.w	a4,a5
    802015b4:	00001797          	auipc	a5,0x1
    802015b8:	97478793          	addi	a5,a5,-1676 # 80201f28 <inp_buf_rgn>
    802015bc:	c798                	sw	a4,8(a5)
    802015be:	00001797          	auipc	a5,0x1
    802015c2:	96a78793          	addi	a5,a5,-1686 # 80201f28 <inp_buf_rgn>
    802015c6:	0007a623          	sw	zero,12(a5)
    802015ca:	00001797          	auipc	a5,0x1
    802015ce:	97e78793          	addi	a5,a5,-1666 # 80201f48 <selected_mode>
    802015d2:	439c                	lw	a5,0(a5)
    802015d4:	8b85                	andi	a5,a5,1
    802015d6:	2781                	sext.w	a5,a5
    802015d8:	eb89                	bnez	a5,802015ea <memlog_init+0xc4>
    802015da:	00001797          	auipc	a5,0x1
    802015de:	95e78793          	addi	a5,a5,-1698 # 80201f38 <out_buf_rgn>
    802015e2:	fe442703          	lw	a4,-28(s0)
    802015e6:	c798                	sw	a4,8(a5)
    802015e8:	a03d                	j	80201616 <memlog_init+0xf0>
    802015ea:	00001797          	auipc	a5,0x1
    802015ee:	95e78793          	addi	a5,a5,-1698 # 80201f48 <selected_mode>
    802015f2:	439c                	lw	a5,0(a5)
    802015f4:	8b89                	andi	a5,a5,2
    802015f6:	2781                	sext.w	a5,a5
    802015f8:	ef99                	bnez	a5,80201616 <memlog_init+0xf0>
    802015fa:	00001797          	auipc	a5,0x1
    802015fe:	92e78793          	addi	a5,a5,-1746 # 80201f28 <inp_buf_rgn>
    80201602:	fe843703          	ld	a4,-24(s0)
    80201606:	e398                	sd	a4,0(a5)
    80201608:	00001797          	auipc	a5,0x1
    8020160c:	92078793          	addi	a5,a5,-1760 # 80201f28 <inp_buf_rgn>
    80201610:	fe442703          	lw	a4,-28(s0)
    80201614:	c798                	sw	a4,8(a5)
    80201616:	fe446783          	lwu	a5,-28(s0)
    8020161a:	863e                	mv	a2,a5
    8020161c:	4581                	li	a1,0
    8020161e:	fe843503          	ld	a0,-24(s0)
    80201622:	96fff0ef          	jal	ra,80200f90 <memset>
    80201626:	a011                	j	8020162a <memlog_init+0x104>
    80201628:	0001                	nop
    8020162a:	60e2                	ld	ra,24(sp)
    8020162c:	6442                	ld	s0,16(sp)
    8020162e:	6105                	addi	sp,sp,32
    80201630:	8082                	ret

0000000080201632 <memlog_getc>:
    80201632:	1101                	addi	sp,sp,-32
    80201634:	ec22                	sd	s0,24(sp)
    80201636:	1000                	addi	s0,sp,32
    80201638:	00001797          	auipc	a5,0x1
    8020163c:	91078793          	addi	a5,a5,-1776 # 80201f48 <selected_mode>
    80201640:	439c                	lw	a5,0(a5)
    80201642:	8b85                	andi	a5,a5,1
    80201644:	2781                	sext.w	a5,a5
    80201646:	e399                	bnez	a5,8020164c <memlog_getc+0x1a>
    80201648:	57fd                	li	a5,-1
    8020164a:	a065                	j	802016f2 <memlog_getc+0xc0>
    8020164c:	00001797          	auipc	a5,0x1
    80201650:	8dc78793          	addi	a5,a5,-1828 # 80201f28 <inp_buf_rgn>
    80201654:	639c                	ld	a5,0(a5)
    80201656:	00001717          	auipc	a4,0x1
    8020165a:	8d270713          	addi	a4,a4,-1838 # 80201f28 <inp_buf_rgn>
    8020165e:	4758                	lw	a4,12(a4)
    80201660:	97ba                	add	a5,a5,a4
    80201662:	0007c783          	lbu	a5,0(a5)
    80201666:	0ff7f793          	zext.b	a5,a5
    8020166a:	e399                	bnez	a5,80201670 <memlog_getc+0x3e>
    8020166c:	57fd                	li	a5,-1
    8020166e:	a051                	j	802016f2 <memlog_getc+0xc0>
    80201670:	00001797          	auipc	a5,0x1
    80201674:	8b878793          	addi	a5,a5,-1864 # 80201f28 <inp_buf_rgn>
    80201678:	639c                	ld	a5,0(a5)
    8020167a:	00001717          	auipc	a4,0x1
    8020167e:	8ae70713          	addi	a4,a4,-1874 # 80201f28 <inp_buf_rgn>
    80201682:	4758                	lw	a4,12(a4)
    80201684:	97ba                	add	a5,a5,a4
    80201686:	0007c783          	lbu	a5,0(a5)
    8020168a:	0ff7f793          	zext.b	a5,a5
    8020168e:	fef42623          	sw	a5,-20(s0)
    80201692:	00001797          	auipc	a5,0x1
    80201696:	89678793          	addi	a5,a5,-1898 # 80201f28 <inp_buf_rgn>
    8020169a:	639c                	ld	a5,0(a5)
    8020169c:	00001717          	auipc	a4,0x1
    802016a0:	88c70713          	addi	a4,a4,-1908 # 80201f28 <inp_buf_rgn>
    802016a4:	4758                	lw	a4,12(a4)
    802016a6:	97ba                	add	a5,a5,a4
    802016a8:	00078023          	sb	zero,0(a5)
    802016ac:	00001797          	auipc	a5,0x1
    802016b0:	87c78793          	addi	a5,a5,-1924 # 80201f28 <inp_buf_rgn>
    802016b4:	47dc                	lw	a5,12(a5)
    802016b6:	2785                	addiw	a5,a5,1
    802016b8:	0007871b          	sext.w	a4,a5
    802016bc:	00001797          	auipc	a5,0x1
    802016c0:	86c78793          	addi	a5,a5,-1940 # 80201f28 <inp_buf_rgn>
    802016c4:	c7d8                	sw	a4,12(a5)
    802016c6:	00001797          	auipc	a5,0x1
    802016ca:	86278793          	addi	a5,a5,-1950 # 80201f28 <inp_buf_rgn>
    802016ce:	47dc                	lw	a5,12(a5)
    802016d0:	0007871b          	sext.w	a4,a5
    802016d4:	00001797          	auipc	a5,0x1
    802016d8:	85478793          	addi	a5,a5,-1964 # 80201f28 <inp_buf_rgn>
    802016dc:	479c                	lw	a5,8(a5)
    802016de:	00f71863          	bne	a4,a5,802016ee <memlog_getc+0xbc>
    802016e2:	00001797          	auipc	a5,0x1
    802016e6:	84678793          	addi	a5,a5,-1978 # 80201f28 <inp_buf_rgn>
    802016ea:	0007a623          	sw	zero,12(a5)
    802016ee:	fec42783          	lw	a5,-20(s0)
    802016f2:	853e                	mv	a0,a5
    802016f4:	6462                	ld	s0,24(sp)
    802016f6:	6105                	addi	sp,sp,32
    802016f8:	8082                	ret

00000000802016fa <memlog_putc>:
    802016fa:	1101                	addi	sp,sp,-32
    802016fc:	ec22                	sd	s0,24(sp)
    802016fe:	1000                	addi	s0,sp,32
    80201700:	87aa                	mv	a5,a0
    80201702:	fef407a3          	sb	a5,-17(s0)
    80201706:	00001797          	auipc	a5,0x1
    8020170a:	84278793          	addi	a5,a5,-1982 # 80201f48 <selected_mode>
    8020170e:	439c                	lw	a5,0(a5)
    80201710:	8b89                	andi	a5,a5,2
    80201712:	2781                	sext.w	a5,a5
    80201714:	c7bd                	beqz	a5,80201782 <memlog_putc+0x88>
    80201716:	fef44783          	lbu	a5,-17(s0)
    8020171a:	0ff7f793          	zext.b	a5,a5
    8020171e:	c3b5                	beqz	a5,80201782 <memlog_putc+0x88>
    80201720:	00001797          	auipc	a5,0x1
    80201724:	81878793          	addi	a5,a5,-2024 # 80201f38 <out_buf_rgn>
    80201728:	639c                	ld	a5,0(a5)
    8020172a:	00001717          	auipc	a4,0x1
    8020172e:	80e70713          	addi	a4,a4,-2034 # 80201f38 <out_buf_rgn>
    80201732:	4758                	lw	a4,12(a4)
    80201734:	97ba                	add	a5,a5,a4
    80201736:	fef44703          	lbu	a4,-17(s0)
    8020173a:	00e78023          	sb	a4,0(a5)
    8020173e:	00000797          	auipc	a5,0x0
    80201742:	7fa78793          	addi	a5,a5,2042 # 80201f38 <out_buf_rgn>
    80201746:	47dc                	lw	a5,12(a5)
    80201748:	2785                	addiw	a5,a5,1
    8020174a:	0007871b          	sext.w	a4,a5
    8020174e:	00000797          	auipc	a5,0x0
    80201752:	7ea78793          	addi	a5,a5,2026 # 80201f38 <out_buf_rgn>
    80201756:	c7d8                	sw	a4,12(a5)
    80201758:	00000797          	auipc	a5,0x0
    8020175c:	7e078793          	addi	a5,a5,2016 # 80201f38 <out_buf_rgn>
    80201760:	47dc                	lw	a5,12(a5)
    80201762:	0007871b          	sext.w	a4,a5
    80201766:	00000797          	auipc	a5,0x0
    8020176a:	7d278793          	addi	a5,a5,2002 # 80201f38 <out_buf_rgn>
    8020176e:	479c                	lw	a5,8(a5)
    80201770:	00f71a63          	bne	a4,a5,80201784 <memlog_putc+0x8a>
    80201774:	00000797          	auipc	a5,0x0
    80201778:	7c478793          	addi	a5,a5,1988 # 80201f38 <out_buf_rgn>
    8020177c:	0007a623          	sw	zero,12(a5)
    80201780:	a011                	j	80201784 <memlog_putc+0x8a>
    80201782:	0001                	nop
    80201784:	6462                	ld	s0,24(sp)
    80201786:	6105                	addi	sp,sp,32
    80201788:	8082                	ret

000000008020178a <outstr>:
    8020178a:	1101                	addi	sp,sp,-32
    8020178c:	ec06                	sd	ra,24(sp)
    8020178e:	e822                	sd	s0,16(sp)
    80201790:	1000                	addi	s0,sp,32
    80201792:	fea43423          	sd	a0,-24(s0)
    80201796:	a00d                	j	802017b8 <outstr+0x2e>
    80201798:	00000797          	auipc	a5,0x0
    8020179c:	7107b783          	ld	a5,1808(a5) # 80201ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    802017a0:	639c                	ld	a5,0(a5)
    802017a2:	fe843703          	ld	a4,-24(s0)
    802017a6:	00074703          	lbu	a4,0(a4)
    802017aa:	853a                	mv	a0,a4
    802017ac:	9782                	jalr	a5
    802017ae:	fe843783          	ld	a5,-24(s0)
    802017b2:	0785                	addi	a5,a5,1
    802017b4:	fef43423          	sd	a5,-24(s0)
    802017b8:	fe843783          	ld	a5,-24(s0)
    802017bc:	0007c783          	lbu	a5,0(a5)
    802017c0:	ffe1                	bnez	a5,80201798 <outstr+0xe>
    802017c2:	0001                	nop
    802017c4:	0001                	nop
    802017c6:	60e2                	ld	ra,24(sp)
    802017c8:	6442                	ld	s0,16(sp)
    802017ca:	6105                	addi	sp,sp,32
    802017cc:	8082                	ret

00000000802017ce <printf_numbers>:
    802017ce:	711d                	addi	sp,sp,-96
    802017d0:	ec86                	sd	ra,88(sp)
    802017d2:	e8a2                	sd	s0,80(sp)
    802017d4:	1080                	addi	s0,sp,96
    802017d6:	87aa                	mv	a5,a0
    802017d8:	fab43023          	sd	a1,-96(s0)
    802017dc:	8732                	mv	a4,a2
    802017de:	faf407a3          	sb	a5,-81(s0)
    802017e2:	87ba                	mv	a5,a4
    802017e4:	faf42423          	sw	a5,-88(s0)
    802017e8:	fe042623          	sw	zero,-20(s0)
    802017ec:	faf44783          	lbu	a5,-81(s0)
    802017f0:	2781                	sext.w	a5,a5
    802017f2:	86be                	mv	a3,a5
    802017f4:	07800713          	li	a4,120
    802017f8:	14e68163          	beq	a3,a4,8020193a <printf_numbers+0x16c>
    802017fc:	86be                	mv	a3,a5
    802017fe:	07800713          	li	a4,120
    80201802:	2cd74363          	blt	a4,a3,80201ac8 <printf_numbers+0x2fa>
    80201806:	86be                	mv	a3,a5
    80201808:	07500713          	li	a4,117
    8020180c:	12e68763          	beq	a3,a4,8020193a <printf_numbers+0x16c>
    80201810:	86be                	mv	a3,a5
    80201812:	07500713          	li	a4,117
    80201816:	2ad74963          	blt	a4,a3,80201ac8 <printf_numbers+0x2fa>
    8020181a:	86be                	mv	a3,a5
    8020181c:	05800713          	li	a4,88
    80201820:	10e68d63          	beq	a3,a4,8020193a <printf_numbers+0x16c>
    80201824:	873e                	mv	a4,a5
    80201826:	06400793          	li	a5,100
    8020182a:	28f71f63          	bne	a4,a5,80201ac8 <printf_numbers+0x2fa>
    8020182e:	fe043023          	sd	zero,-32(s0)
    80201832:	fa842783          	lw	a5,-88(s0)
    80201836:	2781                	sext.w	a5,a5
    80201838:	ef89                	bnez	a5,80201852 <printf_numbers+0x84>
    8020183a:	fa043783          	ld	a5,-96(s0)
    8020183e:	639c                	ld	a5,0(a5)
    80201840:	00878693          	addi	a3,a5,8
    80201844:	fa043703          	ld	a4,-96(s0)
    80201848:	e314                	sd	a3,0(a4)
    8020184a:	439c                	lw	a5,0(a5)
    8020184c:	fef43023          	sd	a5,-32(s0)
    80201850:	a889                	j	802018a2 <printf_numbers+0xd4>
    80201852:	fa842783          	lw	a5,-88(s0)
    80201856:	0007871b          	sext.w	a4,a5
    8020185a:	4785                	li	a5,1
    8020185c:	00f71e63          	bne	a4,a5,80201878 <printf_numbers+0xaa>
    80201860:	fa043783          	ld	a5,-96(s0)
    80201864:	639c                	ld	a5,0(a5)
    80201866:	00878693          	addi	a3,a5,8
    8020186a:	fa043703          	ld	a4,-96(s0)
    8020186e:	e314                	sd	a3,0(a4)
    80201870:	639c                	ld	a5,0(a5)
    80201872:	fef43023          	sd	a5,-32(s0)
    80201876:	a035                	j	802018a2 <printf_numbers+0xd4>
    80201878:	fa842783          	lw	a5,-88(s0)
    8020187c:	0007871b          	sext.w	a4,a5
    80201880:	4789                	li	a5,2
    80201882:	00f71e63          	bne	a4,a5,8020189e <printf_numbers+0xd0>
    80201886:	fa043783          	ld	a5,-96(s0)
    8020188a:	639c                	ld	a5,0(a5)
    8020188c:	00878693          	addi	a3,a5,8
    80201890:	fa043703          	ld	a4,-96(s0)
    80201894:	e314                	sd	a3,0(a4)
    80201896:	639c                	ld	a5,0(a5)
    80201898:	fef43023          	sd	a5,-32(s0)
    8020189c:	a019                	j	802018a2 <printf_numbers+0xd4>
    8020189e:	4781                	li	a5,0
    802018a0:	ac2d                	j	80201ada <printf_numbers+0x30c>
    802018a2:	fe043783          	ld	a5,-32(s0)
    802018a6:	0207d063          	bgez	a5,802018c6 <printf_numbers+0xf8>
    802018aa:	00000797          	auipc	a5,0x0
    802018ae:	5fe7b783          	ld	a5,1534(a5) # 80201ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    802018b2:	639c                	ld	a5,0(a5)
    802018b4:	02d00513          	li	a0,45
    802018b8:	9782                	jalr	a5
    802018ba:	fe043783          	ld	a5,-32(s0)
    802018be:	40f007b3          	neg	a5,a5
    802018c2:	fef43023          	sd	a5,-32(s0)
    802018c6:	fe043703          	ld	a4,-32(s0)
    802018ca:	47a9                	li	a5,10
    802018cc:	02f76733          	rem	a4,a4,a5
    802018d0:	fec42783          	lw	a5,-20(s0)
    802018d4:	0017869b          	addiw	a3,a5,1
    802018d8:	fed42623          	sw	a3,-20(s0)
    802018dc:	00000697          	auipc	a3,0x0
    802018e0:	57c68693          	addi	a3,a3,1404 # 80201e58 <hextable>
    802018e4:	9736                	add	a4,a4,a3
    802018e6:	00074703          	lbu	a4,0(a4)
    802018ea:	17c1                	addi	a5,a5,-16
    802018ec:	97a2                	add	a5,a5,s0
    802018ee:	fce78423          	sb	a4,-56(a5)
    802018f2:	fe043703          	ld	a4,-32(s0)
    802018f6:	47a9                	li	a5,10
    802018f8:	02f747b3          	div	a5,a4,a5
    802018fc:	fef43023          	sd	a5,-32(s0)
    80201900:	fe043783          	ld	a5,-32(s0)
    80201904:	fcf041e3          	bgtz	a5,802018c6 <printf_numbers+0xf8>
    80201908:	a01d                	j	8020192e <printf_numbers+0x160>
    8020190a:	00000797          	auipc	a5,0x0
    8020190e:	59e7b783          	ld	a5,1438(a5) # 80201ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80201912:	639c                	ld	a5,0(a5)
    80201914:	fec42703          	lw	a4,-20(s0)
    80201918:	377d                	addiw	a4,a4,-1
    8020191a:	fee42623          	sw	a4,-20(s0)
    8020191e:	fec42703          	lw	a4,-20(s0)
    80201922:	1741                	addi	a4,a4,-16
    80201924:	9722                	add	a4,a4,s0
    80201926:	fc874703          	lbu	a4,-56(a4)
    8020192a:	853a                	mv	a0,a4
    8020192c:	9782                	jalr	a5
    8020192e:	fec42783          	lw	a5,-20(s0)
    80201932:	2781                	sext.w	a5,a5
    80201934:	fcf04be3          	bgtz	a5,8020190a <printf_numbers+0x13c>
    80201938:	a245                	j	80201ad8 <printf_numbers+0x30a>
    8020193a:	fc043c23          	sd	zero,-40(s0)
    8020193e:	fa842783          	lw	a5,-88(s0)
    80201942:	2781                	sext.w	a5,a5
    80201944:	ef99                	bnez	a5,80201962 <printf_numbers+0x194>
    80201946:	fa043783          	ld	a5,-96(s0)
    8020194a:	639c                	ld	a5,0(a5)
    8020194c:	00878693          	addi	a3,a5,8
    80201950:	fa043703          	ld	a4,-96(s0)
    80201954:	e314                	sd	a3,0(a4)
    80201956:	439c                	lw	a5,0(a5)
    80201958:	1782                	slli	a5,a5,0x20
    8020195a:	9381                	srli	a5,a5,0x20
    8020195c:	fcf43c23          	sd	a5,-40(s0)
    80201960:	a889                	j	802019b2 <printf_numbers+0x1e4>
    80201962:	fa842783          	lw	a5,-88(s0)
    80201966:	0007871b          	sext.w	a4,a5
    8020196a:	4785                	li	a5,1
    8020196c:	00f71e63          	bne	a4,a5,80201988 <printf_numbers+0x1ba>
    80201970:	fa043783          	ld	a5,-96(s0)
    80201974:	639c                	ld	a5,0(a5)
    80201976:	00878693          	addi	a3,a5,8
    8020197a:	fa043703          	ld	a4,-96(s0)
    8020197e:	e314                	sd	a3,0(a4)
    80201980:	639c                	ld	a5,0(a5)
    80201982:	fcf43c23          	sd	a5,-40(s0)
    80201986:	a035                	j	802019b2 <printf_numbers+0x1e4>
    80201988:	fa842783          	lw	a5,-88(s0)
    8020198c:	0007871b          	sext.w	a4,a5
    80201990:	4789                	li	a5,2
    80201992:	00f71e63          	bne	a4,a5,802019ae <printf_numbers+0x1e0>
    80201996:	fa043783          	ld	a5,-96(s0)
    8020199a:	639c                	ld	a5,0(a5)
    8020199c:	00878693          	addi	a3,a5,8
    802019a0:	fa043703          	ld	a4,-96(s0)
    802019a4:	e314                	sd	a3,0(a4)
    802019a6:	639c                	ld	a5,0(a5)
    802019a8:	fcf43c23          	sd	a5,-40(s0)
    802019ac:	a019                	j	802019b2 <printf_numbers+0x1e4>
    802019ae:	4781                	li	a5,0
    802019b0:	a22d                	j	80201ada <printf_numbers+0x30c>
    802019b2:	faf44783          	lbu	a5,-81(s0)
    802019b6:	0ff7f713          	zext.b	a4,a5
    802019ba:	07500793          	li	a5,117
    802019be:	06f71b63          	bne	a4,a5,80201a34 <printf_numbers+0x266>
    802019c2:	fd843703          	ld	a4,-40(s0)
    802019c6:	47a9                	li	a5,10
    802019c8:	02f77733          	remu	a4,a4,a5
    802019cc:	fec42783          	lw	a5,-20(s0)
    802019d0:	0017869b          	addiw	a3,a5,1
    802019d4:	fed42623          	sw	a3,-20(s0)
    802019d8:	00000697          	auipc	a3,0x0
    802019dc:	48068693          	addi	a3,a3,1152 # 80201e58 <hextable>
    802019e0:	9736                	add	a4,a4,a3
    802019e2:	00074703          	lbu	a4,0(a4)
    802019e6:	17c1                	addi	a5,a5,-16
    802019e8:	97a2                	add	a5,a5,s0
    802019ea:	fce78423          	sb	a4,-56(a5)
    802019ee:	fd843703          	ld	a4,-40(s0)
    802019f2:	47a9                	li	a5,10
    802019f4:	02f757b3          	divu	a5,a4,a5
    802019f8:	fcf43c23          	sd	a5,-40(s0)
    802019fc:	fd843783          	ld	a5,-40(s0)
    80201a00:	f3e9                	bnez	a5,802019c2 <printf_numbers+0x1f4>
    80201a02:	a01d                	j	80201a28 <printf_numbers+0x25a>
    80201a04:	00000797          	auipc	a5,0x0
    80201a08:	4a47b783          	ld	a5,1188(a5) # 80201ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80201a0c:	639c                	ld	a5,0(a5)
    80201a0e:	fec42703          	lw	a4,-20(s0)
    80201a12:	377d                	addiw	a4,a4,-1
    80201a14:	fee42623          	sw	a4,-20(s0)
    80201a18:	fec42703          	lw	a4,-20(s0)
    80201a1c:	1741                	addi	a4,a4,-16
    80201a1e:	9722                	add	a4,a4,s0
    80201a20:	fc874703          	lbu	a4,-56(a4)
    80201a24:	853a                	mv	a0,a4
    80201a26:	9782                	jalr	a5
    80201a28:	fec42783          	lw	a5,-20(s0)
    80201a2c:	2781                	sext.w	a5,a5
    80201a2e:	fcf04be3          	bgtz	a5,80201a04 <printf_numbers+0x236>
    80201a32:	a05d                	j	80201ad8 <printf_numbers+0x30a>
    80201a34:	fd843783          	ld	a5,-40(s0)
    80201a38:	ef99                	bnez	a5,80201a56 <printf_numbers+0x288>
    80201a3a:	00000797          	auipc	a5,0x0
    80201a3e:	46e7b783          	ld	a5,1134(a5) # 80201ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80201a42:	639c                	ld	a5,0(a5)
    80201a44:	00000717          	auipc	a4,0x0
    80201a48:	41470713          	addi	a4,a4,1044 # 80201e58 <hextable>
    80201a4c:	00074703          	lbu	a4,0(a4)
    80201a50:	853a                	mv	a0,a4
    80201a52:	9782                	jalr	a5
    80201a54:	a051                	j	80201ad8 <printf_numbers+0x30a>
    80201a56:	03c00793          	li	a5,60
    80201a5a:	fcf42a23          	sw	a5,-44(s0)
    80201a5e:	fc0409a3          	sb	zero,-45(s0)
    80201a62:	a8a9                	j	80201abc <printf_numbers+0x2ee>
    80201a64:	fd442783          	lw	a5,-44(s0)
    80201a68:	873e                	mv	a4,a5
    80201a6a:	fd843783          	ld	a5,-40(s0)
    80201a6e:	00e7d7b3          	srl	a5,a5,a4
    80201a72:	2781                	sext.w	a5,a5
    80201a74:	8bbd                	andi	a5,a5,15
    80201a76:	fcf42623          	sw	a5,-52(s0)
    80201a7a:	fcc42783          	lw	a5,-52(s0)
    80201a7e:	2781                	sext.w	a5,a5
    80201a80:	e791                	bnez	a5,80201a8c <printf_numbers+0x2be>
    80201a82:	fd344783          	lbu	a5,-45(s0)
    80201a86:	0ff7f793          	zext.b	a5,a5
    80201a8a:	c785                	beqz	a5,80201ab2 <printf_numbers+0x2e4>
    80201a8c:	4785                	li	a5,1
    80201a8e:	fcf409a3          	sb	a5,-45(s0)
    80201a92:	00000797          	auipc	a5,0x0
    80201a96:	4167b783          	ld	a5,1046(a5) # 80201ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80201a9a:	639c                	ld	a5,0(a5)
    80201a9c:	00000697          	auipc	a3,0x0
    80201aa0:	3bc68693          	addi	a3,a3,956 # 80201e58 <hextable>
    80201aa4:	fcc42703          	lw	a4,-52(s0)
    80201aa8:	9736                	add	a4,a4,a3
    80201aaa:	00074703          	lbu	a4,0(a4)
    80201aae:	853a                	mv	a0,a4
    80201ab0:	9782                	jalr	a5
    80201ab2:	fd442783          	lw	a5,-44(s0)
    80201ab6:	37f1                	addiw	a5,a5,-4
    80201ab8:	fcf42a23          	sw	a5,-44(s0)
    80201abc:	fd442783          	lw	a5,-44(s0)
    80201ac0:	2781                	sext.w	a5,a5
    80201ac2:	fa07d1e3          	bgez	a5,80201a64 <printf_numbers+0x296>
    80201ac6:	a809                	j	80201ad8 <printf_numbers+0x30a>
    80201ac8:	00001517          	auipc	a0,0x1
    80201acc:	9b050513          	addi	a0,a0,-1616 # 80202478 <cmd_end_+0x438>
    80201ad0:	cbbff0ef          	jal	ra,8020178a <outstr>
    80201ad4:	4781                	li	a5,0
    80201ad6:	a011                	j	80201ada <printf_numbers+0x30c>
    80201ad8:	4785                	li	a5,1
    80201ada:	853e                	mv	a0,a5
    80201adc:	60e6                	ld	ra,88(sp)
    80201ade:	6446                	ld	s0,80(sp)
    80201ae0:	6125                	addi	sp,sp,96
    80201ae2:	8082                	ret

0000000080201ae4 <printf>:
    80201ae4:	7159                	addi	sp,sp,-112
    80201ae6:	f406                	sd	ra,40(sp)
    80201ae8:	f022                	sd	s0,32(sp)
    80201aea:	1800                	addi	s0,sp,48
    80201aec:	fca43c23          	sd	a0,-40(s0)
    80201af0:	e40c                	sd	a1,8(s0)
    80201af2:	e810                	sd	a2,16(s0)
    80201af4:	ec14                	sd	a3,24(s0)
    80201af6:	f018                	sd	a4,32(s0)
    80201af8:	f41c                	sd	a5,40(s0)
    80201afa:	03043823          	sd	a6,48(s0)
    80201afe:	03143c23          	sd	a7,56(s0)
    80201b02:	fe042623          	sw	zero,-20(s0)
    80201b06:	04040793          	addi	a5,s0,64
    80201b0a:	fcf43823          	sd	a5,-48(s0)
    80201b0e:	fd043783          	ld	a5,-48(s0)
    80201b12:	fc878793          	addi	a5,a5,-56
    80201b16:	fef43023          	sd	a5,-32(s0)
    80201b1a:	a42d                	j	80201d44 <printf+0x260>
    80201b1c:	fec42783          	lw	a5,-20(s0)
    80201b20:	2781                	sext.w	a5,a5
    80201b22:	cb89                	beqz	a5,80201b34 <printf+0x50>
    80201b24:	fec42783          	lw	a5,-20(s0)
    80201b28:	0007871b          	sext.w	a4,a5
    80201b2c:	4785                	li	a5,1
    80201b2e:	04f70b63          	beq	a4,a5,80201b84 <printf+0xa0>
    80201b32:	ac09                	j	80201d44 <printf+0x260>
    80201b34:	fd843783          	ld	a5,-40(s0)
    80201b38:	0007c783          	lbu	a5,0(a5)
    80201b3c:	873e                	mv	a4,a5
    80201b3e:	02500793          	li	a5,37
    80201b42:	00f71b63          	bne	a4,a5,80201b58 <printf+0x74>
    80201b46:	4785                	li	a5,1
    80201b48:	fef42623          	sw	a5,-20(s0)
    80201b4c:	fd843783          	ld	a5,-40(s0)
    80201b50:	0785                	addi	a5,a5,1
    80201b52:	fcf43c23          	sd	a5,-40(s0)
    80201b56:	a2fd                	j	80201d44 <printf+0x260>
    80201b58:	00000797          	auipc	a5,0x0
    80201b5c:	3507b783          	ld	a5,848(a5) # 80201ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80201b60:	639c                	ld	a5,0(a5)
    80201b62:	fd843703          	ld	a4,-40(s0)
    80201b66:	00074703          	lbu	a4,0(a4)
    80201b6a:	853a                	mv	a0,a4
    80201b6c:	9782                	jalr	a5
    80201b6e:	fd843783          	ld	a5,-40(s0)
    80201b72:	0785                	addi	a5,a5,1
    80201b74:	fcf43c23          	sd	a5,-40(s0)
    80201b78:	a2f1                	j	80201d44 <printf+0x260>
    80201b7a:	fd843783          	ld	a5,-40(s0)
    80201b7e:	0785                	addi	a5,a5,1
    80201b80:	fcf43c23          	sd	a5,-40(s0)
    80201b84:	fd843783          	ld	a5,-40(s0)
    80201b88:	0007c783          	lbu	a5,0(a5)
    80201b8c:	cf85                	beqz	a5,80201bc4 <printf+0xe0>
    80201b8e:	fd843783          	ld	a5,-40(s0)
    80201b92:	0007c783          	lbu	a5,0(a5)
    80201b96:	873e                	mv	a4,a5
    80201b98:	02f00793          	li	a5,47
    80201b9c:	00e7fb63          	bgeu	a5,a4,80201bb2 <printf+0xce>
    80201ba0:	fd843783          	ld	a5,-40(s0)
    80201ba4:	0007c783          	lbu	a5,0(a5)
    80201ba8:	873e                	mv	a4,a5
    80201baa:	03900793          	li	a5,57
    80201bae:	fce7f6e3          	bgeu	a5,a4,80201b7a <printf+0x96>
    80201bb2:	fd843783          	ld	a5,-40(s0)
    80201bb6:	0007c783          	lbu	a5,0(a5)
    80201bba:	873e                	mv	a4,a5
    80201bbc:	02d00793          	li	a5,45
    80201bc0:	faf70de3          	beq	a4,a5,80201b7a <printf+0x96>
    80201bc4:	fd843783          	ld	a5,-40(s0)
    80201bc8:	0007c783          	lbu	a5,0(a5)
    80201bcc:	2781                	sext.w	a5,a5
    80201bce:	86be                	mv	a3,a5
    80201bd0:	07300713          	li	a4,115
    80201bd4:	0ae68b63          	beq	a3,a4,80201c8a <printf+0x1a6>
    80201bd8:	86be                	mv	a3,a5
    80201bda:	07300713          	li	a4,115
    80201bde:	12d74c63          	blt	a4,a3,80201d16 <printf+0x232>
    80201be2:	86be                	mv	a3,a5
    80201be4:	06c00713          	li	a4,108
    80201be8:	0ce68363          	beq	a3,a4,80201cae <printf+0x1ca>
    80201bec:	86be                	mv	a3,a5
    80201bee:	06c00713          	li	a4,108
    80201bf2:	12d74263          	blt	a4,a3,80201d16 <printf+0x232>
    80201bf6:	86be                	mv	a3,a5
    80201bf8:	06300713          	li	a4,99
    80201bfc:	04e68f63          	beq	a3,a4,80201c5a <printf+0x176>
    80201c00:	86be                	mv	a3,a5
    80201c02:	06300713          	li	a4,99
    80201c06:	10d74863          	blt	a4,a3,80201d16 <printf+0x232>
    80201c0a:	86be                	mv	a3,a5
    80201c0c:	05300713          	li	a4,83
    80201c10:	06e68d63          	beq	a3,a4,80201c8a <printf+0x1a6>
    80201c14:	86be                	mv	a3,a5
    80201c16:	05300713          	li	a4,83
    80201c1a:	0ed74e63          	blt	a4,a3,80201d16 <printf+0x232>
    80201c1e:	86be                	mv	a3,a5
    80201c20:	02500713          	li	a4,37
    80201c24:	00e68863          	beq	a3,a4,80201c34 <printf+0x150>
    80201c28:	873e                	mv	a4,a5
    80201c2a:	04300793          	li	a5,67
    80201c2e:	02f70663          	beq	a4,a5,80201c5a <printf+0x176>
    80201c32:	a0d5                	j	80201d16 <printf+0x232>
    80201c34:	00000797          	auipc	a5,0x0
    80201c38:	2747b783          	ld	a5,628(a5) # 80201ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80201c3c:	639c                	ld	a5,0(a5)
    80201c3e:	fd843703          	ld	a4,-40(s0)
    80201c42:	00074703          	lbu	a4,0(a4)
    80201c46:	853a                	mv	a0,a4
    80201c48:	9782                	jalr	a5
    80201c4a:	fd843783          	ld	a5,-40(s0)
    80201c4e:	0785                	addi	a5,a5,1
    80201c50:	fcf43c23          	sd	a5,-40(s0)
    80201c54:	fe042623          	sw	zero,-20(s0)
    80201c58:	a0f5                	j	80201d44 <printf+0x260>
    80201c5a:	00000797          	auipc	a5,0x0
    80201c5e:	24e7b783          	ld	a5,590(a5) # 80201ea8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80201c62:	6398                	ld	a4,0(a5)
    80201c64:	fe043783          	ld	a5,-32(s0)
    80201c68:	00878693          	addi	a3,a5,8
    80201c6c:	fed43023          	sd	a3,-32(s0)
    80201c70:	439c                	lw	a5,0(a5)
    80201c72:	0ff7f793          	zext.b	a5,a5
    80201c76:	853e                	mv	a0,a5
    80201c78:	9702                	jalr	a4
    80201c7a:	fd843783          	ld	a5,-40(s0)
    80201c7e:	0785                	addi	a5,a5,1
    80201c80:	fcf43c23          	sd	a5,-40(s0)
    80201c84:	fe042623          	sw	zero,-20(s0)
    80201c88:	a875                	j	80201d44 <printf+0x260>
    80201c8a:	fe043783          	ld	a5,-32(s0)
    80201c8e:	00878713          	addi	a4,a5,8
    80201c92:	fee43023          	sd	a4,-32(s0)
    80201c96:	639c                	ld	a5,0(a5)
    80201c98:	853e                	mv	a0,a5
    80201c9a:	af1ff0ef          	jal	ra,8020178a <outstr>
    80201c9e:	fd843783          	ld	a5,-40(s0)
    80201ca2:	0785                	addi	a5,a5,1
    80201ca4:	fcf43c23          	sd	a5,-40(s0)
    80201ca8:	fe042623          	sw	zero,-20(s0)
    80201cac:	a861                	j	80201d44 <printf+0x260>
    80201cae:	4785                	li	a5,1
    80201cb0:	fef42423          	sw	a5,-24(s0)
    80201cb4:	fd843783          	ld	a5,-40(s0)
    80201cb8:	0785                	addi	a5,a5,1
    80201cba:	fcf43c23          	sd	a5,-40(s0)
    80201cbe:	fd843783          	ld	a5,-40(s0)
    80201cc2:	0007c783          	lbu	a5,0(a5)
    80201cc6:	873e                	mv	a4,a5
    80201cc8:	06c00793          	li	a5,108
    80201ccc:	00f71c63          	bne	a4,a5,80201ce4 <printf+0x200>
    80201cd0:	fe842783          	lw	a5,-24(s0)
    80201cd4:	2785                	addiw	a5,a5,1
    80201cd6:	fef42423          	sw	a5,-24(s0)
    80201cda:	fd843783          	ld	a5,-40(s0)
    80201cde:	0785                	addi	a5,a5,1
    80201ce0:	fcf43c23          	sd	a5,-40(s0)
    80201ce4:	fd843783          	ld	a5,-40(s0)
    80201ce8:	0007c783          	lbu	a5,0(a5)
    80201cec:	fe842683          	lw	a3,-24(s0)
    80201cf0:	fe040713          	addi	a4,s0,-32
    80201cf4:	8636                	mv	a2,a3
    80201cf6:	85ba                	mv	a1,a4
    80201cf8:	853e                	mv	a0,a5
    80201cfa:	ad5ff0ef          	jal	ra,802017ce <printf_numbers>
    80201cfe:	87aa                	mv	a5,a0
    80201d00:	cb89                	beqz	a5,80201d12 <printf+0x22e>
    80201d02:	fe042623          	sw	zero,-20(s0)
    80201d06:	fd843783          	ld	a5,-40(s0)
    80201d0a:	0785                	addi	a5,a5,1
    80201d0c:	fcf43c23          	sd	a5,-40(s0)
    80201d10:	a815                	j	80201d44 <printf+0x260>
    80201d12:	57fd                	li	a5,-1
    80201d14:	a83d                	j	80201d52 <printf+0x26e>
    80201d16:	fd843783          	ld	a5,-40(s0)
    80201d1a:	0007c783          	lbu	a5,0(a5)
    80201d1e:	fe040713          	addi	a4,s0,-32
    80201d22:	4601                	li	a2,0
    80201d24:	85ba                	mv	a1,a4
    80201d26:	853e                	mv	a0,a5
    80201d28:	aa7ff0ef          	jal	ra,802017ce <printf_numbers>
    80201d2c:	87aa                	mv	a5,a0
    80201d2e:	cb89                	beqz	a5,80201d40 <printf+0x25c>
    80201d30:	fe042623          	sw	zero,-20(s0)
    80201d34:	fd843783          	ld	a5,-40(s0)
    80201d38:	0785                	addi	a5,a5,1
    80201d3a:	fcf43c23          	sd	a5,-40(s0)
    80201d3e:	a019                	j	80201d44 <printf+0x260>
    80201d40:	57fd                	li	a5,-1
    80201d42:	a801                	j	80201d52 <printf+0x26e>
    80201d44:	fd843783          	ld	a5,-40(s0)
    80201d48:	0007c783          	lbu	a5,0(a5)
    80201d4c:	dc0798e3          	bnez	a5,80201b1c <printf+0x38>
    80201d50:	4781                	li	a5,0
    80201d52:	853e                	mv	a0,a5
    80201d54:	70a2                	ld	ra,40(sp)
    80201d56:	7402                	ld	s0,32(sp)
    80201d58:	6165                	addi	sp,sp,112
    80201d5a:	8082                	ret

0000000080201d5c <platform_init>:
    80201d5c:	1141                	addi	sp,sp,-16
    80201d5e:	e406                	sd	ra,8(sp)
    80201d60:	e022                	sd	s0,0(sp)
    80201d62:	0800                	addi	s0,sp,16
    80201d64:	060000ef          	jal	ra,80201dc4 <_Z9uart_initv>
    80201d68:	00000517          	auipc	a0,0x0
    80201d6c:	12853503          	ld	a0,296(a0) # 80201e90 <_GLOBAL_OFFSET_TABLE_+0x28>
    80201d70:	a9efe0ef          	jal	ra,8020000e <set_read_char>
    80201d74:	00000517          	auipc	a0,0x0
    80201d78:	10453503          	ld	a0,260(a0) # 80201e78 <_GLOBAL_OFFSET_TABLE_+0x10>
    80201d7c:	ab2fe0ef          	jal	ra,8020002e <set_write_char>
    80201d80:	0001                	nop
    80201d82:	60a2                	ld	ra,8(sp)
    80201d84:	6402                	ld	s0,0(sp)
    80201d86:	0141                	addi	sp,sp,16
    80201d88:	8082                	ret

0000000080201d8a <_Z4putcc>:
    80201d8a:	1101                	addi	sp,sp,-32
    80201d8c:	ec22                	sd	s0,24(sp)
    80201d8e:	1000                	addi	s0,sp,32
    80201d90:	87aa                	mv	a5,a0
    80201d92:	fef407a3          	sb	a5,-17(s0)
    80201d96:	fef44783          	lbu	a5,-17(s0)
    80201d9a:	853e                	mv	a0,a5
    80201d9c:	4885                	li	a7,1
    80201d9e:	00000073          	ecall
    80201da2:	0001                	nop
    80201da4:	6462                	ld	s0,24(sp)
    80201da6:	6105                	addi	sp,sp,32
    80201da8:	8082                	ret

0000000080201daa <_Z4getcv>:
    80201daa:	1141                	addi	sp,sp,-16
    80201dac:	e422                	sd	s0,8(sp)
    80201dae:	0800                	addi	s0,sp,16
    80201db0:	4501                	li	a0,0
    80201db2:	4889                	li	a7,2
    80201db4:	00000073          	ecall
    80201db8:	87aa                	mv	a5,a0
    80201dba:	2781                	sext.w	a5,a5
    80201dbc:	853e                	mv	a0,a5
    80201dbe:	6422                	ld	s0,8(sp)
    80201dc0:	0141                	addi	sp,sp,16
    80201dc2:	8082                	ret

0000000080201dc4 <_Z9uart_initv>:
    80201dc4:	1141                	addi	sp,sp,-16
    80201dc6:	e422                	sd	s0,8(sp)
    80201dc8:	0800                	addi	s0,sp,16
    80201dca:	0001                	nop
    80201dcc:	6422                	ld	s0,8(sp)
    80201dce:	0141                	addi	sp,sp,16
    80201dd0:	8082                	ret

0000000080201dd2 <_Z5helloiPPc>:
    80201dd2:	7179                	addi	sp,sp,-48
    80201dd4:	f406                	sd	ra,40(sp)
    80201dd6:	f022                	sd	s0,32(sp)
    80201dd8:	1800                	addi	s0,sp,48
    80201dda:	87aa                	mv	a5,a0
    80201ddc:	fcb43823          	sd	a1,-48(s0)
    80201de0:	fcf42e23          	sw	a5,-36(s0)
    80201de4:	fe042623          	sw	zero,-20(s0)
    80201de8:	a035                	j	80201e14 <_Z5helloiPPc+0x42>
    80201dea:	fec42783          	lw	a5,-20(s0)
    80201dee:	078e                	slli	a5,a5,0x3
    80201df0:	fd043703          	ld	a4,-48(s0)
    80201df4:	97ba                	add	a5,a5,a4
    80201df6:	639c                	ld	a5,0(a5)
    80201df8:	853e                	mv	a0,a5
    80201dfa:	cebff0ef          	jal	ra,80201ae4 <printf>
    80201dfe:	00000517          	auipc	a0,0x0
    80201e02:	68a50513          	addi	a0,a0,1674 # 80202488 <cmd_end_+0x448>
    80201e06:	cdfff0ef          	jal	ra,80201ae4 <printf>
    80201e0a:	fec42783          	lw	a5,-20(s0)
    80201e0e:	2785                	addiw	a5,a5,1
    80201e10:	fef42623          	sw	a5,-20(s0)
    80201e14:	fec42783          	lw	a5,-20(s0)
    80201e18:	873e                	mv	a4,a5
    80201e1a:	fdc42783          	lw	a5,-36(s0)
    80201e1e:	2701                	sext.w	a4,a4
    80201e20:	2781                	sext.w	a5,a5
    80201e22:	fcf744e3          	blt	a4,a5,80201dea <_Z5helloiPPc+0x18>
    80201e26:	00000517          	auipc	a0,0x0
    80201e2a:	66a50513          	addi	a0,a0,1642 # 80202490 <cmd_end_+0x450>
    80201e2e:	cb7ff0ef          	jal	ra,80201ae4 <printf>
    80201e32:	4781                	li	a5,0
    80201e34:	853e                	mv	a0,a5
    80201e36:	70a2                	ld	ra,40(sp)
    80201e38:	7402                	ld	s0,32(sp)
    80201e3a:	6145                	addi	sp,sp,48
    80201e3c:	8082                	ret
