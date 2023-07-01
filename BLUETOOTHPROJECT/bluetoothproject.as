opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6446"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 2 "C:\Users\Raghul\OneDrive\Desktop\PIC FILES\BLUETOOTHPROJECT\bluetoothproject.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Raghul\OneDrive\Desktop\PIC FILES\BLUETOOTHPROJECT\bluetoothproject.c"
	dw 0X3F72 ;#
	FNROOT	_main
	global	_PORTB
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_SPBRG
_SPBRG	set	153
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TXSTA
_TXSTA	set	152
	global	_BRGH
_BRGH	set	1218
	file	"bluetoothproject.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3       3
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      3       3       1       21.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 7 in file "C:\Users\Raghul\OneDrive\Desktop\PIC FILES\BLUETOOTHPROJECT\bluetoothproject.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Raghul\OneDrive\Desktop\PIC FILES\BLUETOOTHPROJECT\bluetoothproject.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	9
	
l1728:	
;bluetoothproject.c: 9: TRISC=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	10
	
l1730:	
;bluetoothproject.c: 10: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	11
	
l1732:	
;bluetoothproject.c: 11: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	12
;bluetoothproject.c: 12: TXSTA=0x24;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	13
;bluetoothproject.c: 13: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	14
	
l1734:	
;bluetoothproject.c: 14: BRGH=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7
	line	15
;bluetoothproject.c: 15: SPBRG=25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	17
;bluetoothproject.c: 17: while (1)
	
l561:	
	line	19
;bluetoothproject.c: 18: {
;bluetoothproject.c: 19: if (RCREG=='1')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(26),w	;volatile
	xorlw	031h
	skipz
	goto	u2141
	goto	u2140
u2141:
	goto	l562
u2140:
	line	21
	
l1736:	
;bluetoothproject.c: 20: {
;bluetoothproject.c: 21: PORTB=0X0F;
	movlw	(0Fh)
	movwf	(6)	;volatile
	line	23
;bluetoothproject.c: 23: }
	goto	l563
	line	24
	
l562:	
	
l1738:	
;bluetoothproject.c: 24: else if(RCREG=='2')
	movf	(26),w	;volatile
	xorlw	032h
	skipz
	goto	u2151
	goto	u2150
u2151:
	goto	l564
u2150:
	line	26
	
l1740:	
;bluetoothproject.c: 25: {
;bluetoothproject.c: 26: PORTB=0X55;
	movlw	(055h)
	movwf	(6)	;volatile
	line	27
;bluetoothproject.c: 27: }
	goto	l565
	line	28
	
l564:	
	
l1742:	
;bluetoothproject.c: 28: else if(RCREG=='3')
	movf	(26),w	;volatile
	xorlw	033h
	skipz
	goto	u2161
	goto	u2160
u2161:
	goto	l566
u2160:
	line	30
	
l1744:	
;bluetoothproject.c: 29: {
;bluetoothproject.c: 30: PORTB=0XAA;
	movlw	(0AAh)
	movwf	(6)	;volatile
	line	32
;bluetoothproject.c: 32: }
	goto	l567
	line	33
	
l566:	
	
l1746:	
;bluetoothproject.c: 33: else if(RCREG=='4')
	movf	(26),w	;volatile
	xorlw	034h
	skipz
	goto	u2171
	goto	u2170
u2171:
	goto	l568
u2170:
	line	36
	
l1748:	
;bluetoothproject.c: 34: {
;bluetoothproject.c: 36: PORTB=0XFF;
	movlw	(0FFh)
	movwf	(6)	;volatile
	line	37
;bluetoothproject.c: 37: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2197:
	decfsz	((??_main+0)+0),f
	goto	u2197
	decfsz	((??_main+0)+0+1),f
	goto	u2197
	decfsz	((??_main+0)+0+2),f
	goto	u2197
opt asmopt_on

	line	38
	
l1750:	
;bluetoothproject.c: 38: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	39
	
l1752:	
;bluetoothproject.c: 39: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2207:
	decfsz	((??_main+0)+0),f
	goto	u2207
	decfsz	((??_main+0)+0+1),f
	goto	u2207
	decfsz	((??_main+0)+0+2),f
	goto	u2207
opt asmopt_on

	line	40
;bluetoothproject.c: 40: }
	goto	l569
	line	41
	
l568:	
	
l1754:	
;bluetoothproject.c: 41: else if(RCREG=='5')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(26),w	;volatile
	xorlw	035h
	skipz
	goto	u2181
	goto	u2180
u2181:
	goto	l570
u2180:
	line	44
	
l1756:	
;bluetoothproject.c: 42: {
;bluetoothproject.c: 44: PORTB=0X01;
	movlw	(01h)
	movwf	(6)	;volatile
	line	45
;bluetoothproject.c: 45: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2217:
	decfsz	((??_main+0)+0),f
	goto	u2217
	decfsz	((??_main+0)+0+1),f
	goto	u2217
	decfsz	((??_main+0)+0+2),f
	goto	u2217
opt asmopt_on

	line	46
	
l1758:	
;bluetoothproject.c: 46: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	47
	
l1760:	
;bluetoothproject.c: 47: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2227:
	decfsz	((??_main+0)+0),f
	goto	u2227
	decfsz	((??_main+0)+0+1),f
	goto	u2227
	decfsz	((??_main+0)+0+2),f
	goto	u2227
opt asmopt_on

	line	48
	
l1762:	
;bluetoothproject.c: 48: PORTB=0X02;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	49
	
l1764:	
;bluetoothproject.c: 49: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2237:
	decfsz	((??_main+0)+0),f
	goto	u2237
	decfsz	((??_main+0)+0+1),f
	goto	u2237
	decfsz	((??_main+0)+0+2),f
	goto	u2237
opt asmopt_on

	line	50
;bluetoothproject.c: 50: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	51
	
l1766:	
;bluetoothproject.c: 51: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2247:
	decfsz	((??_main+0)+0),f
	goto	u2247
	decfsz	((??_main+0)+0+1),f
	goto	u2247
	decfsz	((??_main+0)+0+2),f
	goto	u2247
opt asmopt_on

	line	52
	
l1768:	
;bluetoothproject.c: 52: PORTB=0X04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	53
	
l1770:	
;bluetoothproject.c: 53: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2257:
	decfsz	((??_main+0)+0),f
	goto	u2257
	decfsz	((??_main+0)+0+1),f
	goto	u2257
	decfsz	((??_main+0)+0+2),f
	goto	u2257
opt asmopt_on

	line	54
	
l1772:	
;bluetoothproject.c: 54: PORTB=0X0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	55
;bluetoothproject.c: 55: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2267:
	decfsz	((??_main+0)+0),f
	goto	u2267
	decfsz	((??_main+0)+0+1),f
	goto	u2267
	decfsz	((??_main+0)+0+2),f
	goto	u2267
opt asmopt_on

	line	56
;bluetoothproject.c: 56: PORTB=0X08;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	57
;bluetoothproject.c: 57: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2277:
	decfsz	((??_main+0)+0),f
	goto	u2277
	decfsz	((??_main+0)+0+1),f
	goto	u2277
	decfsz	((??_main+0)+0+2),f
	goto	u2277
opt asmopt_on

	line	58
	
l1774:	
;bluetoothproject.c: 58: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	59
	
l1776:	
;bluetoothproject.c: 59: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2287:
	decfsz	((??_main+0)+0),f
	goto	u2287
	decfsz	((??_main+0)+0+1),f
	goto	u2287
	decfsz	((??_main+0)+0+2),f
	goto	u2287
opt asmopt_on

	line	60
	
l1778:	
;bluetoothproject.c: 60: PORTB=0X10;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	61
	
l1780:	
;bluetoothproject.c: 61: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2297:
	decfsz	((??_main+0)+0),f
	goto	u2297
	decfsz	((??_main+0)+0+1),f
	goto	u2297
	decfsz	((??_main+0)+0+2),f
	goto	u2297
opt asmopt_on

	line	62
;bluetoothproject.c: 62: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	63
	
l1782:	
;bluetoothproject.c: 63: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2307:
	decfsz	((??_main+0)+0),f
	goto	u2307
	decfsz	((??_main+0)+0+1),f
	goto	u2307
	decfsz	((??_main+0)+0+2),f
	goto	u2307
opt asmopt_on

	line	64
	
l1784:	
;bluetoothproject.c: 64: PORTB=0X20;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	65
	
l1786:	
;bluetoothproject.c: 65: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2317:
	decfsz	((??_main+0)+0),f
	goto	u2317
	decfsz	((??_main+0)+0+1),f
	goto	u2317
	decfsz	((??_main+0)+0+2),f
	goto	u2317
opt asmopt_on

	line	66
	
l1788:	
;bluetoothproject.c: 66: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	67
;bluetoothproject.c: 67: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2327:
	decfsz	((??_main+0)+0),f
	goto	u2327
	decfsz	((??_main+0)+0+1),f
	goto	u2327
	decfsz	((??_main+0)+0+2),f
	goto	u2327
opt asmopt_on

	line	68
;bluetoothproject.c: 68: PORTB=0X40;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	69
;bluetoothproject.c: 69: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2337:
	decfsz	((??_main+0)+0),f
	goto	u2337
	decfsz	((??_main+0)+0+1),f
	goto	u2337
	decfsz	((??_main+0)+0+2),f
	goto	u2337
opt asmopt_on

	line	70
	
l1790:	
;bluetoothproject.c: 70: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	71
	
l1792:	
;bluetoothproject.c: 71: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2347:
	decfsz	((??_main+0)+0),f
	goto	u2347
	decfsz	((??_main+0)+0+1),f
	goto	u2347
	decfsz	((??_main+0)+0+2),f
	goto	u2347
opt asmopt_on

	line	72
	
l1794:	
;bluetoothproject.c: 72: PORTB=0X80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	73
	
l1796:	
;bluetoothproject.c: 73: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2357:
	decfsz	((??_main+0)+0),f
	goto	u2357
	decfsz	((??_main+0)+0+1),f
	goto	u2357
	decfsz	((??_main+0)+0+2),f
	goto	u2357
opt asmopt_on

	line	74
;bluetoothproject.c: 74: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	75
	
l1798:	
;bluetoothproject.c: 75: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2367:
	decfsz	((??_main+0)+0),f
	goto	u2367
	decfsz	((??_main+0)+0+1),f
	goto	u2367
	decfsz	((??_main+0)+0+2),f
	goto	u2367
opt asmopt_on

	line	76
	
l570:	
	line	79
	
l569:	
	
l567:	
	
l565:	
	
l563:	
	
l571:	
	line	17
	goto	l561
	
l572:	
	line	80
	
l573:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
