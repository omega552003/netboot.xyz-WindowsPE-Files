@echo off

:select
cls
echo 1. Windows 10 22H2 x86
echo 2. Windows 8.1 x86
echo 3. Windows 8 x86
echo 4. Windows 7 SP1 x86
echo 5. Windows Vista SP2 x86
echo 6. Windows XP Home Edition SP2 x86
echo 7. Windows XP Professional SP2 x86
echo.
echo 0. Quit
echo r  Restart System
echo.

set /p "winver=Please select which version of Windows to setup: "

if %winver% == 1 ( set WIN=Windows_10-x86
) else ( if %winver% == 2 ( set WIN=Windows_81-x86
) else ( if %winver% == 3 ( set WIN=Windows_80-x86
) else ( if %winver% == 4 ( set WIN=Windows_7-x86
) else ( if %winver% == 5 ( set WIN=Windows_Vista-x86
) else ( if %winver% == 6 (
    set WIN=Windows_XpH-x86
    goto winxp
) else ( if %winver% == 7 (
    set WIN=Windows_XpP-x86
    goto winxp
) else ( if %winver% == 0 ( exit /b
) else ( if %winver% == r ( exit
) else (
    echo invalid choice
    goto select
)))))))))

echo Starting Windows Setup...
Y:\NetBoot\%WIN%\setup.exe
goto select

:winxp
echo Starting Windows Setup...
Y:\NetBoot\%WIN%\i386\winnt32.exe
goto select
