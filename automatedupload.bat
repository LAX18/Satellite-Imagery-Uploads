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
git commit -m "Automated Image Upload - "+datestr
git push