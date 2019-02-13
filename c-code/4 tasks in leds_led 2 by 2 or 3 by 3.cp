#line 1 "I:/ES/7  FIRST/4 task in leds 2 by 2 and 3 by 3/c-code/4 tasks in leds_led 2 by 2 or 3 by 3.c"




int i = 0 ;
int counter = 3 ;

void main()
{

  TRISC &=~(255<<0) ;
  TRISD &=~(255<<0) ;


  PORTC &=~(255<<0) ;
  PORTD &=~(255<<0) ;

 while(1)
 {



 counter = 3;
 while (counter)
 {
 for ( i = 0 ; i<=6 ;i+=2)
 {
  PORTC &=~(255<<0) ;
 PORTC |= (3<<i);
 delay_ms(500);

 }

 for (i = 4 ;i>0 ;i-=2)
 {
  PORTC &=~(255<<0) ;
 PORTC |= (3<<i);
 delay_ms(500);

 }

 counter--;
 }

  PORTC &=~(255<<0) ;


 counter = 3;
 while (counter)
 {
 for ( i = 0 ; i<=3 ;i+=3)
 {
  PORTD &=~(255<<0) ;
 PORTD |= (7<<i);
 delay_ms(500);

 }

 for (i = 5 ;i>=2 ;i-=3)
 {
  PORTD &=~(255<<0) ;
 PORTD |= (7<<i);
 delay_ms(500);

 }
 counter--;
 }
  PORTD &=~(255<<0) ;



 counter = 3;
 while (counter)
 {

 for( i = 0 ; i<=7 ; i++)
 {
 PORTC |=((128>>i)|(1<<i));
 delay_ms(500);
  PORTC &=~(255<<0) ;
 }

 counter--;
 }
  PORTC &=~(255<<0) ;



 counter = 3;
 while (counter)
 {
 for( i = 0 ; i<=7 ; i++)
 {
 PORTD |=(1<<i);
 delay_ms(500);

 }
 for( i = 0 ; i<=7 ; i++)
 {
 PORTD &=~(128>>i);
 delay_ms(500);
 }

 counter--;
 }


 }

}
