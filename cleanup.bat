@echo off
echo Cleaning all LaTeX help files...
echo
FOR /F %%i IN (.gitignore) DO (
  IF "%%i" NEQ "cleanup.bat" (
    IF "%%i" NEQ "presets" (
	    IF "%%i" NEQ "anna" (
	      del /S /F ".\%%i"
	    ) 
    ) 
  )
)
echo Done.