set System_Build_SW_Dir=%1
cd %System_Build_SW_Dir%

set System_Build_SW_Complete_Dir=%1_Complete
echo %system_Build_SW_Complete_Dir%

rem use call to return from gen_DistKit.bat to this bat 
call gen_DistKit.bat %1 ..\%system_Build_SW_Complete_Dir%
cd ..\%system_Build_SW_Complete_Dir%

xcopy /E /I ..\%System_Build_SW_Complete_Dir%\%System_Build_SW_Dir% ..\%System_Build_SW_Complete_Dir%\%System_Build_SW_Dir%_MFG
xcopy /E /I /Y ..\%System_Build_SW_Complete_Dir%\%System_Build_SW_Dir%_MFG_PATCH ..\%System_Build_SW_Complete_Dir%\%System_Build_SW_Dir%_MFG 
