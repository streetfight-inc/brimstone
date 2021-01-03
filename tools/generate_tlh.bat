@Echo Off 
setlocal enabledelayedexpansion
cd \users\user\desktop\officedlls\
for /r %%f in ("*.exe") do (
    pushd %~dp0\output
    Echo %%f
    Echo #import "%%f" >> durp.cpp
    Echo void main^(^)^{^} >> durp.cpp
    cl.exe durp.cpp
    del durp.*
    popd
)
