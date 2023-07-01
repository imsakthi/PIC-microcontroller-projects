#include<pic.h>
__CONFIG(0x3F72);
void main()
{
TRISD=0x00;
PORTD=0x0F;
}