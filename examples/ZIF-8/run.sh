#!/bin/bash

cp *.cif case.cif
./../../network -ha -sa 1.2 1.2 2000 case.cif
./../../network -ha -vol 1.2 1.2 50000 case.cif
./../../network -ha -psd 1.2 1.2 50000 case.cif
plot.gpl
rm case.cif
