@echo off
title persist backup for redmi 3x
::https://www.facebook.com/kyawkyarnyu
call sahara
echo.
IF (%SaharaComPort%) == () ( goto NO ) else ( goto START )

:START
title QDLoader 9008 meet at %SaharaComPort%
echo Device found at  %SaharaComPort%
emmcdl -p %SaharaComPort% -f prog_emmc_firehose_8937_ddr.mbn -d keymaster -o keymaster.mbs
pause
exit

:NO
echo No Device
pause
exit


