REM copy *.cif case.cif

echo %time% && .\..\..\code\network.exe -r uff.rad -ha -res ZIF8.res ZIF8AP.cif && echo "time-ZIF8-res"
echo %time% && .\..\..\code\network.exe -r uff.rad -ha -chan 1.0 ZIF8.chan ZIF8AP.cif && echo "time-ZIF8-chan"
echo %time% && .\..\..\code\network.exe -r uff_1.12.rad -ha -sa 1.657 1.86 2000 ZIF8.sa ZIF8AP.cif && echo "time-ZIF8-sa"
echo %time% && .\..\..\code\network.exe -r uff.rad -ha -volpo 1.32 1.32 50000 ZIF8.hvf ZIF8AP.cif && echo "time-ZIF8-hvf"
echo %time% && .\..\..\code\network.exe -r uff.rad -ha -volpo 1.657 1.657 50000 ZIF8.freev ZIF8AP.cif && echo "time-ZIF8-freev"
echo %time% && .\..\..\code\network.exe -r uff.rad -ha -psd 1.0 1.0 50000 ZIF8.psd ZIF8AP.cif && echo "time-ZIF8-psd"

REM plot.gpl
REM del case.cif