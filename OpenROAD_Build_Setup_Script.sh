#! /bin/bash
# ============================================================================
# shell script to setup OpenROAD Build Setup Script
# Source: STEAM Clown - www.steamclown.org 
# GitHub: https://github.com/jimTheSTEAMClown/Linux
# Hacker: Jim Burnham - STEAM Clown, Engineer, Maker, Propmaster & Adrenologist 
# This example code is licensed under the CC BY-NC-SA 4.0, GNU GPL and EUPL
# https://creativecommons.org/licenses/by-nc-sa/4.0/
# https://www.gnu.org/licenses/gpl-3.0.en.html
# https://eupl.eu/
# Program/Design Name:		OpenROAD Project Build Setup Shell Script.sh
# Description:    shell script to setup a clean OpenROAD build scripts 
# Dependencies:   
# Revision: 
#  Revision 0.02 - Updated 05/20/2023 for SVCTE Mechatronics Class
#  Revision 0.01 - Created 05/20/2023
# Additional Comments: 
# see https://www.answers.com/Q/How_do_you_make_a_yes_no_command_in_cmd to add more features
# ============================================================================
echo "----------------------------------------------------"
echo "OpenROAD Build Setup Script" 
echo "----------------------------------------------------"
echo " "
pwd
# ls -l
ls
echo " "
echo "----------------------------------------------------"
echo "Do you wish run the OpenROAD Setup Script?"
echo "----------------------------------------------------"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) 
            echo "----------------------------------------------------"
            echo "Running OpenROAD Setup Script" 
            echo "----------------------------------------------------"
            break;;
        No ) 
            echo "----------------------------------------------------"
            echo "Exiting Without OpenROAD Setup" 
            echo "----------------------------------------------------"
            exit;;
    esac
done
# ============================================================================
echo " "
echo "  _  _  ___  ___   __  ____  __  _  _  __ "
echo " ( )( )(  ,\(   \ (  )(_  _)(  )( \( )/ _) "
echo "  )()(  ) _/ ) ) )/__\  )(   )(  )  (( (/\ "
echo "  \__/ (_)  (___/(_)(_)(__) (__)(_)\_)\__/ "
echo "----------------------------------------------------"
echo "Ready... I'm going to run "
echo "  Going to run $ sudo apt update"
echo "  Going to run $ sudo apt upgrade with -y" 
echo "----------------------------------------------------"
echo "Do you wish to run UPDATE and UPGRADE?  Enter y/Y or n/N or any Key?"
read -p "update and upgrade?: " yesInstall
# elif statements
if [ $yesInstall == "y" ] || [ $yesInstall == "Y" ]
then
echo "----------------------------------------------------"
echo "getting home with cd ~"
echo "----------------------------------------------------"
echo " "
cd ~
pwd
echo "----------------------------------------------------"
echo "Running $ update"
echo "----------------------------------------------------"
echo " "
sudo apt update
echo " "
echo "----------------------------------------------------"
echo "Done running Update"
echo "----------------------------------------------------"
echo "----------------------------------------------------"
echo "Running $ upgrade with -y"
echo "----------------------------------------------------"
echo " "
sudo apt upgrade -y
echo " "
echo "----------------------------------------------------"
echo "Done running Upgrade"
echo "----------------------------------------------------"
elif [ $yesInstall == "n" ] || [ $yesInstall == "N" ]
then
echo "Skipping Update / Upgrade"
else
echo "Skipping Update / Upgrade"
fi

echo "Now I'm going to make a OpenROAD Flow Scripts project"
echo "directory, clone an OPenROAD install prject and run an"
echo "OpenROAD install shell script"
echo "mkdir ORFS"
echo "cd ORFS"
echo "git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts"
echo "cd OpenROAD-flow-scripts"
echo "sudo ./setup.sh"
echo "./build_openroad.sh --local"
echo " "
echo "Do you wish to run this part of the OpenROAD setup? Dude, just say 'Yes' Trust me."
echo "Enter y/Y or n/N or any Key?"
read -p "Install this list of commands?: " yesInstall
# elif statements
if [ $yesInstall == "y" ] || [ $yesInstall == "Y" ]
then
echo "----------------------------------------------------"
echo "Making a ORFS Directory"
echo "Running $ mkdir -p -m 744 ORFS"
echo "----------------------------------------------------"
echo " "
mkdir -p -m 744 ORFS
cd ORFS
# Installing yosys, becuase the make script later check for it and may use it as part of the build
sudo apt install yosys -y
git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts
ls -l
echo "cd'ing into the OpenROAD-flow-scripts directory"
cd OpenROAD-flow-scripts
ls -l
# sudo ./etc/DependencyInstaller.sh
sudo ./setup.sh
./build_openroad.sh --local

echo "----------------------------------------------------"
echo "Done making the OpenROAD Flow Scripts Directory"
echo "----------------------------------------------------"
elif [ $yesInstall == "n" ] || [ $yesInstall == "N" ]
then
echo "Skipping this OpenROAD Build Setup"
else
echo "Skipping this OpenROAD Build Setup"
fi



echo "-------------------------------------------------------"
echo "  ___    __  _  _  ___  "
echo " (   \  /  \( \( )(  _) "
echo "  ) ) )( () ))  (  ) _) "
echo " (___/  \__/(_)\_)(___) "
echo " "
echo "----------------------------------------------------"
echo "Done running OpenROAD Build Setup Scripts"
echo " "
echo "----------------------------------------------------"

echo "-------------------------------------------------------"
echo "  _  _  ____  ____  ____  ____  _  _    ____  __  __  ____  __    ____ "
echo " ( \/ )( ___)(  _ \(_  _)( ___)( \/ )  (  _ \(  )(  )(_  _)(  )  (  _ \ "
echo "  \  /  )__)  )   / _)(_  )__)  \  /    ) _ < )(__)(  _)(_  )(__  )(_) ) "
echo "   \/  (____)(_)\_)(____)(__)   (__)   (____/(______)(____)(____)(____/ "
echo "-------------------------------------------------------"
echo "Now I'm going to verify the OpenROAD project build"
echo "source ./env.sh"
echo "yosys -help"
echo "openroad -help"
echo "cd flow"
echo "make"
echo " "
echo "Do you wish to run this Verification of the OpenROAD setup? Dude, just say 'Yes' Trust me."
echo "Enter y/Y or n/N or any Key?"
read -p "Install this list of commands?: " yesInstall
# elif statements
if [ $yesInstall == "y" ] || [ $yesInstall == "Y" ]
then
echo "----------------------------------------------------"
source ./env.sh
yosys -help
openroad -help
cd flow
Echo " Building the NanGate45 PDK"
make

echo "----------------------------------------------------"
echo "Done Verifying the OpenROAD Build"
echo "----------------------------------------------------"
elif [ $yesInstall == "n" ] || [ $yesInstall == "N" ]
then
echo "Skipping this OpenROAD Build Verification"
else
echo "Skipping this OpenROAD Build Verification"
fi
echo "  _  _  ____  _  _  ____    ___  ____  ____  ____  ___ "
echo " ( \( )( ___)( \/ )(_  _)  / __)(_  _)( ___)(  _ \/ __) "
echo "  )  (  )__)  )  (   )(    \__ \  )(   )__)  )___/\__ \ "
echo " (_)\_)(____)(_/\_) (__)   (___/ (__) (____)(__)  (___/ "
echo " "
echo "You could also run the 'make gui_final' to see a GUI version of the build"
echo "make gui_final"
