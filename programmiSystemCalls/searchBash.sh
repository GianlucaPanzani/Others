#!/bin/bash
var="fileComodo.txt"
PS3="Scegli un valore da ricercare: "
if ! [ $# = 0 ] ; then
	cp $1 $var
	echo
fi

if ! [ $# = 1 ] ; then
	echo "Usage: try with '$0 sysCallsFile'."
	echo "sysCallsFile --> string"
	echo
else
	select sel in {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16}; do
		echo         =====================================================
		grep sysCalls $var
		echo         =====================================================
		if [ $sel < 10 ] ; then
			grep 00$sel $var
		else
			grep 0$sel $var
		fi
		echo         =====================================================
	done
fi
