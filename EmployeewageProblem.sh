#!/bin/bash -x
isPresentFull=1;
isPresentHalf=2;
randomCheck=$((RANDOM%3));
WagePerHr=20
case $randomCheck in
	$isPresentFull)
	empHrs=8 ;;
	$isPresentHalf)
	empHrs=4 ;;
	*)
        empHrs=0 ;;
esac
salary=$(($WagePerHr * $empHrs)
