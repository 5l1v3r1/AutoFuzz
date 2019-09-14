@echo off

if "%ProgramFiles(x86)%" == "" goto try2 

mkdir "%ProgramFiles(x86)%"\AutoFuzz
xcopy AutoFuzz "%ProgramFiles(x86)%"\AutoFuzz /s
goto exit

:try2 
if "%ProgramFiles%" == "" goto exit

mkdir "%ProgramFiles%"\AutoFuzz
xcopy AutoFuzz "%ProgramFiles%"\AutoFuzz /s
goto exit

:errorEnv
@echo Could not read the location of program files from the environment variable

:exit