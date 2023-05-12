@echo off
set Path=%Path%;C:\AVR-TOOLS\avr8-gnu-toolchain-win32_x86\bin
set Path=%Path%;C:\AVR-TOOLS\avr8-gnu-toolchain-win32_x86\avr\bin 

rem PROTEUS DEBUG
rem указывть полные пути
rem avr-gcc -gdwarf-2 -mmcu=attiny13a D:\ARDUINO\src\ATiny13-shim\shim.c -o D:\ARDUINO\src\ATiny13-shim\shim.elf

rem avr-gcc -gstabs -mmcu=attiny13a shim.c -o shim.elf

rem Оптимизация
avr-gcc -mmcu=attiny13a D:\ARDUINO\src\ATiny13-shim\shim.c -Os -Wall -o D:\ARDUINO\src\ATiny13-shim\shim.elf

avr-objdump.exe -h -S shim.elf > shim.lss
avr-objcopy shim.elf -O ihex shim.hex
avr-objdump shim.elf -d > shim.asm
avr-size.exe --format=avr --mcu=attiny13a shim.elf




                                  