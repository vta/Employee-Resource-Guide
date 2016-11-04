@ECHO OFF

:: SOURCE_DIR is the folder which contains the PDF and markdown files to be
:: used in the creation of the resource guide.
SET SOURCE_DIR=".\docs\Employee Resource Guide"

:: TARGET_DIR is the folder which will hold the resource guide once it is created
SET TARGET_DIR=".\out\Employee Resource Guide"

:: RESOURCES_DIR is the folder which contains files, like images, used in the final HTML
SET RESOURCES_DIR=".\resources"

rmdir /s /q %TARGET_DIR%

if %ERRORLEVEL% EQU 0 (
	C:\Python27\python.exe deguide.py %SOURCE_DIR% %RESOURCES_DIR% %TARGET_DIR%
) else (
	echo Tried to delete the output folder but could not do so.
	echo Please check that the files in %TARGET_DIR% are not in use and try again.
)

pause