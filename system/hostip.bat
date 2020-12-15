echo off
for /f "tokens=3,4          skip=1 delims= " %%a in ('ping -n 1 localhost') do (
set HostName=%%b
goto end)
:end
setlocal enabledelayedexpansion
echo ^<HostName^>%HostName%^</HostName^> >> file.txt

echo off
for /f "tokens=1* skip=7 delims=:" %%a in ('ipconfig') do (
set ip=%%b
goto end)
:end
setlocal enabledelayedexpansion
echo ^<IP^>:%ip%^</IP^> >> file.txt

pause