@echo off

:: antipedo Dns
set DNS1=208.67.222.123
set DNS2=208.67.220.123

for /f "tokens=1,2,3*" %%i in ('netsh int show interface') do (
    if %%i equ Enabled (
        echo Changing "%%l" : %DNS1% + %DNS2%
        netsh int ipv4 set dns name="%%l" static %DNS1% primary validate=no
        netsh int ipv4 add dns name="%%l" %DNS2% index=2 validate=no
    )
)

ipconfig /flushdns

:EOF