set Path=%Path%;C:\AVR-TOOLS\avr8-gnu-toolchain-win32_x86\bin
set Path=%Path%;C:\AVR-TOOLS\avr8-gnu-toolchain-win32_x86\avr\bin 

rem ������� 
rem avrdude.exe -p t13 -c usbasp -P usb -e

rem ��������
avrdude -c usbasp -p t13 -U flash:w:"blink.hex":a

