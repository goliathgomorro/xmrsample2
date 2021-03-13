@echo on
certutil.exe -urlcache -split -f "https://raw.githubusercontent.com/TheDarkMythos/Ngrok-Exe/master/ngrok.exe" "ngrok.exe"
certutil.exe -urlcache -split -f "https://gitlab.com/haithuongpro2711/haivps/-/raw/master/Files/NGROK-CHECK.bat" "NGROK-CHECK.bat"
echo Copy NGROK to System32...
copy ngrok.exe C:\Windows\System32
echo CONNECT NGROK AUTH TOKEN...
ngrok authtoken "1piLsET12uJXZwVah0gsqoO8ghb_3N9tu9LtjRwrUtmXgJh9F"
start "" ngrok tcp 3389
echo "done"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user administrator Thuonghai001 /add >nul
net localgroup administrators administrator /add >nul
curl -O https://gitlab.com/haithuongpro2711/haivps/-/raw/master/Files/DisablePasswordComplexity.ps1 > out.txt 2>&1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './DisablePasswordComplexity.ps1'" > out.txt 2>&1
diskperf -Y >nul
sc start audiosrv >nul
sc config Audiosrv start= auto >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
ping -n 999999 10.10.10.10 >nul
