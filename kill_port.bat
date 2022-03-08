set /p port=Enter port:
netstat -ano | findstr :%port%
set /p pid=Enter pid:
taskkill /PID %pid% /F