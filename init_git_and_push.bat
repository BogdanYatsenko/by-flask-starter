@echo off
setlocal enabledelayedexpansion
if "%~1"=="" (
  echo Usage: init_git_and_push.bat ^<GITHUB_REPO_URL^>
  exit /b 1
)
set REPO_URL=%~1
git init
git add .
git commit -m "Initial commit: BY Flask Starter"
git branch -M main
git remote add origin "%REPO_URL%"
git push -u origin main
echo Pushed to %REPO_URL%
