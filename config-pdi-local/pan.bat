REM SET PENTAHO_ENV=config-pdi-local
REM SET PROJECT_NAME=sales_dwh
REM CD %~dp0\..\..\%PROJECT_NAME%\framework\configuration
CD %CD%\\..\\..\\framework\\bin

set ORIG_DIR=%CD%
CALL pan.bat %*
cd %ORIG_DIR%