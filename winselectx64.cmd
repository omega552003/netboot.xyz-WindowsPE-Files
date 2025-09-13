@echo off

:select
cls
echo 1. Windows 11 x64 24H2 (Note: Requires secure boot bypass)
echo 2. Windows 10 22H2 x64
echo 3. Windows 8.1 x64
echo 4. Windows 8 x64
echo 5. Windows 7 SP1 x64
echo 6. Windows Vista SP2 x64
echo.
echo 0. Quit
echo r  Restart System
echo.

set /p "winver=Please select which version of Windows to setup: "

if %winver% == 1 ( set WIN=Windows_11
) else ( if %winver% == 2 ( set WIN=Windows_10-x64
) else ( if %winver% == 3 ( set WIN=Windows_81-x64
) else ( if %winver% == 4 ( set WIN=Windows_80-x64
) else ( if %winver% == 5 ( set WIN=Windows_7-x64
) else ( if %winver% == 6 ( set WIN=Windows_Vista-x64
) else ( if %winver% == 0 ( exit /b
) else ( if %winver% == r ( exit
) else (
    echo invalid choice
    goto select
))))))))

echo Starting Windows Setup...

Y:\NetBoot\%WIN%\setup.exe
