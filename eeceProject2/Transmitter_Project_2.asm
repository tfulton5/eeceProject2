;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1034 (Dec 12 2012) (MSVC)
; This file was generated Thu Mar 20 16:14:03 2014
;--------------------------------------------------------
$name Transmitter_Project_2
$optc51 --model-small
	R_DSEG    segment data
	R_CSEG    segment code
	R_BSEG    segment bit
	R_XSEG    segment xdata
	R_PSEG    segment xdata
	R_ISEG    segment idata
	R_OSEG    segment data overlay
	BIT_BANK  segment data overlay
	R_HOME    segment code
	R_GSINIT  segment code
	R_IXSEG   segment xdata
	R_CONST   segment code
	R_XINIT   segment code
	R_DINIT   segment code

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	public _main
	public _prlPark
	public _rotate180
	public _moveFarther
	public _moveCloser
	public _tx_byte
	public _wait_bit_time
	public __c51_external_startup
;--------------------------------------------------------
; Special Function Registers
;--------------------------------------------------------
_ACC            DATA 0xe0
_B              DATA 0xf0
_PSW            DATA 0xd0
_SP             DATA 0x81
_SPX            DATA 0xef
_DPL            DATA 0x82
_DPH            DATA 0x83
_DPLB           DATA 0xd4
_DPHB           DATA 0xd5
_PAGE           DATA 0xf6
_AX             DATA 0xe1
_BX             DATA 0xf7
_DSPR           DATA 0xe2
_FIRD           DATA 0xe3
_MACL           DATA 0xe4
_MACH           DATA 0xe5
_PCON           DATA 0x87
_AUXR           DATA 0x8e
_AUXR1          DATA 0xa2
_DPCF           DATA 0xa1
_CKRL           DATA 0x97
_CKCKON0        DATA 0x8f
_CKCKON1        DATA 0xaf
_CKSEL          DATA 0x85
_CLKREG         DATA 0xae
_OSCCON         DATA 0x85
_IE             DATA 0xa8
_IEN0           DATA 0xa8
_IEN1           DATA 0xb1
_IPH0           DATA 0xb7
_IP             DATA 0xb8
_IPL0           DATA 0xb8
_IPH1           DATA 0xb3
_IPL1           DATA 0xb2
_P0             DATA 0x80
_P1             DATA 0x90
_P2             DATA 0xa0
_P3             DATA 0xb0
_P4             DATA 0xc0
_P0M0           DATA 0xe6
_P0M1           DATA 0xe7
_P1M0           DATA 0xd6
_P1M1           DATA 0xd7
_P2M0           DATA 0xce
_P2M1           DATA 0xcf
_P3M0           DATA 0xc6
_P3M1           DATA 0xc7
_P4M0           DATA 0xbe
_P4M1           DATA 0xbf
_SCON           DATA 0x98
_SBUF           DATA 0x99
_SADEN          DATA 0xb9
_SADDR          DATA 0xa9
_BDRCON         DATA 0x9b
_BRL            DATA 0x9a
_TCON           DATA 0x88
_TMOD           DATA 0x89
_TCONB          DATA 0x91
_TL0            DATA 0x8a
_TH0            DATA 0x8c
_TL1            DATA 0x8b
_TH1            DATA 0x8d
_RL0            DATA 0xf2
_RH0            DATA 0xf4
_RL1            DATA 0xf3
_RH1            DATA 0xf5
_WDTRST         DATA 0xa6
_WDTPRG         DATA 0xa7
_T2CON          DATA 0xc8
_T2MOD          DATA 0xc9
_RCAP2H         DATA 0xcb
_RCAP2L         DATA 0xca
_TH2            DATA 0xcd
_TL2            DATA 0xcc
_SPCON          DATA 0xc3
_SPSTA          DATA 0xc4
_SPDAT          DATA 0xc5
_SSCON          DATA 0x93
_SSCS           DATA 0x94
_SSDAT          DATA 0x95
_SSADR          DATA 0x96
_KBLS           DATA 0x9c
_KBE            DATA 0x9d
_KBF            DATA 0x9e
_KBMOD          DATA 0x9f
_BMSEL          DATA 0x92
_FCON           DATA 0xd2
_EECON          DATA 0xd2
_ACSRA          DATA 0xa3
_ACSRB          DATA 0xab
_AREF           DATA 0xbd
_DADC           DATA 0xa4
_DADI           DATA 0xa5
_DADL           DATA 0xac
_DADH           DATA 0xad
_CCON           DATA 0xd8
_CMOD           DATA 0xd9
_CL             DATA 0xe9
_CH             DATA 0xf9
_CCAPM0         DATA 0xda
_CCAPM1         DATA 0xdb
_CCAPM2         DATA 0xdc
_CCAPM3         DATA 0xdd
_CCAPM4         DATA 0xde
_CCAP0H         DATA 0xfa
_CCAP1H         DATA 0xfb
_CCAP2H         DATA 0xfc
_CCAP3H         DATA 0xfd
_CCAP4H         DATA 0xfe
_CCAP0L         DATA 0xea
_CCAP1L         DATA 0xeb
_CCAP2L         DATA 0xec
_CCAP3L         DATA 0xed
_CCAP4L         DATA 0xee
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
_ACC_0          BIT 0xe0
_ACC_1          BIT 0xe1
_ACC_2          BIT 0xe2
_ACC_3          BIT 0xe3
_ACC_4          BIT 0xe4
_ACC_5          BIT 0xe5
_ACC_6          BIT 0xe6
_ACC_7          BIT 0xe7
_B_0            BIT 0xf0
_B_1            BIT 0xf1
_B_2            BIT 0xf2
_B_3            BIT 0xf3
_B_4            BIT 0xf4
_B_5            BIT 0xf5
_B_6            BIT 0xf6
_B_7            BIT 0xf7
_P              BIT 0xd0
_F1             BIT 0xd1
_OV             BIT 0xd2
_RS0            BIT 0xd3
_RS1            BIT 0xd4
_F0             BIT 0xd5
_AC             BIT 0xd6
_CY             BIT 0xd7
_EX0            BIT 0xa8
_ET0            BIT 0xa9
_EX1            BIT 0xaa
_ET1            BIT 0xab
_ES             BIT 0xac
_ET2            BIT 0xad
_EC             BIT 0xae
_EA             BIT 0xaf
_PX0            BIT 0xb8
_PT0            BIT 0xb9
_PX1            BIT 0xba
_PT1            BIT 0xbb
_PS             BIT 0xbc
_PT2            BIT 0xbd
_IP0D           BIT 0xbf
_PPCL           BIT 0xbe
_PT2L           BIT 0xbd
_PLS            BIT 0xbc
_PT1L           BIT 0xbb
_PX1L           BIT 0xba
_PT0L           BIT 0xb9
_PX0L           BIT 0xb8
_P0_0           BIT 0x80
_P0_1           BIT 0x81
_P0_2           BIT 0x82
_P0_3           BIT 0x83
_P0_4           BIT 0x84
_P0_5           BIT 0x85
_P0_6           BIT 0x86
_P0_7           BIT 0x87
_P1_0           BIT 0x90
_P1_1           BIT 0x91
_P1_2           BIT 0x92
_P1_3           BIT 0x93
_P1_4           BIT 0x94
_P1_5           BIT 0x95
_P1_6           BIT 0x96
_P1_7           BIT 0x97
_P2_0           BIT 0xa0
_P2_1           BIT 0xa1
_P2_2           BIT 0xa2
_P2_3           BIT 0xa3
_P2_4           BIT 0xa4
_P2_5           BIT 0xa5
_P2_6           BIT 0xa6
_P2_7           BIT 0xa7
_P3_0           BIT 0xb0
_P3_1           BIT 0xb1
_P3_2           BIT 0xb2
_P3_3           BIT 0xb3
_P3_4           BIT 0xb4
_P3_5           BIT 0xb5
_P3_6           BIT 0xb6
_P3_7           BIT 0xb7
_RXD            BIT 0xb0
_TXD            BIT 0xb1
_INT0           BIT 0xb2
_INT1           BIT 0xb3
_T0             BIT 0xb4
_T1             BIT 0xb5
_WR             BIT 0xb6
_RD             BIT 0xb7
_P4_0           BIT 0xc0
_P4_1           BIT 0xc1
_P4_2           BIT 0xc2
_P4_3           BIT 0xc3
_P4_4           BIT 0xc4
_P4_5           BIT 0xc5
_P4_6           BIT 0xc6
_P4_7           BIT 0xc7
_RI             BIT 0x98
_TI             BIT 0x99
_RB8            BIT 0x9a
_TB8            BIT 0x9b
_REN            BIT 0x9c
_SM2            BIT 0x9d
_SM1            BIT 0x9e
_SM0            BIT 0x9f
_IT0            BIT 0x88
_IE0            BIT 0x89
_IT1            BIT 0x8a
_IE1            BIT 0x8b
_TR0            BIT 0x8c
_TF0            BIT 0x8d
_TR1            BIT 0x8e
_TF1            BIT 0x8f
_CP_RL2         BIT 0xc8
_C_T2           BIT 0xc9
_TR2            BIT 0xca
_EXEN2          BIT 0xcb
_TCLK           BIT 0xcc
_RCLK           BIT 0xcd
_EXF2           BIT 0xce
_TF2            BIT 0xcf
_CF             BIT 0xdf
_CR             BIT 0xde
_CCF4           BIT 0xdc
_CCF3           BIT 0xdb
_CCF2           BIT 0xda
_CCF1           BIT 0xd9
_CCF0           BIT 0xd8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	rbank0 segment data overlay
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	rseg R_DSEG
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	rseg R_OSEG
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	rseg R_ISEG
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	DSEG
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	rseg R_BSEG
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	rseg R_PSEG
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	rseg R_XSEG
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	XSEG
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	rseg R_IXSEG
	rseg R_HOME
	rseg R_GSINIT
	rseg R_CSEG
;--------------------------------------------------------
; Reset entry point and interrupt vectors
;--------------------------------------------------------
	CSEG at 0x0000
	ljmp	_crt0
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	rseg R_HOME
	rseg R_GSINIT
	rseg R_GSINIT
;--------------------------------------------------------
; data variables initialization
;--------------------------------------------------------
	rseg R_DINIT
	; The linker places a 'ret' at the end of segment R_DINIT.
;--------------------------------------------------------
; code
;--------------------------------------------------------
	rseg R_CSEG
;------------------------------------------------------------
;Allocation info for local variables in function '_c51_external_startup'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:4: unsigned char _c51_external_startup(void)
;	-----------------------------------------
;	 function _c51_external_startup
;	-----------------------------------------
__c51_external_startup:
	using	0
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:7: P0M0=0;	P0M1=0;
	mov	_P0M0,#0x00
	mov	_P0M1,#0x00
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:8: P1M0=0;	P1M1=0;
	mov	_P1M0,#0x00
	mov	_P1M1,#0x00
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:9: P2M0=0;	P2M1=0;
	mov	_P2M0,#0x00
	mov	_P2M1,#0x00
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:10: P3M0=0;	P3M1=0;
	mov	_P3M0,#0x00
	mov	_P3M1,#0x00
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:11: AUXR=0B_0001_0001; // 1152 bytes of internal XDATA, P4.4 is a general purpose I/O
	mov	_AUXR,#0x11
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:12: P4M0=0;	P4M1=0;
	mov	_P4M0,#0x00
	mov	_P4M1,#0x00
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:14: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'wait_bit_time'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:17: void wait_bit_time(void)
;	-----------------------------------------
;	 function wait_bit_time
;	-----------------------------------------
_wait_bit_time:
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:29: _endasm;
	
  ;For a 22.1184MHz crystal one machine cycle
  ;takes 12/22.1184MHz=0.5425347us
	     mov R2, #10
	 L3:
	mov R1, #248
	 L2:
	mov R0, #184
	 L1:
	djnz R0, L1 ; 2 machine cycles-> 2*0.5425347us*184=200us
	     djnz R1, L2 ; 200us*250=0.05s
	     djnz R2, L3 ; 0.05s*10=500ms
	     ret
	    
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tx_byte'
;------------------------------------------------------------
;val                       Allocated to registers 
;j                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:32: void tx_byte(unsigned char val)
;	-----------------------------------------
;	 function tx_byte
;	-----------------------------------------
_tx_byte:
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:37: wait_bit_time();
	lcall	_wait_bit_time
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:38: for (j=0; j<8; j++)
	mov	r2,#0x08
L004003?:
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:41: wait_bit_time();
	push	ar2
	lcall	_wait_bit_time
	pop	ar2
	djnz	r2,L004003?
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:38: for (j=0; j<8; j++)
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:45: wait_bit_time();
	lcall	_wait_bit_time
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:46: wait_bit_time();
	ljmp	_wait_bit_time
;------------------------------------------------------------
;Allocation info for local variables in function 'moveCloser'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:49: void moveCloser(void) 
;	-----------------------------------------
;	 function moveCloser
;	-----------------------------------------
_moveCloser:
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:51: tx_byte(0xfd); // move closer is 11111101
	mov	dpl,#0xFD
	ljmp	_tx_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'moveFarther'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:54: void moveFarther(void)
;	-----------------------------------------
;	 function moveFarther
;	-----------------------------------------
_moveFarther:
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:56: tx_byte(0xf5); // move farther is 11110101
	mov	dpl,#0xF5
	ljmp	_tx_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'rotate180'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:59: void rotate180(void)
;	-----------------------------------------
;	 function rotate180
;	-----------------------------------------
_rotate180:
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:61: tx_byte(0xd5); // rotate is 11010101
	mov	dpl,#0xD5
	ljmp	_tx_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'prlPark'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:64: void prlPark(void)
;	-----------------------------------------
;	 function prlPark
;	-----------------------------------------
_prlPark:
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:66: tx_byte(0x55); // parallel park is 01010101
	mov	dpl,#0x55
	ljmp	_tx_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:69: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:71: while(1) {
L009010?:
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:73: if(P2_2 != 0) moveCloser();
	jnb	_P2_2,L009002?
	lcall	_moveCloser
L009002?:
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:75: if(P2_3 != 0) moveFarther();
	jnb	_P2_3,L009004?
	lcall	_moveFarther
L009004?:
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:77: if(P4_3 != 0) rotate180();
	jnb	_P4_3,L009006?
	lcall	_rotate180
L009006?:
;	C:\Users\Travis\Documents\GitHub\eeceProject2\eeceProject2\Transmitter_Project_2.c:79: if(P3_7 != 1) prlPark();
	jb	_P3_7,L009010?
	lcall	_prlPark
	sjmp	L009010?
	rseg R_CSEG

	rseg R_XINIT

	rseg R_CONST

	CSEG

end
