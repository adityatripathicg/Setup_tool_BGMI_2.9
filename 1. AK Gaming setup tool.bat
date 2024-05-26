@ECHO OFF
:: BatchGotAdmin
::-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
::--------------------------------------
@Echo Off
@ECHO ON
@ECHO OFF
@ECHO ON
@shift
@ECHO OFF
title All In One Tool By AK Gaming PVT


:Menu
CLS
type "ascii_art.txt"
ECHO [92m                     ==  1. Uninstall Gameloop Completely  ==[0m
ECHO [93m                     ==  2. Install Gameloop 64bit         ==[0m
ECHO [94m                     ==  3. Install Gameloop 32bit         ==[0m
ECHO [95m                     ==  4. Download BGMI                  ==[0m
ECHO [96m                     ==  5. Install BGMI                   ==[0m
ECHO [91m                     ==  6. Gameloop Key Mapping for 64bit ==[0m
ECHO [92m                     ==  7. Gameloop Key Mapping for 32bit ==[0m
ECHO [93m                     ==  8. Kill Gameloop                  ==[0m
ECHO [94m                     ==  9. Start Gameloop                 ==[0m
ECHO.
ECHO [97mType the number of your option and press ENTER KEY:[0m
SET /P option=Choose option:
 %option% EQU 1 GOTO Uninstall_Gameloop_Warning
IF %option% EQU 2 GOTO Install_Gameloop64
IF %option% EQU 3 GOTO Install_Gameloop32
IF %option% EQU 4 GOTO Download_BGMI
IF %option% EQU 5 GOTO Install_BGMI
IF %option% EQU 6 GOTO Gameloop_Key_Mapping64
IF %option% EQU 7 GOTO Gameloop_Key_Mapping32
IF %option% EQU 8 GOTO Kill_Gameloop
IF %option% EQU 9 GOTO Start_Gameloop
GOTO Menu



:Download_BGMI
ECHO Downloading to current directory.
IF EXIST "bgmi.zip" (
  ECHO bgmi.zip already exists, skipping download.
) ELSE (
  ECHO Downloading BGMI...
  powershell -Command "Invoke-WebRequest -Uri 'https://akcheat.com/BGMI.zip' -OutFile 'bgmi.zip'"
  ECHO BGMI Download Processed Successfully!
)

ECHO Extracting bgmi.zip...
"C:\Program Files\WinRAR\WinRAR.exe" x -ibck "bgmi.zip" "./"
ECHO BGMI Extraction Processed Successfully!
PAUSE
GOTO Menu






:Start_Gameloop
cd C:\\Program Files\\TxGameAssistant\\ui
cd D:\\Program Files\\TxGameAssistant\\ui
cd E:\\Program Files\\TxGameAssistant\\ui
cd F:\\Program Files\\TxGameAssistant\\ui
cd C:\\TxGameAssistant\\ui
cd D:\\TxGameAssistant\\ui
cd E:\\TxGameAssistant\\ui
start androidemulatorEx.exe -vm 100
PAUSE
GOTO Menu
:Kill_Gameloop
@echo off

TaskKill /F /IM appmarket.exe

TaskKill /F /IM androidemulator.exe

TaskKill /F /IM androidemulatorEn.exe
TaskKill /F /IM androidemulatorEx.exe

TaskKill /F /IM androidemulatorCn.exe
TaskKill /F /IM aow_exe.exe

TaskKill /F /IM QMEmulatorService.exe

TaskKill /F /IM RuntimeBroker.exe

taskkill /f /im adb.exe

taskkill /f /im GameLoader.exe

taskkill /f /im TSettingCenter.exe
taskkill /f /im AndroidEmulatorEn.exe
taskkill /f /im AndroidEmulatorEx.exe
taskkill /f /im AndroidRenderer.exe
taskkill /f /im AndroidEmulator.exe
taskkill /f /im syzs_dl_svr.exe
net stop aow_drv

net stop Tensafe
PAUSE
GOTO Menu

:Uninstall_Gameloop_Warning
ECHO Are you sure you really want to uninstall the full Gameloop? (yes/no):
SET /P uninstall_choice=Choose option:
IF /I "%uninstall_choice%"=="yes" GOTO Uninstall_Gameloop
IF /I "%uninstall_choice%"=="no" GOTO Menu
ECHO Invalid choice, please enter "yes" or "no".
GOTO Uninstall_Gameloop_Warning

:Uninstall_Gameloop
Color 2
cls
title Delete Gameloop Completely
cls
TaskKill /F /IM appmarket.exe

TaskKill /F /IM androidemulator.exe

TaskKill /F /IM androidemulatorEn.exe
TaskKill /F /IM androidemulatorEx.exe

TaskKill /F /IM androidemulatorCn.exe
TaskKill /F /IM aow_exe.exe

TaskKill /F /IM QMEmulatorService.exe

TaskKill /F /IM RuntimeBroker.exe

taskkill /f /im adb.exe

taskkill /f /im GameLoader.exe

taskkill /f /im TSettingCenter.exe
taskkill /f /im AndroidEmulatorEn.exe
taskkill /f /im AndroidEmulatorEx.exe
taskkill /f /im AndroidRenderer.exe
taskkill /f /im AndroidEmulator.exe
taskkill /f /im syzs_dl_svr.exe
net stop aow_drv

net stop Tensafe

cls
reg delete "HKEY_CURRENT_USER\Software\Tencent" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Tencent" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\TencentMobileGameAssistant" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\MobileGamePC" /f
reg delete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall\MobileGamePC" /f
reg delete "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.apk\OpenWithList" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\QMEmulatorService" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\aow_drv" /f
cls
reg delete  "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Program Files\txgameassistant\appmarket\AppMarket.exe"  /f
reg delete  "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\Program Files\txgameassistant\appmarket\AppMarket.exe"  /f
reg delete  "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "E:\Program Files\txgameassistant\appmarket\AppMarket.exe"  /f
reg delete  "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "F:\Program Files\txgameassistant\appmarket\AppMarket.exe"  /f
reg delete  "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Program Files\program files\txgameassistant\appmarket\AppMarket.exe"  /f
reg delete  "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\Program Files\program files\txgameassistant\appmarket\AppMarket.exe"  /f
reg delete  "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "E:\Program Files\program files\txgameassistant\appmarket\AppMarket.exe"  /f
reg delete  "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "F:\Program Files\program files\txgameassistant\appmarket\AppMarket.exe"  /f
cls
reg delete  "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Program Files\txgameassistant\ui\AndroidEmulator.exe"  /f
reg delete  "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\Program Files\txgameassistant\ui\AndroidEmulator.exe"  /f
reg delete  "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "E:\Program Files\txgameassistant\ui\AndroidEmulator.exe"  /f
reg delete  "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "F:\Program Files\txgameassistant\ui\AndroidEmulator.exe"  /f

reg delete  "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Program Files\program files\txgameassistant\ui\AndroidEmulator.exe"  /f
reg delete  "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\Program Files\program files\txgameassistant\ui\AndroidEmulator.exe"  /f
reg delete  "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "E:\Program Files\program files\txgameassistant\ui\AndroidEmulator.exe"  /f
reg delete  "HKEY_USERS\S-1-5-21-1684716338-1731825245-2802686541-500\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "F:\Program Files\program files\txgameassistant\ui\AndroidEmulator.exe"  /f
cls
rd /s /q "%userprofile%\AppData\Roaming\Tencent"
rd /s /q "%userprofile%\AppData\Local\Tencent\"
cls
rd /s /q "C:\Program Files\program files\txgameassistant"
rd /s /q "D:\Program Files\program files\txgameassistant"
rd /s /q "E:\Program Files\program files\txgameassistant"
rd /s /q "F:\Program Files\program files\txgameassistant"
cls
rd /s /q "C:\Program Files\txgameassistant"
rd /s /q "D:\Program Files\txgameassistant"
rd /s /q "E:\Program Files\txgameassistant"
rd /s /q "F:\Program Files\txgameassistant"
cls
rd /s /q "C:\txgameassistant"
rd /s /q "D:\txgameassistant"
rd /s /q "E:\txgameassistant"
rd /s /q "F:\txgameassistant"
cls
rd /s /q "C:\Temp"
rd /s /q "D:\Temp"
rd /s /q "E:\Temp"
rd /s /q "F:\Temp"
cls
rd /s /q "C:\ProgramData\Tencent"
cls
del /q /s /f "%userprofile%\desktop\AndroidEmulator.lnk
del /q /s /f "%userprofile%\desktop\GameLoop.lnk
cls
del /f /s /q "%USERPROFILE%\AppData\Local\Temp\*.*"
del /f /s /q "%USERPROFILE%\AppData\Local\Temp\"
echo Processed Successfully!
echo.
echo.
echo %rw10%
echo                            Gameloop deleted Successfully! AKCHEAT.COM
echo %rw10%
echo.
echo.
pause
ECHO Gameloop Uninstallation Processed Successfully!
PAUSE
GOTO Menu



:Install_Gameloop32
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://cdn.discordapp.com/attachments/676839694109114403/1059124786925682688/GLP_installer_1000218456_market.exe', 'GLP_installer_900223086_market.exe')"
start GLP_installer_900223086_market.exe

ECHO Gameloop 32bit Installation Processed Successfully!
PAUSE
GOTO Menu










:Install_BGMI
runas /trustlevel:0x20000 "Install_BGMI.bat"
echo ' > "deletethisfile.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "deletethisfile.vbs"
echo speech.speak "Wait, we are installing BGMI for you. This will take a few minutes, so please sit back and wait! - Made by AKGaming0" >> "deletethisfile.vbs"
start deletethisfile.vbs
echo.
push
GOTO Menu



:Gameloop_Key_Mapping64
ECHO Killing Gameloop...
@echo off

TaskKill /F /IM appmarket.exe

TaskKill /F /IM androidemulator.exe

TaskKill /F /IM androidemulatorEn.exe
TaskKill /F /IM androidemulatorEx.exe

TaskKill /F /IM androidemulatorCn.exe
TaskKill /F /IM aow_exe.exe

TaskKill /F /IM QMEmulatorService.exe

TaskKill /F /IM RuntimeBroker.exe

taskkill /f /im adb.exe

taskkill /f /im GameLoader.exe

taskkill /f /im TSettingCenter.exe
taskkill /f /im AndroidEmulatorEn.exe
taskkill /f /im AndroidEmulatorEx.exe
taskkill /f /im AndroidRenderer.exe
taskkill /f /im AndroidEmulator.exe
taskkill /f /im syzs_dl_svr.exe
net stop aow_drv

net stop Tensafe
ECHO Checking if AndroidTbox.zip is in use...
powershell -Command "if (Test-Path '%appdata%\AndroidTbox.zip') { Remove-Item '%appdata%\AndroidTbox.zip' -Force }"

ECHO Deleting existing AndroidTbox folder if present...
IF EXIST "%appdata%\AndroidTbox" (
    rmdir /s /q "%appdata%\AndroidTbox"
)


ECHO Downloading AndroidTbox.zip...
powershell -Command "$url = 'https://akcheat.com/AK101.zip'; $output = '%appdata%\AndroidTbox.zip'; Invoke-WebRequest -Uri $url -OutFile $output"

ECHO Extracting AndroidTbox.zip to %appdata%...
powershell -Command "Expand-Archive -LiteralPath '%appdata%\AndroidTbox.zip' -DestinationPath '%appdata%\AndroidTbox' -Force"


ECHO Downloading ui.zip...
powershell -Command "$url = 'https://akcheat.com/AKUI1.zip'; $output = 'C:\\Program Files\\TxGameAssistant\\ui.zip'; Invoke-WebRequest -Uri $url -OutFile $output"

ECHO Deleting existing UI folder if present...
IF EXIST "C:\\Program Files\\TxGameAssistant\\ui" (
    rmdir /s /q "C:\\Program Files\\TxGameAssistant\\ui"
)

ECHO Extracting ui.zip to C:\\Program Files\\TxGameAssistant...
"C:\\Program Files\\WinRAR\\WinRAR.exe" x -ibck "C:\\Program Files\\TxGameAssistant\\ui.zip" "C:\\Program Files\\TxGameAssistant\\"

ECHO Deleting ui.zip...
del "C:\\Program Files\\TxGameAssistant\\ui.zip"

ECHO BGMI Key mapping like global - By AKGaming Processed Successfully!
PAUSE
GOTO Menu



:Gameloop_Key_Mapping32
ECHO Killing Gameloop...
@echo off

TaskKill /F /IM appmarket.exe

TaskKill /F /IM androidemulator.exe

TaskKill /F /IM androidemulatorEn.exe
TaskKill /F /IM androidemulatorEx.exe

TaskKill /F /IM androidemulatorCn.exe
TaskKill /F /IM aow_exe.exe

TaskKill /F /IM QMEmulatorService.exe

TaskKill /F /IM RuntimeBroker.exe

taskkill /f /im adb.exe

taskkill /f /im GameLoader.exe

taskkill /f /im TSettingCenter.exe
taskkill /f /im AndroidEmulatorEn.exe
taskkill /f /im AndroidEmulatorEx.exe
taskkill /f /im AndroidRenderer.exe
taskkill /f /im AndroidEmulator.exe
taskkill /f /im syzs_dl_svr.exe
net stop aow_drv

net stop Tensafe
ECHO Downloading AndroidTbox.zip...
powershell -Command "$url = 'https://akcheat.com/AK100.zip'; $output = '%appdata%\AndroidTbox.zip'; Invoke-WebRequest -Uri $url -OutFile $output"

ECHO Deleting existing AndroidTbox folder if present...
IF EXIST "%appdata%\AndroidTbox" (
    rmdir /s /q "%appdata%\AndroidTbox"
)

ECHO Extracting AndroidTbox.zip to %appdata%...
"C:\Program Files\WinRAR\WinRAR.exe" x -ibck "%appdata%\AndroidTbox.zip" "%appdata%"

ECHO Downloading ui.zip...
powershell -Command "$url = 'https://akcheat.com/AKUI.zip'; $output = 'C:\\Program Files\\TxGameAssistant\\ui.zip'; Invoke-WebRequest -Uri $url -OutFile $output"

ECHO Deleting existing UI folder if present...
IF EXIST "C:\\Program Files\\TxGameAssistant\\ui" (
    rmdir /s /q "C:\\Program Files\\TxGameAssistant\\ui"
)

ECHO Extracting ui.zip to C:\\Program Files\\TxGameAssistant...
"C:\\Program Files\\WinRAR\\WinRAR.exe" x -ibck "C:\\Program Files\\TxGameAssistant\\ui.zip" "C:\\Program Files\\TxGameAssistant\\"

ECHO Deleting ui.zip...
del "C:\\Program Files\\TxGameAssistant\\ui.zip"

ECHO BGMI Key mapping like global - By AKGaming Processed Successfully!
PAUSE
GOTO Menu





:Exit
EXIT
