#!/bin/bash
var="fileComodo.txt"
if ! [ $# = 2 ] ; then
	echo "Usage: try with '$0 nameFile.ext grepNumber' (example grepNumber sintax: 03,04,11,21 OK! -21,3,4 NO!)"
fi

cp $1 $var
echo         =====================================================
for ((i=0;i<10;i++)); do
	if [ $2 -gt 9 ]; then
		grep "$2.$i)" $var | tr "-" "\n"
	else
		grep "0$2.$i)" $var | tr "-" "\n"
	fi
	echo         =====================================================
done
echo
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo
grep sysCalls $1
echo
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo
