@echo off
color 0b
Title Account Changer by Luromed
taskkill /f /im steamwebhelper.exe
taskkill /f /im steamservice.exe
taskkill /f /im steam.exe
taskkill /f /im gameoverlayui.exe
taskkill /f /im csgo.exe
cls
echo =======================================
echo.
Echo You need to be logged in at least once.
echo If a login screen appears please login.
echo.
echo =======================================
echo.
set /p username=Enter Username: 
reg add "HKCU\Software\Valve\Steam" /v AutoLoginUser /t REG_SZ /d %username% /f

reg add "HKCU\Software\Valve\Steam" /v RememberPassword /t REG_DWORD /d 1 /f

:Label5
cls
echo ==============================================================================
echo.
Echo Changing often to the same accounts ? 
echo Why not make a permanent Batch that logs you to the already logged in account!
echo.
echo ==============================================================================
echo.
Set /p odg=Should i create the Batch File ? (Y/N) 
if %odg%==Y ( goto create ) else ( goto Label1)
:label1 
if %odg%==y ( goto create ) else ( goto Label2)
:label2 
if %odg%==N ( goto Exit) else ( goto Label3)
:Label3 
if %odg%==n ( goto Exit ) else (goto Label4)
:Label4 
cls
echo =================
echo.
echo Wrong Input!
echo Please try again!
echo.
echo =================
ping localhost >nul
goto Label5

:create
cls
if exist %username%ChangerL.bat Del /f /q  %username%ChangerL.bat
echo @echo off > %username%ChangerL.bat
echo titel Account Changer by Luromed >>%username%ChangerL.bat
echo taskkill /f /im steamwebhelper.exe >>%username%ChangerL.bat
echo taskkill /f /im steamservice.exe >>%username%ChangerL.bat
echo taskkill /f /im steam.exe >>%username%ChangerL.bat
echo taskkill /f /im gameoverlayui.exe >>%username%ChangerL.bat
echo taskkill /f /im csgo.exe >>%username%ChangerL.bat
echo reg add "HKCU\Software\Valve\Steam" /v AutoLoginUser /t REG_SZ /d %username% /f >>%username%ChangerL.bat
echo reg add "HKCU\Software\Valve\Steam" /v RememberPassword /t REG_DWORD /d 1 /f >>%username%ChangerL.bat
echo start steam://open/main >>%username%ChangerL.bat
echo cls >>%username%ChangerL.bat
echo echo Thank you for using my Acount Changer! Luromed out. >>%username%ChangerL.bat
echo timeout /t 5 /nobreak >>%username%ChangerL.bat
echo exit >>%username%ChangerL.bat
cls
echo ======================================================================================================================
echo.
echo Done Creating. The file is Called %username%ChangerL.bat
echo.
echo ======================================================================================================================
ping localhost -n 6 >nul
goto exit
:exit
cls
echo ================================================
echo.
echo Thank you for using Acount Changer! Luromed out!
echo.
echo ================================================
start steam://open/main
ping localhost > nul 
exit
