@echo off

rem Download and install x86 build targets
rem https://github.com/Data-Oriented-House/PortableBuildTools/releases/download/v2.10.2/PortableBuildTools.exe

where cl.exe > nul 2>&1
if %errorlevel% neq 0 (call setup_x86.bat)

ctime.exe -begin compile_time.txt

ml /nologo /c /Cx /Zi reverse.asm
cl /nologo /c /Od /Zi main.c
link /nologo /debug /subsystem:console /machine:x86 main.obj reverse.obj /out:main.exe
ctime.exe -end compile_time.txt

del compile_time.txt > NUL
