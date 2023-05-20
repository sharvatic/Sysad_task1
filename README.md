# Sysad_task1
Run the following block of code in the terminal

```
apt update
apt -y upgrade
apt install sudo acl wget git
```
Shift to the root user using the following command and run the script as the root user itself
```
sudo -i
```
Run the following commands to get the files
```
git clone https://github.com/sharvatic/Sysad_task1.git
```
Set alias genStudent in the .bashrc file in the /home directory 
```
alias genStudent='. user_create.sh'
```
HAD and the wardens have a directory called "mydir" which has all files related to the server
Aliases that are to be run for HAD or the wardens should be run from this directory

