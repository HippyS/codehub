@echo off
rem display is turned off 
title Batch to clear line by line
rem title of the batch file 
mode con cols=60 lines=6
rem display of this batch file
color 97
rem color of the background and of the foreground
echo ************************************************************
echo *************************START CODE*************************
echo ************************************************************
echo *Here below this batch script code will delete the files : *
echo ************************************************************
pause
del /s /f /q %userprofile%\Recent\*.*
rem delete any extension files (*.*) without prompting anything (/q) from the environnement variable (%userprofile%) which contains the path to the directory where recent files (\Recent) should be stored and all sub-folders (/s) including read only files (/f)
del /s /f /q C:\Windows\Prefetch\*.*
rem delete any extension files (*.*) without prompting anything (/q) in the directory where prefetch files (\Prefetch) should be stored and all sub-folders (/s) including read only files (/f)
del /s /f /q C:\Windows\Temp\*.*
rem delete any extension files (*.*) without prompting anything (/q) in the directory where temp files (\Temp) should be stored and all sub-folders (/s) including read only files (/f)
del /s /f /q %userprofile%\appdata\local\temp\*.*
rem delete any extension files (*.*) without prompting anything (/q) from the environnement variable (%userprofile%) which contains the path to the directory where temporary files (\temp) should be stored and all sub-folders (/s) including read only files (/f)
/Below command to show the folders of the deleted files
Explorer %userprofile%\Recent
Explorer C:\Windows\Prefetch
Explorer C:\Windows\Temp
Explorer %userprofile%\appdata\local\temp
echo ************************************************************
echo *Delete the remaining files with the windows user interface*
echo ************************************************************
echo ************************END CODE****************************
echo ************************************************************
Pause
