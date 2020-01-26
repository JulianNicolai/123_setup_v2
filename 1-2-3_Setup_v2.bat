mode con:cols=70 lines=20
@echo off
title 1-2-3 Setup v2.0 -- Julian Nicolai
echo Welcome to the 1-2-3 Setup Utility 2.0
echo Created by Julian Nicolai, January 2017
echo.
pause
echo ----------------------------------------------------------------------
echo Remove bloatware? Y/N
echo.
set /p bloat="Option: "
echo ----------------------------------------------------------------------
goto bloat%bloat%
:bloaty
echo Starting bloatware removal tool.
%windir%\system32\cmd.exe /c start "" "%CD%\HBCD\Programs\PcDecrapifier.cmd"
echo.
pause
goto bloatend
:bloatn
echo Skipping bloatware removal.
:bloatend
echo ----------------------------------------------------------------------
echo INSTALLTION SELECTION
echo Please select the type of install you would like:
echo.
echo [1] Express
echo [2] Custom
echo.
set /p install="Option: "
echo ----------------------------------------------------------------------
goto %install%1
:11
echo You've selected the express installation.
goto 1end
:21
echo You've selected the custom installation.
:1end
goto 1select%install%
:1select2
echo ----------------------------------------------------------------------
echo Install Google Chrome? Y/N
echo.
set /p chrome="Option: "
echo ----------------------------------------------------------------------
echo Install Adobe Acrobat 11? Y/N
echo.
set /p adobe="Option: "
echo ----------------------------------------------------------------------
echo Install VLC Media Player? Y/N
echo.
set /p vlc="Option: "
echo ----------------------------------------------------------------------
echo Install Malwareybtes? Y/N
echo.
set /p malware="Option: "
echo ----------------------------------------------------------------------
echo Install Windows Essentials 2012? Y/N
echo.
set /p essentials="Option: "
echo ----------------------------------------------------------------------
echo Install Games for Windows? Y/N
echo.
set /p games="Option: "
echo ----------------------------------------------------------------------
goto 1selectend
:1select1
echo Installing the following default programs:
echo.
echo -Google Chrome
echo -Adobe Acrobat
echo -VLC Media Player
echo -Malwarebytes
echo -Windows Essentials 2012
echo -Games for Windows
echo ----------------------------------------------------------------------
set chrome=y
set adobe=y
set vlc=y
set malware=y
set essentials=y
set games=y
:1selectend
echo ANTIVIRUS SELECTION:
echo Please specify the antivirus you would like to install:
echo.
echo [1] Kaspersky
echo [2] Norton
echo [3] McAfee
echo [4] ESET
echo [5] Microsoft Security Essentials
echo [6] Do not install
echo.
set /p antivirus="Option: "
echo ----------------------------------------------------------------------
goto 2select%antivirus%
:2select1
echo You've selected Kaspersky for your antivirus.
echo What type of Kaspersky would you like?
echo.
echo [1] Kaspersky Internet Security
echo [2] Kaspersky Total Security
echo.
set /p kaspersky="Option: "
echo ----------------------------------------------------------------------
goto %kaspersky%a
:1a
echo You've selected Kaspersky Internet Security.
echo ----------------------------------------------------------------------
goto end-a
:2a
echo You've selected Kaspersky Total Security.
echo ----------------------------------------------------------------------
:end-a
goto end-antivirus
:2select2
echo You've selected Norton for your antivirus.
echo What type of Norton would you like?
echo.
echo [1] Norton without backup
echo [2] Norton with backup
echo.
set /p norton="Option: "
echo ----------------------------------------------------------------------
goto %norton%b
:1b
echo You've selected Norton without backup.
echo ----------------------------------------------------------------------
goto end-b
:2b
echo You've selected Norton with backup.
echo ----------------------------------------------------------------------
:end-b
goto end-antivirus
:2select3
echo Unfourtunatly, McAfee uses a custom installer for each account, to install McAfee you must create/sign in to an account and download from there.
echo Go to mcafee.com/activate to activate a new serial or download the already acivated software installer.
echo ----------------------------------------------------------------------
goto end-antivirus
:2select4
echo You've selected ESET for your antivirus.
echo ----------------------------------------------------------------------
goto end-antivirus
:2select5
echo You've selected Microsoft Security Essentials for your antivirus.
echo ----------------------------------------------------------------------
goto end-antivirus
:2select6
echo No antivirus will be installed.
echo ----------------------------------------------------------------------
:end-antivirus
echo OFFICE SELECTION
echo Please select which version of office you would like to install:
echo [1] Microsoft Home and Business 365
echo [2] Microsoft Home and Student 365
echo [3] Microsoft Personal 365
echo [4] Open Office
echo [5] Microsoft Starter 2010 (free basic word/excel)
echo [6] Do not install
echo.
set /p office="Option: "
echo ----------------------------------------------------------------------
goto 3select%office%
:3select1
echo You've selected Microsoft Home and Business 365
echo ----------------------------------------------------------------------
goto end-office
:3select2
echo You've selected Microsoft Home and Student 365
echo ----------------------------------------------------------------------
goto end-office
:3select3
echo You've selected Microsoft Personal 365
echo ----------------------------------------------------------------------
goto end-office
:3select4
echo You've selected Open office
echo ----------------------------------------------------------------------
goto end-office
:3select5
echo You've selected Microsoft Starter 2010
echo ----------------------------------------------------------------------
goto end-office
:3select6
echo Office will not be installed.
echo ----------------------------------------------------------------------
:end-office
echo ADDITIONAL SOFTWARE
echo Please select any other optional software to install:
echo.
echo Install VPN? Y/N
echo.
set /p vpn="Option: "
echo ----------------------------------------------------------------------
echo Install Skype? Y/N
echo.
set /p skype="Option: "
echo ----------------------------------------------------------------------
echo Install Steam? Y/N
echo.
set /p steam="Option: "
echo ----------------------------------------------------------------------
echo Install iTunes?
echo.
echo [1] 64 bit
echo [2] 32 bit
echo [3] Do not install
echo.
set /p itunes="Option: "
echo ----------------------------------------------------------------------
echo Upgrade Internet Explorer to latest version?
echo.
echo [1] Internet Explorer 11 (only for Windows 7)
echo [2] Internet Explorer 9 (only for Windows Vista)
echo [3] Do not upgrade
echo.
set /p ie="Option: "
echo ----------------------------------------------------------------------
echo Selections finished. Here is a summary of what will install:
echo.
if %chrome% EQU y echo Google Chrome
if %adobe% EQU y echo Adobe Acrobat
if %vlc% EQU y echo VLC Media Player
if %malware% EQU y echo Malwarebytes
if %essentials% EQU y echo Windows Essentials 2012
if %games% EQU y echo Games for Windows
goto 4select%antivirus%
:4select1
if %kaspersky% EQU 1 echo Kaspersky Internet Security
if %kaspersky% EQU 2 echo Kaspersky Total Security
goto end-antivirus2
:4select2
if %norton% EQU 1 echo Norton Antivirus without backup
if %norton% EQU 2 echo Norton Antivirus with backup
goto end-antivirus2
:4select3
echo McAfee Antivirus (selected, cannot install)
goto end-antivirus2
:4select4
echo ESET Antivirus
goto end-antivirus2
:4select5
echo Microsoft Security Essentials
goto end-antivirus2
:4select6
:end-antivirus2
if %office% EQU 1 echo Microsoft Office Home and Business 365
if %office% EQU 2 echo Microsoft Office Home and Student 365
if %office% EQU 3 echo Microsoft Office Personal 365
if %office% EQU 4 echo Microsoft Office Open Office
if %office% EQU 5 echo Microsoft Office Microsoft Starter 2010
if %vpn% EQU y echo VPN
if %skype% EQU y echo Skype
if %steam% EQU y echo Steam
if %itunes% EQU 1 echo iTunes 64 bit
if %itunes% EQU 2 echo iTunes 32 bit
if %ie% EQU 1 echo Internet Explorer 11
if %ie% EQU 2 echo Internet Explorer 9
echo ----------------------------------------------------------------------
echo ARE YOU SURE YOU WOULD LIKE TO PROCEED WITH INSTALLATION? Y/N
echo.
set /p confirm="Option: "
goto 5select%confirm%
:5selecty
echo ----------------------------------------------------------------------
echo Beginning installation.
echo.
rem INSTALLATION -------------------------------------------------------------------------------------------------------------------------
if %chrome% EQU y echo Installing Google Chrome
if %chrome% EQU y %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\#ChromeOfflineSetup64"
if %adobe% EQU y echo Installing Adobe Acrobat
if %adobe% EQU y %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\#AdobeReader32"
if %vlc% EQU y echo Installing VLC Media Player
if %vlc% EQU y %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\#VLCMediaPlayer32"
if %malware% EQU y echo Installing Malwarebytes
if %malware% EQU y %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\#MalwarebytesAnti-Malware32"
if %essentials% EQU y echo Installing Windows Essentials 2012
if %essentials% EQU y %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\#WindowsEssentials2012"
if %games% EQU y echo Installing Games for Windows
if %games% EQU y %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\#Windows7GamesInstall"
if %games% EQU y echo Copying Games shortcut...
if %games% EQU y xcopy "%CD%\Utilities\Games.lnk" "%USERPROFILE%\Desktop"
goto 6select%antivirus%
:6select1
if %kaspersky% EQU 1 echo Installing Kaspersky Internet Security
if %kaspersky% EQU 1 %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\KasperskyInternetSecurity32"
if %kaspersky% EQU 2 echo Installing Kaspersky Total Security
if %kaspersky% EQU 2 %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\KasperskyTotalSecurity32"
goto end-antivirus3
:6select2
if %norton% EQU 1 echo Installing Norton Antivirus without backup
if %norton% EQU 1 %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\Norton32"
if %norton% EQU 2 echo Installing Norton Antivirus with backup
if %norton% EQU 2 %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\NortonBackup32"
goto end-antivirus3
:6select3
goto end-antivirus3
:6select4
echo Installing ESET Antivirus
%windir%\system32\cmd.exe /c start "" "%CD%\Utilities\ESET32"
goto end-antivirus3
:6select5
echo Installing Microsoft Security Essentials
%windir%\system32\cmd.exe /c start "" "%CD%\Utilities\MicrosoftSecurityEssentials"
goto end-antivirus3
:6select6
:end-antivirus3
if %office% EQU 1 echo Installing Microsoft Office Home and Business 365
if %office% EQU 1 %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\MicrosoftOfficeHomeBusiness32"
if %office% EQU 2 echo Installing Microsoft Office Home and Student 365
if %office% EQU 2 %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\MicrosoftOfficeHomeStudent32"
if %office% EQU 3 echo Installing Microsoft Office Personal 365
if %office% EQU 3 %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\MicrosoftOfficePersonal32"
if %office% EQU 4 echo Installing Open Office
if %office% EQU 4 %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\OpenOffice32"
if %office% EQU 5 echo Installing Microsoft Starter 2010
if %office% EQU 5 %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\MicrosoftStarter2010"
if %vpn% EQU y echo Installing VPN
if %vpn% EQU y %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\VPN32"
if %skype% EQU y echo Installing Skype
if %skype% EQU y %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\SkypeSetup32"
if %steam% EQU y echo Installing Steam
if %steam% EQU y %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\SteamSetup32"
if %itunes% EQU 1 echo Installing iTunes 64 bit
if %itunes% EQU 1 %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\iTunes64Setup"
if %itunes% EQU 2 echo Installing iTunes 32 bit
if %itunes% EQU 2 %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\iTunes32Setup"
if %ie% EQU 1 echo Installing Internet Explorer 11
if %ie% EQU 1 %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\IE11-Win7-64"
if %ie% EQU 2 echo Installing Internet Explorer 9
if %ie% EQU 2 %windir%\system32\cmd.exe /c start "" "%CD%\Utilities\IE9-Vista-32"
echo ----------------------------------------------------------------------
echo Installation finished.
echo ----------------------------------------------------------------------
pause
exit
rem -------------------------------------------------------------------------------------------------------------------
:5selectn
echo ----------------------------------------------------------------------
echo Exiting installation.
echo ----------------------------------------------------------------------
pause
exit