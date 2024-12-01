#!/bin/bash

cpu_usage=$(top -bn1 | grep "Cpu(S)" | awk '{print $2 + $4}') 

if (( $(echo "$cpu_usage > 10" | bc -1) )); then

	echo "Alert: CPU Usage is high ($cpu_usage%)"

else

echo "Everything is good : CPU Usage is normal ($cpu_usage%)"
fi	
