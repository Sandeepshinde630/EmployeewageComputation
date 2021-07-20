#!/bin/bash -x
isPresent=1;
randomCheck=$((RANDOM%2));
WagePerHr=20
if [ $isPresent -eq $randomCheck ];
then
        empHrs=8;
else
        empHrs=0;
fi
salary=$(($WagePerHr * $empHrs))
