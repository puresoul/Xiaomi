@ECHO off
Title REBOOT To EDL
mode con: cols=64 lines=18

ECHO.
ECHO.
ECHO.
ECHO   :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO   ::                                                       ::
ECHO   ::   Please Reboot Your device to Fastboot by Pressing   ::
ECHO   ::                                                       ::
ECHO   ::   Volum Down + Power Key and connect it to the PC.    ::
ECHO   ::                                                       ::
ECHO   ::           Then Press Enter to Reboot TO EDL           ::
ECHO   ::                                                       ::
ECHO   :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO.
PAUSE
"%~dp0fastboot.exe" reboot-edl
CLS
ECHO.
ECHO.
ECHO.
ECHO   :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO   ::                                                       ::
ECHO   ::     Your Device is Rebooted to EDL successfully!      ::
ECHO   ::                                                       ::
ECHO   :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO.
ECHO.
ECHO.
PAUSE

