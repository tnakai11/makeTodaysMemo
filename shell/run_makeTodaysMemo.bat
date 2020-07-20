@echo off
cd /d %~dp0
powershell -NoProfile -ExecutionPolicy Unrestricted .\makeTodaysMemo.ps1
exit