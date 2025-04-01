@echo off

where cl.exe > nul 2>&1
if %errorlevel% neq 0 (call setup_x86.bat)

ctime.exe -begin compile_time.txt

for %%f in (*.asm) do (ml /nologo /quiet /Zi %%f /link /nologo /subsystem:console)

ctime.exe -end compile_time.txt

del compile_time.txt > NUL

