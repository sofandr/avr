
blink.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <main>:
   0:	bc 9a       	sbi	0x17, 4	; 23
   2:	c4 98       	cbi	0x18, 4	; 24
   4:	90 e1       	ldi	r25, 0x10	; 16
   6:	2f eb       	ldi	r18, 0xBF	; 191
   8:	34 ed       	ldi	r19, 0xD4	; 212
   a:	81 e0       	ldi	r24, 0x01	; 1
   c:	21 50       	subi	r18, 0x01	; 1
   e:	30 40       	sbci	r19, 0x00	; 0
  10:	80 40       	sbci	r24, 0x00	; 0
  12:	e1 f7       	brne	.-8      	; 0xc <__zero_reg__+0xb>
  14:	00 c0       	rjmp	.+0      	; 0x16 <__zero_reg__+0x15>
  16:	00 00       	nop
  18:	88 b3       	in	r24, 0x18	; 24
  1a:	89 27       	eor	r24, r25
  1c:	88 bb       	out	0x18, r24	; 24
  1e:	f3 cf       	rjmp	.-26     	; 0x6 <__zero_reg__+0x5>
