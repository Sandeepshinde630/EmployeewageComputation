#!/bin/bash -x
isPresentFull=1;
isPresentHalf=2;
randomCheck=$((RANDOM%3));
WagePerHr=20
if [ $isPresentFull -eq $randomCheck ];
then
        empHrs=8;
elif [ $isPresentHalf -eq $randomCheck ];
then
	empHrs=4;
else
        empHrs=0;
fi
