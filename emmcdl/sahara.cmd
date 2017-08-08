@echo off
emmcdl     -l  | findstr   "COM" > port.txt      
for /F "tokens=5 delims=() " %%a in (port.txt) do (
   set SaharaComPort=%%a
   )
   del /F /Q port.txt
   