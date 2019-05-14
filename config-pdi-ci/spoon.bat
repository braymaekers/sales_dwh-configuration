SET PENTAHO_ENV=config-pdi-ci
SET PROJECT_NAME=sales_dwh
CD %~dp0\..\..\%PROJECT_NAME%\framework\configuration
CALL spoon.bat
