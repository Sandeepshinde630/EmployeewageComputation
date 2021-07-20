#!/bin/bash -x
isPresentFull=1;
isPresentHalf=2;
WagePerHr=20
MaxWorkDays=20
TotalWorkhr=0
for ((day=1; day<=$MaxWorkDays; day++))
do
	randomCheck=$((RANDOM%3));

	case $randomCheck in
		$isPresentFull)
		empHrs=8 ;;
		$isPresentHalf)
		empHrs=4 ;;
		*)
        	empHrs=0 ;;
	esac
	TotalWorkHr=$(($TotalWorkHr + $empHrs))
	salary=$(($WagePerHr * $empHrs))
done
TotalSalary=$(($WagePerHr * $TotalWorkHr))
