@echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set mytime=%%a%%b)
set folder=%mydate%_%mytime%
cd C:\Users\cuongld\Desktop\tmp\codetmp
mkdir "%folder%"
cd "%folder%"

set /p url=Enter git:
git clone %url% .
del /f "package-lock.json"
npm i