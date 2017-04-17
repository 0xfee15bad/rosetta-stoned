; Rosetta Stoned
;
; Made by:
;
; 	- 0xfee15bad (Alexandre Paillier)
;

.386
.model flat, stdcall
option casemap:none

      include \masm32\include\kernel32.inc
      include \masm32\include\user32.inc
      include \masm32\include\windows.inc
      include .\rosetta-stoned.inc

	  includelib \masm32\lib\user32.lib
      includelib \masm32\lib\kernel32.lib

.code

data:
	popUpMessage            BYTE "EEaahh!",0

start:
	push MB_OK
	push offset popUpMessage
	push offset popUpMessage
	push NULL
	call MessageBoxA
	push 0
	call ExitProcess

end start