path="$1"
toprocn="$2"

cntfiles () {
find "$path" -type f | wc -l
}

cursec () {
date +%s
}

initdt=$( cursec ) 
initn=$( cntfiles )
while true
do
curn=$( cntfiles )
curdt=$( cursec )
timepassed=$( expr $curdt - $initdt )
curleftn=$( expr $toprocn - $curn )
curspeed=$( expr $curn / $timepassed )
timeleft=$( expr $curleftn '*' $curspeed )
echo -e "Watching $path ...
Start time: $initdt
Cur time: $curdt
Total files to process: $toprocn
Currently processed: $curn
Left files: $curleftn
Time passed: $timepassed
Cur speed: $curspeed files/sec
Time left: $timeleft";
sleep 0.01
done