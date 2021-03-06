#!/bin/bash


#
#Functions called by user selection.
#
#Get groups
OPTION_1() {
	cat /etc/group
}

#Add group
OPTION_2() {
	read -p "Input the group name: " GROUP
	sudo groupadd $GROUP
}

#Deleting a Group
OPTION_3() {
	read -p "Input the group name you wish to delete: " GROUP
	sudo groupdel $GROUP
	echo "Your group is now deleted."
}

#Removing a user from a group
OPTION_4() {
	read -p "Input the group you are looking to remove a user from: " GROUP
	read -p "Input the user you would like to remove: " USER
	sudo gpasswd -d $USER $GROUP
	echo
}

#Renameing a group
OPTION_5() {
	read -p "Input the group you would like to rename: " GROUP
	read -p "Input the new name of that group: " NEWGROUP
	sudo groupmod $GROUP -n $NEWGROUP
	echo "Your group has been updated to the new name."
}

#Adding a user to a group
OPTION_6() {
	read -p "Input the existing user you would like to add to the group: " USER
	read -p "Input the group you would like the existing user to go into: " GROUP
	sudo usermod -aG $GROUP $USER
	echo
}

#Adding a new User
OPTION_7() {
	read -p "Input the name of the new user you would like to create: " USER
	sudo  useradd $USER
}

# Else
OPTION_8() {
	echo "You have exited the menu."
	exit
}


# Clear the screen and print the menu
clear
echo
echo "You need to select 1-7."
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
echo "7. Add a new user"
echo
echo "8. Exit"
echo
echo "Please select a number 1-8 to continue:"
echo
echo "---------------------------------"
echo


#Get User Input
read -p "Enter a menu item: " USER_INPUT


# Make sure user entered something by using -z    
if [[ -z "$USER_INPUT" ]]; then
	echo "No input entered, you must choose option 1 - 8."
	
	# Exit with code 1 / error
	exit 1
fi


#Determining action
case  $USER_INPUT in

	1)
		#List groups function
		echo "You selected menu 1."
		OPTION_1
		;;
	2)
		#Add a new group function
		echo "You selected menu 2."
		OPTION_2
		;;
	3)
		#Delete a group function
		echo "You selected menu 3."
		OPTION_3
		;;
	4)
		#Remove a user from a group function
		echo "You selected menu 4."
		OPTION_4
		;;
	5)
		#Rename a group function
		echo "You selected menu 5."
		OPTION_5
		;;
	6)
		#Add a user to a group function
		echo "You selected menu 6."
		OPTION_6
		;;
	7)
		#Add new user function
		echo "You selected menu 7."
		OPTION_7
		;;
	8)
		#Exit function
		OPTION_8
		;;
	*)
esac
