#include<pic.h>
__CONFIG(0X3F72);
#define _XTAL_FREQ 4000000


void main()
{

TRISC=0x80;
PORTC=0x00;
TRISB=0X00;
TXSTA=0x24;
RCSTA=0x90;
BRGH=1;
SPBRG=25;

while (1)
{
if (RCREG=='1')
{
PORTB=0X0F;

}
else if(RCREG=='2')
{
PORTB=0X55;
}
else if(RCREG=='3')
{
PORTB=0XAA;

}
else if(RCREG=='4')
{

PORTB=0XFF;
__delay_ms(1000);
PORTB=0X00;
__delay_ms(1000);
}
else if(RCREG=='5')
{

PORTB=0X01;
__delay_ms(1000);
PORTB=0X00;
__delay_ms(1000);
PORTB=0X02;
__delay_ms(1000);
PORTB=0X00;
__delay_ms(1000);
PORTB=0X04;
__delay_ms(1000);
PORTB=0X0;
__delay_ms(1000);
PORTB=0X08;
__delay_ms(1000);
PORTB=0X00;
__delay_ms(1000);
PORTB=0X10;
__delay_ms(1000);
PORTB=0X00;
__delay_ms(1000);
PORTB=0X20;
__delay_ms(1000);
PORTB=0X00;
__delay_ms(1000);
PORTB=0X40;
__delay_ms(1000);
PORTB=0X00;
__delay_ms(1000);
PORTB=0X80;
__delay_ms(1000);
PORTB=0X00;
__delay_ms(1000);
}


}
}

