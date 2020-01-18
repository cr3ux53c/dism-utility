@echo off
TITLE DISM Utility: Get all wim fileinfo

for /l %%a in (1,1,%2) do (
    start /b /wait dism /get-wiminfo /wimfile:%1 /index:%%a >> %1-wiminfo.txt
)