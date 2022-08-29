NEWCMD="export PATH=\"`pwd`:\$PATH\""
echo $NEWCMD >> ~/.bash_profile
echo "Re-applying profile ..."
. ~/.bash_profile