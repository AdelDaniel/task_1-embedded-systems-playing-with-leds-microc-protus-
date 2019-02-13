#define clearReg(REG) REG &=~(255<<0)
#define setReg(REG) REG |=(255<<0)
#define toggleReg(REG) REG ^=(255<<0)

int i = 0 ;
int counter = 3 ;

void main()
{

        clearReg(TRISC);
        clearReg(TRISD);


        clearReg(PORTC);
        clearReg(PORTD);

        while(1)
        {

                // task 1 : on portc move 2 leds by 2 leds

                counter = 3;
                while (counter)
                {
                      for ( i = 0 ; i<=6 ;i+=2)
                      {
                          clearReg(PORTC);
                          PORTC |= (3<<i);
                          delay_ms(500);

                      }

                      for (i = 4 ;i>0 ;i-=2)
                      {
                          clearReg(PORTC);
                          PORTC |= (3<<i);
                          delay_ms(500);

                      }

                counter--;
                }

                clearReg(PORTC);

                // task 2 : on portD  move 3 leds  by 3
                counter = 3;
                while (counter)
                {
                      for ( i = 0 ; i<=3 ;i+=3)
                      {
                          clearReg(PORTD);
                          PORTD |= (7<<i);
                          delay_ms(500);

                      }

                      for (i = 5 ;i>=2 ;i-=3)
                      {
                          clearReg(PORTD);
                          PORTD |= (7<<i);
                          delay_ms(500);

                      }
                counter--;
                }
                clearReg(PORTD);

                // task 3 : on portc start from ends to ends

                counter = 3;
                while (counter)
                {

                      for( i = 0 ; i<=7 ; i++)
                      {
                           PORTC |=((128>>i)|(1<<i));
                           delay_ms(500);
                           clearReg(PORTC);
                      }

                counter--;
                }
                clearReg(PORTC);

                // task 4 : on portd start from one ends make all leds on make one by one off

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
