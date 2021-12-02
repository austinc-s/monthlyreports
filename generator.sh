#!/bin/bash

SOURCEDIRBLOOD=/home/aus87/BTIL/processingsheets/blood/*
SOURCEDIRTISSUE=/home/aus87/BTIL/processingsheets/tissue/*
SOURCEDIRSTOOL=/home/aus87/BTIL/processingsheets/stool/*

DESTDIRBLOOD=/home/aus87/BTIL/reports/blood/
DESTDIRTISSUE=/home/aus87/BTIL/reports/tissue/
DESTDIRSTOOL=/home/aus87/BTIL/reports/stool/

echo -e "Please input month as mm format (e.g. 10): "
read month
echo -e "Please input year as yyyy format (e.g. 2021): "
read year

shopt -s nullglob
for sourcefile in $SOURCEDIRBLOOD; do
    BASE=${sourcefile##*/}
    /home/aus87/BTIL/monthlyreports/reportgenerator $month $year "1" $sourcefile "${DESTDIRBLOOD}${BASE}"
done

shopt -s nullglob
for sourcefile in $SOURCEDIRTISSUE; do
    BASE=${sourcefile##*/}
    /home/aus87/BTIL/monthlyreports/reportgenerator $month $year "1" $sourcefile "${DESTDIRTISSUE}${BASE}"
done

shopt -s nullglob
for sourcefile in $SOURCEDIRSTOOL; do
    BASE=${sourcefile##*/}
    /home/aus87/BTIL/monthlyreports/reportgenerator $month $year "1" $sourcefile "${DESTDIRSTOOL}${BASE}"
done