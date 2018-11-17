choice='t'
while
[ "$choice" != "x" ] &&
[ "$choice" != "X" ]
do
tput clear
tput cup 8 28; 
echo "MENU";
tput cup 9 28;
echo ==================
tput cup 10 28;
echo "(p, P) Print users info"
tput cup 11 28;
echo "(a, A) Add new user"
tput cup 12 28;
echo "(s, S) Search user"
tput cup 13 28;
echo "(d, D) Delete user"
tput cup 14 28;
echo "(x, X) Exit"
tput cup 15 28;
echo "Enter your choice: "; 
tput cup 16 28;
read choice;

	case $choice in
		"p" | "P")
			sort -d  UserData.txt | tr '[a-z]' '[A-Z]' | tr ':' '\t'
			;;
		"a" | "A")
			./Add.bash
			;;
		"s" | "S")
			./Search.bash
			;;
                "d" | "D")
			./Delete.bash
                        ;;
		"x" | "X")
			echo "Closing Program..."
			;;
			*)
			 echo "Please Enter a correct choice: " $choice 
			;;
	esac
echo "Press Enter To Continue "
read temp;
done
