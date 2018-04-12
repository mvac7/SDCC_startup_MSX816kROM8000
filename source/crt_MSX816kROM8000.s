; crt0 for MSX ROM of 16KB, starting at 0x8000
; suggested options: --code-loc 0x8020 --data-loc 0xC000

.globl	_main

.area _HEADER (ABS)
; Reset vector
	.org 0x8000
  
	.db  0x41
	.db  0x42
	.dw  init
	.dw  0x0000
	.dw  0x0000
	.dw  0x0000
	.dw  0x0000
	.dw  0x0000
	.dw  0x0000

	
init:
  di
	ld   SP,(#0xFC4A) ;Stack at the top of memory.
	ei
  
	call _main   ;Initialise global variables
	RST  0 ;CHKRAM



.area   _DATA

.area   _GSINIT
     
.area   _GSFINAL







