#!/bin/bash


# Add a user
sudo useradd ali
#sudo passwd -d ali  # Remove password for testing 

# Delete user (without home)
sudo userdel ali

# Create file and change permission - method 1 (numeric)
touch myfile.txt
chmod 755 myfile.txt

# Change permission - method 2 (symbolic)
chmod u=rwx,g=rx,o=rx myfile.txt

# Create and delete folder
mkdir myfolder
rm -rf myfolder 

# Search for a file or dir
find /home -name "myfile.txt" 2>/dev/null

# Preview data in file
echo "Hello from inside the file" > myfile.txt
cat myfile.txt
head myfile.txt
tail myfile.txt

# Make one alias only (for clear)
alias c='clear'
echo "alias c='clear'" >> ~/.bashrc

# nano, history, date
history | tail -n 5
date

# Print working directory
pwd

# Switch between 2 users (interactive - may be skipped in non-interactive shell)
# su - anotheruser

# Copy, move, rename, delete files
cp myfile.txt copied.txt
mv copied.txt moved.txt
mv moved.txt renamed.txt
rm renamed.txt

# Delete directory (force)
mkdir myfolder2 && rm -r myfolder2

echo " Script completed."

