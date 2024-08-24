@ECHO OFF

IF NOT EXIST z3-4.8.5-x64-win.zip (
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/Z3Prover/z3/releases/download/Z3-4.8.5/z3-4.8.5-x64-win.zip', 'z3-4.8.5-x64-win.zip')"
)

IF NOT EXIST z3_installed\bin\z3-4.8.5.exe (
    powershell -Command "Expand-Archive -Force 'z3-4.8.5-x64-win.zip' 'z3_installed'"
    xcopy /s /e /y z3_installed\z3-4.8.5-x64-win z3_installed\
    copy /Y z3_installed\bin\z3.exe z3_installed\bin\z3-4.8.5.exe
    rmdir /s /q z3_installed\z3-4.8.5-x64-win
)
