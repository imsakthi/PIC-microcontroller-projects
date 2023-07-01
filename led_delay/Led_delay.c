#include<pic.h>
__CONFIG(0x3F72);
#define _XTAL_FREQ 4000000
void main()
{
TRISD=0x00;
PORTD=0xFF;
__delay_ms(1000);
PORTD=0x00;
__delay_ms(1000);
}