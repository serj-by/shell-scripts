trap "echo Ctrl-C pressed; exit;" SIGINT
while true
do
echo "$n"
n=$(( $n+1 ))
done
