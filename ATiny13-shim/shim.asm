
shim.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	09 c0       	rjmp	.+18     	; 0x14 <__ctors_end>
   2:	16 c0       	rjmp	.+44     	; 0x30 <__bad_interrupt>
   4:	16 c0       	rjmp	.+44     	; 0x32 <__vector_2>
   6:	32 c0       	rjmp	.+100    	; 0x6c <__vector_3>
   8:	13 c0       	rjmp	.+38     	; 0x30 <__bad_interrupt>
   a:	12 c0       	rjmp	.+36     	; 0x30 <__bad_interrupt>
   c:	11 c0       	rjmp	.+34     	; 0x30 <__bad_interrupt>
   e:	10 c0       	rjmp	.+32     	; 0x30 <__bad_interrupt>
  10:	0f c0       	rjmp	.+30     	; 0x30 <__bad_interrupt>
  12:	0e c0       	rjmp	.+28     	; 0x30 <__bad_interrupt>

00000014 <__ctors_end>:
  14:	11 24       	eor	r1, r1
  16:	1f be       	out	0x3f, r1	; 63
  18:	cf e9       	ldi	r28, 0x9F	; 159
  1a:	cd bf       	out	0x3d, r28	; 61

0000001c <__do_clear_bss>:
  1c:	20 e0       	ldi	r18, 0x00	; 0
  1e:	a0 e6       	ldi	r26, 0x60	; 96
  20:	b0 e0       	ldi	r27, 0x00	; 0
  22:	01 c0       	rjmp	.+2      	; 0x26 <.do_clear_bss_start>

00000024 <.do_clear_bss_loop>:
  24:	1d 92       	st	X+, r1

00000026 <.do_clear_bss_start>:
  26:	a2 36       	cpi	r26, 0x62	; 98
  28:	b2 07       	cpc	r27, r18
  2a:	e1 f7       	brne	.-8      	; 0x24 <.do_clear_bss_loop>
  2c:	55 d0       	rcall	.+170    	; 0xd8 <main>
  2e:	6c c0       	rjmp	.+216    	; 0x108 <_exit>

00000030 <__bad_interrupt>:
  30:	e7 cf       	rjmp	.-50     	; 0x0 <__vectors>

00000032 <__vector_2>:
  32:	1f 92       	push	r1
  34:	0f 92       	push	r0
  36:	0f b6       	in	r0, 0x3f	; 63
  38:	0f 92       	push	r0
  3a:	11 24       	eor	r1, r1
  3c:	8f 93       	push	r24
  3e:	80 91 61 00 	lds	r24, 0x0061	; 0x800061 <state>
  42:	81 11       	cpse	r24, r1
  44:	0d c0       	rjmp	.+26     	; 0x60 <__DATA_REGION_LENGTH__+0x20>
  46:	b3 99       	sbic	0x16, 3	; 22
  48:	04 c0       	rjmp	.+8      	; 0x52 <__DATA_REGION_LENGTH__+0x12>
  4a:	b4 9b       	sbis	0x16, 4	; 22
  4c:	02 c0       	rjmp	.+4      	; 0x52 <__DATA_REGION_LENGTH__+0x12>
  4e:	81 e0       	ldi	r24, 0x01	; 1
  50:	05 c0       	rjmp	.+10     	; 0x5c <__DATA_REGION_LENGTH__+0x1c>
  52:	b3 9b       	sbis	0x16, 3	; 22
  54:	05 c0       	rjmp	.+10     	; 0x60 <__DATA_REGION_LENGTH__+0x20>
  56:	b4 99       	sbic	0x16, 4	; 22
  58:	03 c0       	rjmp	.+6      	; 0x60 <__DATA_REGION_LENGTH__+0x20>
  5a:	82 e0       	ldi	r24, 0x02	; 2
  5c:	80 93 61 00 	sts	0x0061, r24	; 0x800061 <state>
  60:	8f 91       	pop	r24
  62:	0f 90       	pop	r0
  64:	0f be       	out	0x3f, r0	; 63
  66:	0f 90       	pop	r0
  68:	1f 90       	pop	r1
  6a:	18 95       	reti

0000006c <__vector_3>:
  6c:	1f 92       	push	r1
  6e:	0f 92       	push	r0
  70:	0f b6       	in	r0, 0x3f	; 63
  72:	0f 92       	push	r0
  74:	11 24       	eor	r1, r1
  76:	8f 93       	push	r24
  78:	80 91 61 00 	lds	r24, 0x0061	; 0x800061 <state>
  7c:	88 23       	and	r24, r24
  7e:	31 f1       	breq	.+76     	; 0xcc <__stack+0x2d>
  80:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
  84:	8a 3f       	cpi	r24, 0xFA	; 250
  86:	30 f4       	brcc	.+12     	; 0x94 <__vector_3+0x28>
  88:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
  8c:	8f 5f       	subi	r24, 0xFF	; 255
  8e:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
  92:	1c c0       	rjmp	.+56     	; 0xcc <__stack+0x2d>
  94:	80 91 61 00 	lds	r24, 0x0061	; 0x800061 <state>
  98:	81 30       	cpi	r24, 0x01	; 1
  9a:	49 f4       	brne	.+18     	; 0xae <__stack+0xf>
  9c:	86 b7       	in	r24, 0x36	; 54
  9e:	8b 3f       	cpi	r24, 0xFB	; 251
  a0:	18 f4       	brcc	.+6      	; 0xa8 <__stack+0x9>
  a2:	86 b7       	in	r24, 0x36	; 54
  a4:	8f 5f       	subi	r24, 0xFF	; 255
  a6:	86 bf       	out	0x36, r24	; 54
  a8:	b3 9b       	sbis	0x16, 3	; 22
  aa:	0e c0       	rjmp	.+28     	; 0xc8 <__stack+0x29>
  ac:	0b c0       	rjmp	.+22     	; 0xc4 <__stack+0x25>
  ae:	80 91 61 00 	lds	r24, 0x0061	; 0x800061 <state>
  b2:	82 30       	cpi	r24, 0x02	; 2
  b4:	49 f4       	brne	.+18     	; 0xc8 <__stack+0x29>
  b6:	86 b7       	in	r24, 0x36	; 54
  b8:	88 23       	and	r24, r24
  ba:	19 f0       	breq	.+6      	; 0xc2 <__stack+0x23>
  bc:	86 b7       	in	r24, 0x36	; 54
  be:	81 50       	subi	r24, 0x01	; 1
  c0:	86 bf       	out	0x36, r24	; 54
  c2:	b4 99       	sbic	0x16, 4	; 22
  c4:	10 92 61 00 	sts	0x0061, r1	; 0x800061 <state>
  c8:	10 92 60 00 	sts	0x0060, r1	; 0x800060 <__DATA_REGION_ORIGIN__>
  cc:	8f 91       	pop	r24
  ce:	0f 90       	pop	r0
  d0:	0f be       	out	0x3f, r0	; 63
  d2:	0f 90       	pop	r0
  d4:	1f 90       	pop	r1
  d6:	18 95       	reti

000000d8 <main>:
  d8:	b8 9a       	sbi	0x17, 0	; 23
  da:	c0 98       	cbi	0x18, 0	; 24
  dc:	87 b3       	in	r24, 0x17	; 23
  de:	87 7e       	andi	r24, 0xE7	; 231
  e0:	87 bb       	out	0x17, r24	; 23
  e2:	88 b3       	in	r24, 0x18	; 24
  e4:	88 61       	ori	r24, 0x18	; 24
  e6:	88 bb       	out	0x18, r24	; 24
  e8:	81 e8       	ldi	r24, 0x81	; 129
  ea:	8f bd       	out	0x2f, r24	; 47
  ec:	81 e0       	ldi	r24, 0x01	; 1
  ee:	83 bf       	out	0x33, r24	; 51
  f0:	12 be       	out	0x32, r1	; 50
  f2:	16 be       	out	0x36, r1	; 54
  f4:	82 e0       	ldi	r24, 0x02	; 2
  f6:	89 bf       	out	0x39, r24	; 57
  f8:	8b b7       	in	r24, 0x3b	; 59
  fa:	80 62       	ori	r24, 0x20	; 32
  fc:	8b bf       	out	0x3b, r24	; 59
  fe:	85 b3       	in	r24, 0x15	; 21
 100:	88 61       	ori	r24, 0x18	; 24
 102:	85 bb       	out	0x15, r24	; 21
 104:	78 94       	sei
 106:	ff cf       	rjmp	.-2      	; 0x106 <main+0x2e>

00000108 <_exit>:
 108:	f8 94       	cli

0000010a <__stop_program>:
 10a:	ff cf       	rjmp	.-2      	; 0x10a <__stop_program>
