@echo off
wpeinit
echo Hardware Initilized.

set SERVER=FILESERVER           :: Your server's IP or hostname here
set SHARE=WINDOWSROOT           :: The Share that your Window's install files are located
set WINPATH=PATH\TO\INSTALLS    :: Path to Folder containing the folders of each Windows version

echo Please Wait...
echo Establishing Network Connection.
:repeat
(ping -n 1 %SERVER% | find "TTL=") || goto :repeat
echo   Connection Established.

echo Connecting to File Server %SERVER%...
:share
(net view \\%SERVER% | find "%SHARE%") || goto :share
echo   Connected to File Server %SERVER%.

net use Y: \\%SERVER%\%SHARE%
chdir /d Y:\%WINPATH%
call "winselectx64.cmd"
rem call "winselectx64.cmd" :: un-remark this line and remark the above line for x86
