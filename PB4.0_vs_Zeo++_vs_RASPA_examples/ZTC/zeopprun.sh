#! /bin/bash

cifname=`find *.cif`
echo ${cifname}
fname=${cifname%.*}
echo ${fname}

time ../../../network -r uff.rad -ha -res ${fname}.res ${fname}.cif && echo "time-"${fname}"-res"
time ../../../network -r uff.rad -ha -chan 1.0 ${fname}.chan ${fname}.cif && echo "time-"${fname}"-chan"
time ../../../network -r uff_1.12.rad -ha -sa 1.657 1.86 2000 ${fname}.sa ${fname}.cif && echo "time-"${fname}"-sa"
time ../../../network -r uff.rad -ha -volpo 1.32 1.32 50000 ${fname}.hvf ${fname}.cif && echo "time-"${fname}"-hvf"
time ../../../network -r uff.rad -ha -volpo 1.657 1.657 50000 ${fname}.freev ${fname}.cif && echo "time-"${fname}"-freev"
time ../../../network -r uff.rad -ha -psd 1.0 1.0 50000 ${fname}.psd ${fname}.cif && echo "time-"${fname}"-psd"

cp ${fname}.psd case.psd_histo 
./plot.gpl

exit 0 
