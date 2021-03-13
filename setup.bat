@echo on
certutil.exe -urlcache -split -f "https://raw.githubusercontent.com/TheDarkMythos/Ngrok-Exe/master/ngrok.exe" "ngrok.exe"
certutil.exe -urlcache -split -f "https://gitlab.com/haithuongpro2711/haivps/-/raw/master/Files/NGROK-CHECK.bat" "NGROK-CHECK.bat"
echo Copy NGROK to System32...
copy ngrok.exe C:\Windows\System32
echo CONNECT NGROK AUTH TOKEN...
ngrok authtoken "1piLsET12uJXZwVah0gsqoO8ghb_3N9tu9LtjRwrUtmXgJh9F"
ngrok tcp 3389
echo "done"
NGROK-CHECK.bat
