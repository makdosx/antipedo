::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDdVTlW+GG6pDaET+NT64f6OskgZW94sbIDL5beGKewX1UTmYIUomHNZl6s=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDdVTlW+GG6pDaET+NT64f6OskgZW94+dpvSyrGKL7Jd713hFQ==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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