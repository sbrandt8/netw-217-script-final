
#!/usr/bin/env bash

#Function

#Get groups
OPTION_1() {
	cat /etc/group
}

# Add group
OPTION_2() {
	read -p "Input the group name: " GROUP
	sudo groupadd $GROUP
}

OPTION_3() {
	echo
}

OPTION_4() {
	echo
}

OPTION_5() {
	echo
}

OPTION_6() {
	echo
}

OPTION_7() {
	echo
}


#Menu

echo
echo
echo "		Welcome to the group tool menu!"
echo
echo "1. List all groups with GID numbers"
echo
echo "2. Add a new group"
echo
echo "3. Delete a group"
echo
echo "4. Remove a user from a group"
echo
echo "5. Rename a group"
echo
echo "6. Add a user to a group"
echo
echo "7. Exit"
echo
echo "Please select a number 1-7 to continue:"
echo
echo "---------------------------------"
echo

#Get User Input
read -p "Enter a menu item: " USER_INPUT




#Determining action
case  $USER_INPUT in

	1)
		echo "You selected menu 1."
		OPTION_1
		;;
	2)
		echo "You selected menu 2."
		OPTION_2
		;;
	3)
		echo "You selected menu 3."
		OPTION_3
		;;
	4)
		echo "You selected menu 4."
		OPTION_4
		;;
	5)
		echo "You selected menu 5."
		OPTION_5
		;;
	6)
		echo "You selected menu 6."
		OPTION_6
		;;
	7)
		echo "You selected menu 7."
		OPTION_7
		;;
	*)
		echo "You need to select 1-7."
esac
