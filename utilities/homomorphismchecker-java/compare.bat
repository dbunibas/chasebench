@echo off
if [%1]==[] goto usage
java -Xmx4G -jar homomorphismchecker.jar "%1"
goto :eof
:usage
@echo Usage: comparison.sh "<path_configuration.properties>"
exit /B 1