REM Determine the PENTAHO_ENV configuration based on parent directory
for %%a in ("%~dp0\.") do set "PENTAHO_ENV=%%~nxa"

REM BASE_CONFIG_DIR is used later in init.bat to call back to this config-dir
set BASE_CONFIG_DIR=%CD%

REM Capture current dir to switch back after execution
set ORIG_DIR=%CD%

CD %~dp0\\..\\..\\framework\\bin
REM Call framework common script
CALL kitchen.bat %*
cd %ORIG_DIR%