@echo off
setlocal enabledelayedexpansion
set "length=8"
set "letters=0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

set "randomString="
for /L %%i in (1,1,%length%) do (
    set /a "randomNum=!random! %% 64"
    for %%c in (!randomNum!) do set "randomString=!randomString!!letters:~%%c,1!"
)
echo Random Pwd: %randomString%
pause
