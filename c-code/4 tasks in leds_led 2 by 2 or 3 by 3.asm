
_main:

;4 tasks in leds_led 2 by 2 or 3 by 3.c,8 :: 		void main()
;4 tasks in leds_led 2 by 2 or 3 by 3.c,11 :: 		clearReg(TRISC);
	MOVLW       0
	ANDWF       TRISC+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,12 :: 		clearReg(TRISD);
	MOVLW       0
	ANDWF       TRISD+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,15 :: 		clearReg(PORTC);
	MOVLW       0
	ANDWF       PORTC+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,16 :: 		clearReg(PORTD);
	MOVLW       0
	ANDWF       PORTD+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,18 :: 		while(1)
L_main0:
;4 tasks in leds_led 2 by 2 or 3 by 3.c,23 :: 		counter = 3;
	MOVLW       3
	MOVWF       _counter+0 
	MOVLW       0
	MOVWF       _counter+1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,24 :: 		while (counter)
L_main2:
	MOVF        _counter+0, 0 
	IORWF       _counter+1, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_main3
;4 tasks in leds_led 2 by 2 or 3 by 3.c,26 :: 		for ( i = 0 ; i<=6 ;i+=2)
	CLRF        _i+0 
	CLRF        _i+1 
L_main4:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main39
	MOVF        _i+0, 0 
	SUBLW       6
L__main39:
	BTFSS       STATUS+0, 0 
	GOTO        L_main5
;4 tasks in leds_led 2 by 2 or 3 by 3.c,28 :: 		clearReg(PORTC);
	MOVLW       0
	ANDWF       PORTC+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,29 :: 		PORTC |= (3<<i);
	MOVF        _i+0, 0 
	MOVWF       R1 
	MOVLW       3
	MOVWF       R0 
	MOVF        R1, 0 
L__main40:
	BZ          L__main41
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main40
L__main41:
	MOVF        R0, 0 
	IORWF       PORTC+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,30 :: 		delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
	NOP
	NOP
;4 tasks in leds_led 2 by 2 or 3 by 3.c,26 :: 		for ( i = 0 ; i<=6 ;i+=2)
	MOVLW       2
	ADDWF       _i+0, 1 
	MOVLW       0
	ADDWFC      _i+1, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,32 :: 		}
	GOTO        L_main4
L_main5:
;4 tasks in leds_led 2 by 2 or 3 by 3.c,34 :: 		for (i = 4 ;i>0 ;i-=2)
	MOVLW       4
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L_main8:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main42
	MOVF        _i+0, 0 
	SUBLW       0
L__main42:
	BTFSC       STATUS+0, 0 
	GOTO        L_main9
;4 tasks in leds_led 2 by 2 or 3 by 3.c,36 :: 		clearReg(PORTC);
	MOVLW       0
	ANDWF       PORTC+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,37 :: 		PORTC |= (3<<i);
	MOVF        _i+0, 0 
	MOVWF       R1 
	MOVLW       3
	MOVWF       R0 
	MOVF        R1, 0 
L__main43:
	BZ          L__main44
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main43
L__main44:
	MOVF        R0, 0 
	IORWF       PORTC+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,38 :: 		delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main11:
	DECFSZ      R13, 1, 1
	BRA         L_main11
	DECFSZ      R12, 1, 1
	BRA         L_main11
	DECFSZ      R11, 1, 1
	BRA         L_main11
	NOP
	NOP
;4 tasks in leds_led 2 by 2 or 3 by 3.c,34 :: 		for (i = 4 ;i>0 ;i-=2)
	MOVLW       2
	SUBWF       _i+0, 1 
	MOVLW       0
	SUBWFB      _i+1, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,40 :: 		}
	GOTO        L_main8
L_main9:
;4 tasks in leds_led 2 by 2 or 3 by 3.c,42 :: 		counter--;
	MOVLW       1
	SUBWF       _counter+0, 1 
	MOVLW       0
	SUBWFB      _counter+1, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,43 :: 		}
	GOTO        L_main2
L_main3:
;4 tasks in leds_led 2 by 2 or 3 by 3.c,45 :: 		clearReg(PORTC);
	MOVLW       0
	ANDWF       PORTC+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,48 :: 		counter = 3;
	MOVLW       3
	MOVWF       _counter+0 
	MOVLW       0
	MOVWF       _counter+1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,49 :: 		while (counter)
L_main12:
	MOVF        _counter+0, 0 
	IORWF       _counter+1, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_main13
;4 tasks in leds_led 2 by 2 or 3 by 3.c,51 :: 		for ( i = 0 ; i<=3 ;i+=3)
	CLRF        _i+0 
	CLRF        _i+1 
L_main14:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main45
	MOVF        _i+0, 0 
	SUBLW       3
L__main45:
	BTFSS       STATUS+0, 0 
	GOTO        L_main15
;4 tasks in leds_led 2 by 2 or 3 by 3.c,53 :: 		clearReg(PORTD);
	MOVLW       0
	ANDWF       PORTD+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,54 :: 		PORTD |= (7<<i);
	MOVF        _i+0, 0 
	MOVWF       R1 
	MOVLW       7
	MOVWF       R0 
	MOVF        R1, 0 
L__main46:
	BZ          L__main47
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main46
L__main47:
	MOVF        R0, 0 
	IORWF       PORTD+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,55 :: 		delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main17:
	DECFSZ      R13, 1, 1
	BRA         L_main17
	DECFSZ      R12, 1, 1
	BRA         L_main17
	DECFSZ      R11, 1, 1
	BRA         L_main17
	NOP
	NOP
;4 tasks in leds_led 2 by 2 or 3 by 3.c,51 :: 		for ( i = 0 ; i<=3 ;i+=3)
	MOVLW       3
	ADDWF       _i+0, 1 
	MOVLW       0
	ADDWFC      _i+1, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,57 :: 		}
	GOTO        L_main14
L_main15:
;4 tasks in leds_led 2 by 2 or 3 by 3.c,59 :: 		for (i = 5 ;i>=2 ;i-=3)
	MOVLW       5
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L_main18:
	MOVLW       128
	XORWF       _i+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main48
	MOVLW       2
	SUBWF       _i+0, 0 
L__main48:
	BTFSS       STATUS+0, 0 
	GOTO        L_main19
;4 tasks in leds_led 2 by 2 or 3 by 3.c,61 :: 		clearReg(PORTD);
	MOVLW       0
	ANDWF       PORTD+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,62 :: 		PORTD |= (7<<i);
	MOVF        _i+0, 0 
	MOVWF       R1 
	MOVLW       7
	MOVWF       R0 
	MOVF        R1, 0 
L__main49:
	BZ          L__main50
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main49
L__main50:
	MOVF        R0, 0 
	IORWF       PORTD+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,63 :: 		delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main21:
	DECFSZ      R13, 1, 1
	BRA         L_main21
	DECFSZ      R12, 1, 1
	BRA         L_main21
	DECFSZ      R11, 1, 1
	BRA         L_main21
	NOP
	NOP
;4 tasks in leds_led 2 by 2 or 3 by 3.c,59 :: 		for (i = 5 ;i>=2 ;i-=3)
	MOVLW       3
	SUBWF       _i+0, 1 
	MOVLW       0
	SUBWFB      _i+1, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,65 :: 		}
	GOTO        L_main18
L_main19:
;4 tasks in leds_led 2 by 2 or 3 by 3.c,66 :: 		counter--;
	MOVLW       1
	SUBWF       _counter+0, 1 
	MOVLW       0
	SUBWFB      _counter+1, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,67 :: 		}
	GOTO        L_main12
L_main13:
;4 tasks in leds_led 2 by 2 or 3 by 3.c,68 :: 		clearReg(PORTD);
	MOVLW       0
	ANDWF       PORTD+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,72 :: 		counter = 3;
	MOVLW       3
	MOVWF       _counter+0 
	MOVLW       0
	MOVWF       _counter+1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,73 :: 		while (counter)
L_main22:
	MOVF        _counter+0, 0 
	IORWF       _counter+1, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_main23
;4 tasks in leds_led 2 by 2 or 3 by 3.c,76 :: 		for( i = 0 ; i<=7 ; i++)
	CLRF        _i+0 
	CLRF        _i+1 
L_main24:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main51
	MOVF        _i+0, 0 
	SUBLW       7
L__main51:
	BTFSS       STATUS+0, 0 
	GOTO        L_main25
;4 tasks in leds_led 2 by 2 or 3 by 3.c,78 :: 		PORTC |=((128>>i)|(1<<i));
	MOVF        _i+0, 0 
	MOVWF       R0 
	MOVLW       128
	MOVWF       R2 
	MOVF        R0, 0 
L__main52:
	BZ          L__main53
	RRCF        R2, 1 
	BCF         R2, 7 
	ADDLW       255
	GOTO        L__main52
L__main53:
	MOVF        _i+0, 0 
	MOVWF       R1 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
L__main54:
	BZ          L__main55
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main54
L__main55:
	MOVF        R2, 0 
	IORWF       R0, 1 
	MOVF        R0, 0 
	IORWF       PORTC+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,79 :: 		delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main27:
	DECFSZ      R13, 1, 1
	BRA         L_main27
	DECFSZ      R12, 1, 1
	BRA         L_main27
	DECFSZ      R11, 1, 1
	BRA         L_main27
	NOP
	NOP
;4 tasks in leds_led 2 by 2 or 3 by 3.c,80 :: 		clearReg(PORTC);
	MOVLW       0
	ANDWF       PORTC+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,76 :: 		for( i = 0 ; i<=7 ; i++)
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,81 :: 		}
	GOTO        L_main24
L_main25:
;4 tasks in leds_led 2 by 2 or 3 by 3.c,83 :: 		counter--;
	MOVLW       1
	SUBWF       _counter+0, 1 
	MOVLW       0
	SUBWFB      _counter+1, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,84 :: 		}
	GOTO        L_main22
L_main23:
;4 tasks in leds_led 2 by 2 or 3 by 3.c,85 :: 		clearReg(PORTC);
	MOVLW       0
	ANDWF       PORTC+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,89 :: 		counter = 3;
	MOVLW       3
	MOVWF       _counter+0 
	MOVLW       0
	MOVWF       _counter+1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,90 :: 		while (counter)
L_main28:
	MOVF        _counter+0, 0 
	IORWF       _counter+1, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_main29
;4 tasks in leds_led 2 by 2 or 3 by 3.c,92 :: 		for( i = 0 ; i<=7 ; i++)
	CLRF        _i+0 
	CLRF        _i+1 
L_main30:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main56
	MOVF        _i+0, 0 
	SUBLW       7
L__main56:
	BTFSS       STATUS+0, 0 
	GOTO        L_main31
;4 tasks in leds_led 2 by 2 or 3 by 3.c,94 :: 		PORTD |=(1<<i);
	MOVF        _i+0, 0 
	MOVWF       R1 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
L__main57:
	BZ          L__main58
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main57
L__main58:
	MOVF        R0, 0 
	IORWF       PORTD+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,95 :: 		delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main33:
	DECFSZ      R13, 1, 1
	BRA         L_main33
	DECFSZ      R12, 1, 1
	BRA         L_main33
	DECFSZ      R11, 1, 1
	BRA         L_main33
	NOP
	NOP
;4 tasks in leds_led 2 by 2 or 3 by 3.c,92 :: 		for( i = 0 ; i<=7 ; i++)
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,97 :: 		}
	GOTO        L_main30
L_main31:
;4 tasks in leds_led 2 by 2 or 3 by 3.c,98 :: 		for( i = 0 ; i<=7 ; i++)
	CLRF        _i+0 
	CLRF        _i+1 
L_main34:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _i+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main59
	MOVF        _i+0, 0 
	SUBLW       7
L__main59:
	BTFSS       STATUS+0, 0 
	GOTO        L_main35
;4 tasks in leds_led 2 by 2 or 3 by 3.c,100 :: 		PORTD &=~(128>>i);
	MOVF        _i+0, 0 
	MOVWF       R1 
	MOVLW       128
	MOVWF       R0 
	MOVF        R1, 0 
L__main60:
	BZ          L__main61
	RRCF        R0, 1 
	BCF         R0, 7 
	ADDLW       255
	GOTO        L__main60
L__main61:
	COMF        R0, 1 
	MOVF        R0, 0 
	ANDWF       PORTD+0, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,101 :: 		delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main37:
	DECFSZ      R13, 1, 1
	BRA         L_main37
	DECFSZ      R12, 1, 1
	BRA         L_main37
	DECFSZ      R11, 1, 1
	BRA         L_main37
	NOP
	NOP
;4 tasks in leds_led 2 by 2 or 3 by 3.c,98 :: 		for( i = 0 ; i<=7 ; i++)
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,102 :: 		}
	GOTO        L_main34
L_main35:
;4 tasks in leds_led 2 by 2 or 3 by 3.c,104 :: 		counter--;
	MOVLW       1
	SUBWF       _counter+0, 1 
	MOVLW       0
	SUBWFB      _counter+1, 1 
;4 tasks in leds_led 2 by 2 or 3 by 3.c,105 :: 		}
	GOTO        L_main28
L_main29:
;4 tasks in leds_led 2 by 2 or 3 by 3.c,108 :: 		}
	GOTO        L_main0
;4 tasks in leds_led 2 by 2 or 3 by 3.c,110 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
