@ECHO OFF
ECHO SENDING IMAGES TO WEBSERVER
for /f "tokens=1-4 delims=/ " %%i in ("%date%") do (
     set dow=%%i
     set month=%%j
     set day=%%k
     set year=%%l
)
set datestr=%month%_%day%_%year%
git add *
set a="'Automated Image Upload - "
set c="'"
set b=a and datestr and c
git commit -m b
git push