-- File Operations --

ls                  # List files and directories in the current directory
ls -l               # List files in long format (detailed listing)
ls -a               # List all files, including hidden ones (starts with .)
pwd                 # Print the working directory (current directory)
cd <directory>      # Change directory to <directory>
cd ..               # Move to the parent directory
mkdir <directory>   # Create a new directory
touch <filename>    # Create an empty file
rm <file>           # Remove a file (use with caution)
rm -r <directory>   # Remove a directory and its contents (use with caution)
mv <old_name> <new_name>  # Move or rename a file or directory
cp <source> <destination>  # Copy a file or directory
cat <filename>      # Display the content of a file
head <filename>     # Display the first few lines of a file
tail <filename>     # Display the last few lines of a file
less <filename>     # View the content of a file one screen at a time
grep <pattern> <filename>  # Search for a pattern in a file
unzip               # Extract
wget				# Web get. Ex: download a python file from GitHub 
apt / yum / pacman  # Download stuff
alias 				# Define temp aliases. You can use a word instead of typing out a large command every time. 
unalias 			# removes alias
which               # output path for programs 
wc 					# word count
shred				# super delete
find 				# Find - search for files in a dir 
						find ./ -name "long.txt" # ./long.txt 


-- Process Management --

ps                  # Display running processes for the current user
ps aux              # Display all running processes on the system
top                 # Monitor system processes in real-time
kill <PID>          # Terminate a process by Process ID (PID)
killall <process>   # Terminate all processes with the given name
htop				# view/ manage resources

-- System Information --

uname -a            # Print system information
neofetch			# Print better system information
df                  # Show disk space usage
du -h               # Display disk usage of files and directories in human-readable format
free                # Display free and used memory in the system

-- File Permissions --

chmod <permissions> <filename>  # Change file permissions (e.g., chmod 755 file.txt)
chown <user> <filename>         # Change the owner of a file
chgrp <group> <filename>        # Change the group ownership of a file

-- Networking --

ping <hostname/IP>  # Send ICMP echo requests to test network connectivity
ifconfig            # Show network interface configuration (Linux, deprecated on some systems)
ip addr             # Show IP address information (preferred on modern Linux systems)
netstat             # Display network statistics and active connections
ssh <user>@<hostname>  # Connect to a remote server using SSH
scp <source> <destination>  # Securely copy files between hosts over SSH

-- Compression and Archive --

tar -cvf <archive.tar> <files>  # Create a tar archive
tar -xvf <archive.tar>          # Extract files from a tar archive
tar -czvf <archive.tar.gz> <files>  # Create a compressed tar.gz archive
tar -xzvf <archive.tar.gz>         # Extract files from a compressed tar.gz archive
gzip <file>         # Compress a file with gzip (.gz extension)
gunzip <file.gz>    # Decompress a gzipped file

-- Miscellaneous --

history             # View command history
man <command>       # Display manual page for a command
clear               # Clear the terminal screen
whoami 				# If you forget what user you are signed into 
exit                # Exit the current shell or terminal session

-- Shortcuts -- 
^name1^name2 		# Re-runs the previous command and replaces. Ex: 
					“sudo apt-get update” #and then 
					^date^grade	#magically becomes “sudo apt-get upgrade”


