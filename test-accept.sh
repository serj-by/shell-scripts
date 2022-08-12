./accept.sh "erase smth"
if [ $? -ne 0 ]; then
 echo "Exiting..."
 exit
fi
echo "Proceed harmful action..."