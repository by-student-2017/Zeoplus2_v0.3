REM copy *.cif case.cif

REM echo %time% && .\..\..\code\network.exe -r uff.rad -ha -res HKUST1.res HKUST1.cif && echo "time-HKUST1-res"
REM echo %time% && .\..\..\code\network.exe -r uff.rad -ha -chan 1.0 HKUST1.chan HKUST1.cif && echo "time-HKUST1-chan"
REM echo %time% && .\..\..\code\network.exe -r uff_1.12.rad -ha -sa 1.657 1.86 2000 HKUST1.sa HKUST1.cif && echo "time-HKUST1-sa"
echo %time% && .\..\..\code\network.exe -ha -sa 1.657 1.86 2000 HKUST1.sa HKUST1.cif && echo "time-HKUST1-sa"
REM echo %time% && .\..\..\code\network.exe -r uff.rad -ha -volpo 1.32 1.32 50000 HKUST1.hvf HKUST1.cif && echo "time-HKUST1-hvf"
REM echo %time% && .\..\..\code\network.exe -r uff.rad -ha -volpo 1.657 1.657 50000 HKUST1.freev HKUST1.cif && echo "time-HKUST1-freev"
REM echo %time% && .\..\..\code\network.exe -r uff.rad -ha -psd 1.0 1.0 50000 HKUST1.psd HKUST1.cif && echo "time-HKUST1-psd"

REM plot.gpl
REM del case.cif