SET PENTAHO_ENV=config-pdi-local
SET PROJECT_NAME=sales_dwh
CD %~dp0\..\..\framework\configuration
CALL start-pentaho.bat %*
