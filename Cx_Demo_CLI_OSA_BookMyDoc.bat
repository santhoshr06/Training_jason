rem @echo off
rem https://cxapactrial.checkmarx.net
rem jason.khoo@checkmarx.com
	
rem set JAVA_HOME=C:\Program Files\Java\jre1.8.0_91
set CX_CONSOLE_PATH=\
set USERNAME=admin
set PASS=Cx!123456
set CHECKMARX_HOST=localhost
set PRESET=Checkmarx Default
set DEMO_WORKSPACE=C:\CxSharedSrc\BookMyDoc-master
set DEMO_PROJECT_NAME=CxServer\DEMO_CLI_BookMyDoc5
REM set HIGH_VULNERABILITY_THRESHOLD=10
REM set MEDIUM_VULNERABILITY_THRESHOLD=50

REM	NOTE:  LINES BELOW THIS LINE TYPICALLY DO NOT NEED TO BE EDITED.

rem set PATH=%JAVA_HOME%/bin;%PATH%
"C:\CxWorkSpace\TS\03 CxConsolePlugin\CxConsolePlugin-8.80.2\runCxConsole.cmd" scan -verbose -ForceScan -CxServer %CHECKMARX_HOST% -ProjectName %DEMO_PROJECT_NAME% -CxUser %USERNAME% -CxPassword %PASS% -LocationType folder -locationPath %DEMO_WORKSPACE% -Preset "%PRESET%" -ReportPDF %CX_CONSOLE_PATH% 
rem -enableOsa -OsaLocationPath %DEMO_WORKSPACE% -OsaReportHtml %CX_CONSOLE_PATH%
rem -incremental
rem IF not errorlevel 0  exit /b %ERRORLEVEL%

pause
