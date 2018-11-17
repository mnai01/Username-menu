tput cup 16 28;
echo "Enter First Name of User to Delete";
tput cup 17 28;
read Udelete;
sed -i /$Udelete/Id  UserData.txt
echo "Delete Complete..."
