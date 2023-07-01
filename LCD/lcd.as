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
# 2 "C:\Users\Raghul\OneDrive\Desktop\PIC FILES\LCD\lcd.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Raghul\OneDrive\Desktop\PIC FILES\LCD\lcd.c"
	dw 0X3F72 ;#
	FNCALL	_main,_Initial
	FNCALL	_main,_command
	FNCALL	_main,_data
	FNCALL	_Initial,_command
	FNROOT	_main
	global	main@F519
	global	main@F521
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Raghul\OneDrive\Desktop\PIC FILES\LCD\lcd.c"
	line	37

;initializer for main@F519
	retlw	050h
	retlw	041h
	retlw	04Eh
	retlw	049h
	retlw	04Dh
	retlw	041h
	retlw	04Ch
	retlw	041h
	retlw	052h
	retlw	0
	line	38

;initializer for main@F521
	retlw	045h
	retlw	043h
	retlw	045h
	retlw	05Fh
	retlw	044h
	retlw	045h
	retlw	050h
	retlw	054h
	retlw	0
	global	_PORTD
_PORTD	set	8
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"lcd.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Raghul\OneDrive\Desktop\PIC FILES\LCD\lcd.c"
	line	37
main@F519:
       ds      10

psect	dataBANK0
	file	"C:\Users\Raghul\OneDrive\Desktop\PIC FILES\LCD\lcd.c"
	line	38
main@F521:
       ds      9

global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+19)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_command
?_command:	; 0 bytes @ 0x0
	global	??_command
??_command:	; 0 bytes @ 0x0
	global	?_data
?_data:	; 0 bytes @ 0x0
	global	??_data
??_data:	; 0 bytes @ 0x0
	global	?_Initial
?_Initial:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	3
	global	command@y
command@y:	; 1 bytes @ 0x3
	global	data@x
data@x:	; 1 bytes @ 0x3
	ds	1
	global	??_Initial
??_Initial:	; 0 bytes @ 0x4
	global	??_main
??_main:	; 0 bytes @ 0x4
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@a
main@a:	; 10 bytes @ 0x0
	ds	10
	global	main@b
main@b:	; 9 bytes @ 0xA
	ds	9
	global	main@i
main@i:	; 2 bytes @ 0x13
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x15
	ds	2
;;Data sizes: Strings 0, constant 0, data 19, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80     23      42
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_command
;;   _main->_data
;;   _Initial->_command
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                27    27      0     250
;;                                              4 COMMON     4     4      0
;;                                              0 BANK0     23    23      0
;;                            _Initial
;;                            _command
;;                               _data
;; ---------------------------------------------------------------------------------
;; (1) _Initial                                              0     0      0      22
;;                            _command
;; ---------------------------------------------------------------------------------
;; (1) _data                                                 4     4      0      22
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _command                                              4     4      0      22
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Initial
;;     _command
;;   _command
;;   _data
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      34      12        0.0%
;;ABS                  0      0      32       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50     17      2A       5       52.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      8       8       1       57.1%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 33 in file "C:\Users\Raghul\OneDrive\Desktop\PIC FILES\LCD\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2   21[BANK0 ] int 
;;  i               2   19[BANK0 ] int 
;;  a              10    0[BANK0 ] unsigned char [10]
;;  b               9   10[BANK0 ] unsigned char [9]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      23       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      23       0       0       0
;;Total ram usage:       27 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Initial
;;		_command
;;		_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Raghul\OneDrive\Desktop\PIC FILES\LCD\lcd.c"
	line	33
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	34
	
l1816:	
;lcd.c: 34: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	35
;lcd.c: 35: TRISD=0X00;
	clrf	(136)^080h	;volatile
	line	36
	
l1818:	
;lcd.c: 36: Initial();
	fcall	_Initial
	line	37
	
l1820:	
;lcd.c: 37: char a[]={"PANIMALAR"};
	movlw	(main@a)&0ffh
	movwf	fsr0
	movlw	low(main@F519)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2200:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2200
	line	38
	
l1822:	
;lcd.c: 38: char b[]={"ECE_DEPT"};
	movlw	(main@b)&0ffh
	movwf	fsr0
	movlw	low(main@F521)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	9
	movwf	((??_main+0)+0+2)
u2210:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2210
	line	41
;lcd.c: 41: while(1)
	
l574:	
	line	43
	
l1824:	
;lcd.c: 42: {
;lcd.c: 43: command(0x80);
	movlw	(080h)
	fcall	_command
	line	44
	
l1826:	
;lcd.c: 44: for(int i=0;i<=8;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l1828:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(09h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2225
	movlw	low(09h)
	subwf	(main@i),w
u2225:

	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l575
u2220:
	
l1830:	
	goto	l576
	line	45
	
l575:	
	line	46
	
l1832:	
;lcd.c: 45: {
;lcd.c: 46: data(a[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_data
	line	44
	
l1834:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1836:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(09h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2235
	movlw	low(09h)
	subwf	(main@i),w
u2235:

	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l575
u2230:
	
l576:	
	line	48
	
l1838:	
;lcd.c: 47: }
;lcd.c: 48: command(0xc0);
	movlw	(0C0h)
	fcall	_command
	line	49
	
l1840:	
;lcd.c: 49: for(int j=0;j<=9;j++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@j)
	movlw	high(0)
	movwf	((main@j))+1
	
l1842:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2245
	movlw	low(0Ah)
	subwf	(main@j),w
u2245:

	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l577
u2240:
	
l1844:	
	goto	l578
	line	50
	
l577:	
	line	51
	
l1846:	
;lcd.c: 50: {
;lcd.c: 51: data(b[j]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j),w
	addlw	main@b&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_data
	line	49
	
l1848:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	
l1850:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2255
	movlw	low(0Ah)
	subwf	(main@j),w
u2255:

	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l577
u2250:
	
l578:	
	line	53
;lcd.c: 52: }
;lcd.c: 53: break;
	goto	l579
	line	54
	
l580:	
	line	41
	goto	l574
	
l579:	
	line	55
	
l581:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Initial
psect	text121,local,class=CODE,delta=2
global __ptext121
__ptext121:

;; *************** function _Initial *****************
;; Defined at:
;;		line 26 in file "C:\Users\Raghul\OneDrive\Desktop\PIC FILES\LCD\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text121
	file	"C:\Users\Raghul\OneDrive\Desktop\PIC FILES\LCD\lcd.c"
	line	26
	global	__size_of_Initial
	__size_of_Initial	equ	__end_of_Initial-_Initial
	
_Initial:	
	opt	stack 7
; Regs used in _Initial: [wreg+status,2+status,0+pclath+cstack]
	line	27
	
l1814:	
;lcd.c: 27: command(0x38);
	movlw	(038h)
	fcall	_command
	line	28
;lcd.c: 28: command(0x01);
	movlw	(01h)
	fcall	_command
	line	29
;lcd.c: 29: command(0x06);
	movlw	(06h)
	fcall	_command
	line	30
;lcd.c: 30: command(0x0C);
	movlw	(0Ch)
	fcall	_command
	line	31
	
l567:	
	return
	opt stack 0
GLOBAL	__end_of_Initial
	__end_of_Initial:
;; =============== function _Initial ends ============

	signat	_Initial,88
	global	_data
psect	text122,local,class=CODE,delta=2
global __ptext122
__ptext122:

;; *************** function _data *****************
;; Defined at:
;;		line 17 in file "C:\Users\Raghul\OneDrive\Desktop\PIC FILES\LCD\lcd.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text122
	file	"C:\Users\Raghul\OneDrive\Desktop\PIC FILES\LCD\lcd.c"
	line	17
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
	
_data:	
	opt	stack 7
; Regs used in _data: [wreg]
;data@x stored from wreg
	movwf	(data@x)
	line	18
	
l1804:	
;lcd.c: 18: PORTD=x;
	movf	(data@x),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	19
	
l1806:	
;lcd.c: 19: RC0=1;
	bsf	(56/8),(56)&7
	line	20
	
l1808:	
;lcd.c: 20: RC1=0;
	bcf	(57/8),(57)&7
	line	21
	
l1810:	
;lcd.c: 21: RC2=1;
	bsf	(58/8),(58)&7
	line	22
;lcd.c: 22: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_data+0)+0+2),f
movlw	14
movwf	((??_data+0)+0+1),f
	movlw	176
movwf	((??_data+0)+0),f
u2267:
	decfsz	((??_data+0)+0),f
	goto	u2267
	decfsz	((??_data+0)+0+1),f
	goto	u2267
	decfsz	((??_data+0)+0+2),f
	goto	u2267
opt asmopt_on

	line	23
	
l1812:	
;lcd.c: 23: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	24
	
l564:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
;; =============== function _data ends ============

	signat	_data,4216
	global	_command
psect	text123,local,class=CODE,delta=2
global __ptext123
__ptext123:

;; *************** function _command *****************
;; Defined at:
;;		line 8 in file "C:\Users\Raghul\OneDrive\Desktop\PIC FILES\LCD\lcd.c"
;; Parameters:    Size  Location     Type
;;  y               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  y               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Initial
;;		_main
;; This function uses a non-reentrant model
;;
psect	text123
	file	"C:\Users\Raghul\OneDrive\Desktop\PIC FILES\LCD\lcd.c"
	line	8
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
	
_command:	
	opt	stack 7
; Regs used in _command: [wreg]
;command@y stored from wreg
	movwf	(command@y)
	line	9
	
l1794:	
;lcd.c: 9: PORTD=y;
	movf	(command@y),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	10
	
l1796:	
;lcd.c: 10: RC0=0;
	bcf	(56/8),(56)&7
	line	11
	
l1798:	
;lcd.c: 11: RC1=0;
	bcf	(57/8),(57)&7
	line	12
	
l1800:	
;lcd.c: 12: RC2=1;
	bsf	(58/8),(58)&7
	line	13
;lcd.c: 13: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_command+0)+0+2),f
movlw	14
movwf	((??_command+0)+0+1),f
	movlw	176
movwf	((??_command+0)+0),f
u2277:
	decfsz	((??_command+0)+0),f
	goto	u2277
	decfsz	((??_command+0)+0+1),f
	goto	u2277
	decfsz	((??_command+0)+0+2),f
	goto	u2277
opt asmopt_on

	line	14
	
l1802:	
;lcd.c: 14: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	15
	
l561:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
;; =============== function _command ends ============

	signat	_command,4216
psect	text124,local,class=CODE,delta=2
global __ptext124
__ptext124:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
