
set PARAM=cif
for /f "usebackq" %%A in (`dir /b ^| find "%PARAM%"`) do set FILE=%%~nA
echo %FILE%

echo %time% && .\..\..\code\network.exe -r uff.rad -ha -res %FILE%.res %FILE%.cif && echo "time-%FILE%-res"
echo %time% && .\..\..\code\network.exe -r uff.rad -ha -chan 1.0 %FILE%.chan %FILE%.cif && echo "time-%FILE%-chan"
echo %time% && .\..\..\code\network.exe -r uff_1.12.rad -ha -sa 1.657 1.86 2000 %FILE%.sa %FILE%.cif && echo "time-%FILE%-sa"
echo %time% && .\..\..\code\network.exe -r uff.rad -ha -volpo 1.32 1.32 50000 %FILE%.hvf %FILE%.cif && echo "time-%FILE%-hvf"
echo %time% && .\..\..\code\network.exe -r uff.rad -ha -volpo 1.657 1.657 50000 %FILE%.freev %FILE%.cif && echo "time-%FILE%-freev"
echo %time% && .\..\..\code\network.exe -r uff.rad -ha -psd 1.0 1.0 50000 %FILE%.psd %FILE%.cif && echo "time-%FILE%-psd"

copy *.psd case.psd_histo
plot.gpl
del case.cif