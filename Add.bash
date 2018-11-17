tput cup 16 28;
read -p "Enter your First Name: " first
tput cup 17 28;
read -p "Enter your Last Name: " last
user=${first:0:1}${last:0:4}
count=`grep -ci "${user}" UserData.txt`
if [ ${count} -gt 0 ] ; then
    user="${user}${count}"
fi
tput cup 18 28;
echo -n "Your Username is: "; echo "${user}"  | tr '[a-z]' '[A-Z]';
echo "${user}:${first}:${last}" | tr '[a-z]' '[A-Z]' >>  UserData.txt
