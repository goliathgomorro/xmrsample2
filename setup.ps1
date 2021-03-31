Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}
& {$P = $env:TEMP + '\chrome_installer.exe'; Invoke-WebRequest 'https://dl.google.com/chrome/install/latest/chrome_installer.exe' -OutFile $P; Start-Process -FilePath $P -Args '/install' -Verb RunAs -Wait; Remove-Item $P}
& "${Env:PROGRAMFILES(X86)}\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" --code="4/0AY0e-g72P_LO-y4nL9C3HZZApzZ7oJ6KZzaNmcvKUD439KvVbvi5JnnoFcUmhDf2vekZyw" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$Env:COMPUTERNAME -pin=000000
