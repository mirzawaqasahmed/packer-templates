#Requires -version 5

Set-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Control\Power\ -name HiberFileSizePercent -value 0
Set-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Control\Power\ -name HibernateEnabled -value 0

& powercfg.exe /H off