#include<pic.h>
__CONFIG(0X3F72);
# define _XTAL_FREQ 4000000
# define RS RC0
# define RW RC1
# define EN RC2
void command(unsigned char y)
{
PORTD=y;
RS=0;
RW=0;
EN=1;
__delay_ms(1000);
EN=0;
}
void data(unsigned char x)
{
PORTD=x;
RS=1;
RW=0;
EN=1;
__delay_ms(1000);
EN=0;
}
void Initial()
{
command(0x38);
command(0x01);
command(0x06);
command(0x0C);
}
void main()
{
TRISC=0X00;
TRISD=0X00;
Initial();
char a[]={"PANIMALAR"};
char b[]={"ECE_DEPT"};


while(1)
{
command(0x80);
for(int i=0;i<=13;i++)
{
data(a[i]);
}
command(0xc0);
for(int j=0;;j<=13;;j++)
{
data(b[j]);
}
break;
}
}
}