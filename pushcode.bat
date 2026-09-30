@echo off
color 0b
echo ========================================
echo       SAFETY CHECK: 5 CONFIRMATIONS
echo ========================================
echo.

set /p confirm1="Are you sure you want to deploy? (Type 'yes'): "
if /i not "%confirm1%"=="yes" goto canceled

set /p confirm2="Are you REALLY sure? (Type 'yes'): "
if /i not "%confirm2%"=="yes" goto canceled

set /p confirm3="Positive? (Type 'yes'): "
if /i not "%confirm3%"=="yes" goto canceled

set /p confirm4="Almost there, final check! (Type 'yes'): "
if /i not "%confirm4%"=="yes" goto canceled

set /p confirm5="Last one, confirm deployment? (Type 'yes'): "
if /i not "%confirm5%"=="yes" goto canceled

echo.
echo All checks passed! Pushing changes to Vercel...
vercel --prod
goto end

:canceled
echo.
echo Deployment canceled by user.
pause
exit

:end
echo.
echo ========================================
echo           DEPLOYMENT COMPLETE!
echo ========================================
pause