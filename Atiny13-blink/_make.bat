set Path=%Path%;C:\AVR-TOOLS\avr8-gnu-toolchain-win32_x86\bin
set Path=%Path%;C:\AVR-TOOLS\avr8-gnu-toolchain-win32_x86\avr\bin 

rem avr-gcc -D__AVR_ATtiny13A__ blink.c -o blink.elf
avr-gcc -D__AVR_ATtiny13A__ blink.c -Os -o blink.elf

avr-objcopy blink.elf -O ihex blink.hex
avr-objdump blink.elf -d > blink.asm
avr-size.exe --format=avr --mcu=attiny13a blink.elf




                                  