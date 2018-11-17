tput cup 16 28;
echo "Enter the User to Search: "; 
tput cup 17 28;
read SUser
awk -F: BEGIN{IGNORECASE=1}/$SUser/'{print $1 "\t" $2 "\t" $3}' UserData.txt | tr '[a-z]' '[A-Z]' | tr ':' '\t' | sort -d
