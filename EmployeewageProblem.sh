#!/bin/bash -x
declare -a dailyWage
isPresentFull=1;
isPresentHalf=2;
WagePerHr=20
MaxWorkDays=20
MaxWorkHr=100
TotalWorkhr=0
day=0
function getWorkHr() {
		local randomCheck=$1
		local emphrs=0
	case $randomCheck in
		$isPresentFull)
		empHrs=8 ;;
		$isPresentHalf)
		empHrs=4 ;;
		*)
        	empHrs=0 ;;
	esac
	echo $empHrs
}
while [ $day -lt $MaxWorkDays ] && [ $TotalWorkhr -lt $MaxWorkHr ]
do
        randomCheck=$((RANDOM%3));
        ((day++))
	empHrs="$(getWorkHr $randomCheck)"
	TotalWorkHr=$((TotalWorkHr + empHrs))
	salary=$((WagePerHr * empHrs))
done
TotalSalary=$((WagePerHr * TotalWorkHr))
echo dailyWages:${!dailywage[*]}
echo day:${day[*]
