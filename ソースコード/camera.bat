@echo off
setlocal EnableDelayedExpansion

:loop
cls
set "color=0"

for /l %%y in (1,1,10) do (
    for /l %%x in (1,1,20) do (
        set /a "rand=!random! %% 3"
        <nul set /p=!rand!
    )
    echo.
)

timeout /t 1 /nobreak >nul
goto loop
