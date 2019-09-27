echo off

REM %~n0 is current filename wihtout extension. so it runs the job with same name as the script
call .\launcher.bat "-param:P_JOB_NAME=%~n0" "-param:P_PROJECT_NAME=sales_dwh"