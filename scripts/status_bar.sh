# Author : Cipher007
# Date   : 8th Sept 2021

#!/usr/bin/bash

bat()
{
	num="$(acpi -b | cut -d ' ' -f 4 | tr -d ',')"
	echo "$num" 
}

dte()
{
	dte="$(date)"
	echo "$dte"
}

cpu()
{
	usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')
	echo "$usage cpu"
}

while true
do
	xsetroot -name " $(bat) | $(cpu) | $(dte) "
	sleep 1s
done &
