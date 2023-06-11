- keyboard => bash(shell) => os
- sh - unix shell program
- bash - bourne again shell
- terminal emulator (gnome terminal)
- shell prompt (username@machinename) cwd $
(we can change this if we want)
- this means shell is ready to accept the input
- if # at the last not $ means that you are super user and you have super power
- command history (arrow key up and down)
- ctrl + c and ctrl + v will not work in the terminal
```sh
date
cal
df #disk free
df -h
free 
free -h
exit
```
- several terminal session run behind the gui we can access it using `ctrl+alt+f1` to `ctrl+alt+f6`
- switching `alt f1-f6`
- to return `alt+f3` 

### Navigating file system

```sh
pwd #present working dir
cd #change dir
ls #list dir content
```
- linux use hierarchical file system means it is like a tree structure.
- all the files are stored in the root directory (/)
- no separate drive like c: d: e: in windows
- absolute path (/home/username) : path from the root directory
- relative path (./) : path from the current directory
- cd .. : go to the parent directory
- cd . : go to the current directory
- cd : go to home directory
- cd - : go to the previous directory
- cd ~user_name : go to the home directory
- hidden files start with . (ls -a)
- linux is case sensitive
- linux has no concept of file extension

### Exploring the system:

```sh
ls  #list dir content
ls -l #long listing
ls -a #all files
file #file type
less #view file content
ls ~ /usr/bin
```

- command -options arguments

```bash
ls -lt #sort by time
ls -ltr #sort by time reverse or ls -lt --reverse
ls -lS #sort by size
ls -lSr #sort by size reverse
ls -lSh #sort by size human readable
ls -lShr #sort by size human readable reverse
```

```bash
-rwxr----- 1 jay jay  900 May 12 10:35 notes.md
```

-rw-r--r-- : access permission of the file
- first character : file type (-: regular file, d: directory, l: link, b: block special file, c: character special file, s: socket, p: pipe).
- next three character : owner permission (r: read, w: write, x: execute).
- next three character : group permission (r: read, w: write, x: execute).
- next three character : other permission (r: read, w: write, x: execute).

- 1 is number of hard link.
- jay : is username of file owner.
- jay : is group name of file owner.
- 900 : is size of the file in bytes.
- 12 10:35 : is date and time of last modification.
- notes.md : is file name.

- file command is used to determine the file type. exa: file notes.md will give notes.md: ASCII text

```bash
file /bin/bash
```

- in unix like system everything is a file. exa: /dev/sda is a file which represent the hard disk.

- less command is used to view the file content.

- text is one to one mapping of character to bytes. exa: ASCII, UTF-8

```bash
less notes.md
```

- use q to quit from less command. and use arrow key to navigate. h for help. 1G or g move to beginning of the file. G is for go to end file. / to search. n for next search. N for previous search. space for next page. b for previous page. h for help. q for quit.

### linux file system

- linux file system hierarchy standard (FHS) : https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard

- / : root directory (top of the file system hierarchy)

- /bin : contains binary executable files (ls, cp, mv, rm, cat, mkdir, rmdir, touch, chmod, chown, chgrp, ln, pwd, echo, date, cal, df, free, less, file, which, whoami, who, groups, id, su, sudo, passwd, clear, exit, ...)

- /boot : contains boot loader files (kernel, initrd, grub, ...)

- /dev : contains device files (sda, sda1, sda2, sdb, sdb1, sdb2, sdc, sdc1, sdc2, ...)

- /etc : contains system wide configuration files (passwd, group, shadow, hosts, fstab, ...) . also contains startup and shutdown scripts.

- /home : contains home directories of users (jay, jay2, jay3, ...)

- /lib : contains library files (shared object files) for the system and the programs. similar to dll files in windows.

- /lost+found : contains recovered files after system crash.

- /media : contains mount point for removable media (cdrom, usb, ...)

- /mnt : contains mount point for temporary file system (floppy, cdrom, usb, ...)

- /opt : contains optional software packages (firefox, chrome, ...) hold commercial software.

- /proc : The proc file system acts as an interface to internal data structures in the kernel. It can be used to obtain information about the system and to change certain kernel parameters at runtime (sysctl).

- /root : home directory of root user.

- /sbin : contains binary executable files for system administration (fdisk, mkfs, fsck, ...)

- /tmp : contains temporary files.

- /usr : contains user utilities and applications (bin, lib, include, share, ...)

- /usr/bin : contains binary executable files for user utilities and applications.

- /usr/lib : contains library files (shared object files) for user utilities and applications.

- /usr/local : contains locally installed software (bin, lib, include, share, ...)

- /usr/sbin : contains binary executable files for system administration for locally installed software.

- /usr/share : contains shared data for locally installed software.

- /usr/share/doc : contains documentation for locally installed software.

- /var  : contains variable data (log, spool, mail, ...)

- /var/log : contains log files.

### brief introduction links

- system link : a file that contains a reference to another file or directory in the form of an absolute or relative path and that affects pathname resolution.

- hard link : a file that contains a reference to another file or directory in the form of an absolute or relative path and that affects pathname resolution.


### wildcards

- wildcards :
  - `*` : match any number of characters.
  - `?` : match any single character.
  - `[ch]`: match any single character within the specified range.
  - `[!ch]` : match any single character not within the specified range.
  - `[[:class:]]` : match any character belonging to the specified class.
        - `[:alnum:]` : match any alphanumeric character.
        - `[:alpha:]` : match any alphabetic character.
        - `[:digit:]` : match any digit.
        - `[:lower:]` : match any lowercase character.
        - `[:upper:]` : match any uppercase character.

- * => display all files in the current directory.
- a* => starts with a.
- j*.txt => starts with j and ends with .txt.
- jay??? => start with jay and have 3 characters.
- bak.[0-9][0-9][0-9] => starts with bak and have 3 digits.
- [[:upper:]]* => starts with uppercase character.
- [![:digit:]]* => starts with non digit character.
- [a-z] => match any single character within the specified range.

### commands for manipulating files and directories

```sh
cp
mv
mkdir 
rm 
ln
```



```sh
mkdir dir #create directory
mkdir dir1 dir2 dir3   #create multiple directories
mkdir -p dir1/dir2/dir3 #create parent directory if not exist
```

```sh
cp #copy file or directory
cp item... directory
cp -a item... directory #copy with attributes
cp -i item... directory #prompt before overwrite
cp -r item... directory #copy recursively
cp -u item... directory #copy if source is newer than destination
cp -v item... directory #explain what is being done
cp file1 file2 dir1 #copy file1 and file2 to dir1
```

```sh
mv #move and rename file or directory
mv -i f1 f2 #prompt before overwrite
mv -u f1 f2 #move if source is newer than destination
mv -v f1 f2 #explain what is being done
```


```sh
rm #remove file and directory
rm main.go #remove file
rm -i main.go #prompt before remove
rm -r dir #remove directory recursively (remove all files and subdirectories)
rm -f dir #force remove directory
rm -v dir #explain what is being done
```

- linux has no recycle bin. when you delete a file it is gone forever. be careful when using rm command.ls the file before removing it.

```sh
ln #create link
ln -s item link 
```

- Symbolic links were created to overcome the limitations of hard links. Symbolic links work by creating a special type of file that contains a text pointer to the referenced file or dir.

```sh
ls -li #list files with inode number
```
- Symbolic links were created to overcome the two disadvantages of hard links: Hard links cannot span physical devices and hard links cannot reference directories, only files. Symbolic links are a special type of file that contains a text pointer to the target file or directory.

- One thing to remember about symbolic links is that most file operations are carried out on the link's target, not the link itself. rm is an exception. When you delete a link, it is the link that is deleted, not the target.

- we can also create symbolic link using the GUI also. right click on the file and select make link.


### working with commands

```sh
type #display how command name is interpreted
which #display which executable program will be executed(display executable location)
help # help for shell builtin
man #display manual page for command
apropos #display list of appropriate commands example: apropos copy
info #display info page for command
whatis #display one line manual page description
alias #create alias for command
```

- command can be :
  - An executable program like ls, find, ...
  - a command built into the shell itself. like cd, echo, ...
  - a shell function.
  - an alias.

- type command useful to find out how a command name is interpreted. it can be an alias, shell function, shell builtin, or executable program.

```sh
type type
type ls
type cp

#which
which type
which ls
which zsh


#help command will not work in zsh. it will work in bash.
help cd
help mysql
# many program also support --help option.
dir --help
docker --help

man ls
man 5 passwd

whatis ls #very short description
whatis docker

man bash # most brutal man page but very thorough and useful.

info ls #info is alternative for man page
info coreutils
```

- man page broken into sections
  - 1 user commands
  - 2 system calls
  - 3 c library functions
  - 4 special files
  - 5 file formats
  - 6 games 
  - 7 conventions and miscellany
  - 8 system administration and privileged commands


- /usr/share/doc contains documentation for locally installed software.we can view it using `less` command.

- if file is zip file then we can use `zless` command to view it.

```sh
cd /usr/share/doc; ls ; cd - 

alias #display all aliases
alias name="command" #create alias
unalias name #remove alias
alias foo="ls -l" #create alias
type foo #display how foo is interpreted
```

[bash manual](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#What-is-Bash_003f)


### redirection

```sh
cat #concatenate files and print on the standard output
sort #sort lines of text files
uniq #report or omit repeated lines
grep #print lines matching a pattern
wc #print newline, word, and byte counts for each file
head #output the first part of files
tail #output the last part of files
tee #read from standard input and write to standard output and files
```

- stdin : standard input this is file descriptor 0 that is not saved on disk but it is displayed on the screen.this takes the input from the user.default it is keyboard.

- stdout : standard output this is file descriptor 1 that is not saved on disk but it is displayed on the screen.this shows the output of the command.

- stderr : standard error this is file descriptor 2 that is not saved on disk but it is displayed on the screen.this shows the error of the command.

- i/o redirection : we can redirect the input and output of the command to the file or to the another command.(by default i/o input is keyboard and i/o output is terminal)

```sh
ls -l /usr/bin > ls-output.txt #redirect output to file
```

- Simply using the redirection operator with no command preceding it will truncate an existing file or create a new, empty file.

- when we redirect the output to the file it will overwrite the file if it already exist.

- `>>` will append the output to the file.

```sh
ls -l /usr/bin >> ls-output.txt #append output to file
```

- redirection to stderr using `2>` operator. here 2 is file descriptor for stderr.

```sh
ls -l /bin/usr 2> ls-error.txt #redirect stderr to file
```

```sh
ls -l /bin/usr > ls-output.txt 2>&1 #redirect stderr to stdout to same file
ls -l /bin/usr &> ls-output.txt #redirect stderr to stdout to same file 
```

- /dev/null is a special file that discards all data written to it but reports that the write operation succeeded. it is used to discard unwanted output of program.

```sh
ls -l /bin/usr > /dev/null #discard output
```

- in missing of argument cat will read from stdin and display on the screen.

```sh
cat #display keyboard input on the screen (ctrl + d to exit)
cat files... #concatenate files and display on the screen 
cat < file #display file on the screen
cat file1 file2 > file3 #concatenate file1 and file2 and write to file3
cat file >> file2 #append file to file2
cat file1 file2 file3 > file4 #concatenate files and write to file4
```

- pipe operator `|` is used to redirect the output of one command to another command.

```sh
ls -l /usr/bin | less #display output of ls -l /usr/bin in less command

#####
command2 > file
command1 | command2 | command3 | ... | commandN
```

- redirection operator connects a command with a file while the pipeline operator connects the output of one command with the input of a second command.

- The lesson here is that the redirection operator silently creates or overwrites files,so you need to treat it with a lot of respect. If you want to avoid accidentally overwriting a file, you can use the noclobber option. When this option is set, you cannot use the redirection operator to overwrite an existing file. You can still use the redirection operator to append to an existing file, however.

```sh
set -o noclobber #set noclobber option
set +o noclobber #unset noclobber option
```
- filtering

```sh
ls /bin /usr/bin | sort | less
```

```sh
# uniq command : report or omit repeated lines
ls /bin /usr/bin | sort | uniq | less

ls /bin /usr/bin | sort | uniq -d| less # display duplicate lines
```
```sh
# wc command : print newline, word, and byte counts for each file

wc /etc/passwd #display newline, word, and byte counts for each file

ls /etc/passwd | sort | uniq | wc -l
```

```sh
# grep command : print lines matching a pattern
ls /bin /usr/bin | sort | uniq | grep zip
```

```sh
head -n 5 output.txt
tail -n 5 output.txt
ls /usr/bin | tail -n 5
tail -f /var/log/messages #display last 10 lines of file and keep watching for new lines
```

```sh
# tee command : read from standard input and write to standard output and files
ls /usr/bin | tee ls.txt | grep zip
```



```sh
echo "hello world" # display hello world on the screen
```

### expansion


- expansion : bash perform several types of expansion when it reads a command line. it performs brace expansion, tilde expansion, parameter and variable expansion, command substitution, arithmetic expansion, word splitting, and pathname expansion. 

```sh
echo * #display all files and directories in current directory
echo a* #display all files and directories in current directory starting with a
echo *.txt #display all files and directories in current directory ending with .txt
echo [[:lower:]]* #display all files and directories in current directory starting with lowercase
echo /usr/*/share #display all directories in /usr that have a share subdirectory
echo .* #display all hidden files and directories in current directory
echo .[!.]* #display all hidden files and directories in current directory except . and .. 
echo ~ #display home directory
echo ~root #display home directory of root user
```

```sh
# arithmetic expansion
echo $((expression)) #perform arithmetic expansion + , - , * , / , % , ** , ++ , -- , < , > , <= , >= , == , != , && , ||
```

```sh
# brace expansion
echo {a,b,c} #display a b c
echo {1..10} #display 1 2 3 4 5 6 7 8 9 10
echo {001..10} #display 1 2 3 4 5 6 7 8 9 10
echo {z..a}
echo a{A{1,2},B{3,4}}b #display aA1b aA2b aB3b aB4b

mkdir {20010..2020}-{01..12} 
```

```sh
# parameter expansion
echo $HOME #display home directory
echo $PATH #display path
echo $USER #display username
printenv #display all environment variables
```

```sh
# command substitution
echo $(ls)
echo ls -l $(which cp)
```

### quoting and escaping

```sh
echo my name is    jay #display my name is jay (remove extra spaces)
echo "my name is    jay" #display my name is    jay (do not remove extra spaces)
echo bill $100.00 #display bill .00 (remove extra spaces) treat $100.00 as variable
echo "$USER $((2+2)) $(cal)" 

echo $(cal) 
echo "$(cal)"
```

- if we need to suppress all the expansions we can use single quotes.

```sh
echo '$USER $((2+2)) $(cal)'
```

```sh
# escaping
`\a` #alert
`\b` #backspace
`\e` #escape
`\f` #form feed
`\n` #newline
`\r` #carriage return
`\t` #horizontal tab
`\v` #vertical tab
`\\` #backslash
`\nnn` #octal value of character
`\xnn` #hexadecimal value of character
```

### Advance keyboard tricks

- `clear` command will clear the screen. or we can use `ctrl + l` to clear the screen.
- `history` command will display all the commands that we have executed.

- **cursor movement**

- `ctrl + a` will move cursor to the beginning of the line.
- `ctrl + e` will move cursor to the end of the line.
- `ctrl +f ` will move cursor forward one character.
- `ctrl + b` will move cursor backward one character.
- `alt + f` will move cursor forward one word.
- `alt + b` will move cursor backward one word.

- **modifying text**

- `ctrl + d` will delete character under the cursor.  
- `ctrl + t` will transpose character under the cursor with the one to the left of the cursor.
- `alt + t` will transpose word under the cursor with the one to the left of the cursor.
- `alt + u` will convert characters from the cursor to the end of the word to uppercase.
- `alt + l` will convert characters from the cursor to the end of the word to lowercase. 

- **cut and paste**

- `ctrl + k` will cut text from the cursor to the end of the line.
- `ctrl + u` will cut text from the cursor to the beginning of the line.
- `alt + d` will cut text from the cursor to the end of the current word.
- `alt + backspace` will cut text from the cursor to the beginning of the current word.
- `ctrl + y` will paste text that was previously cut.

- use tab to autocomplete commands.
- `alt+? ` will display all the possible commands that can be used with the current command.
- `alt + *` will display all the possible files that can be used with the current command.

- `history | less` command will display all the commands that we have executed.
- `!n` will execute the nth command from the history.

- `ctrl + r` will search the history for a command that matches the characters you have entered so far on the command line.
- `ctrl + g` will cancel the search and restore the original line.
- `ctrl + j` will execute the command found by ctrl + r.
- `!!` will execute the last command.


### permissions

- linux is multi user operating system. each user has a unique username and password. each user has a unique user id. each user belongs to a group. each group has a unique group id. each file and directory has an owner and group. each file and directory has a set of permissions that determine what users can do with it.

- `id` command will display the current user id and group id.
- user account information is stored in `/etc/passwd` file.in that the info like user name, user id, group id, home directory, login shell, etc are stored.
- user group information is stored in `/etc/group` file. in that the info like group name, group id, group members are stored.
- super user has 0 as user id and group id. su stands for super user. su is used to switch to root user.


```sh
-rw-rw-r-- 1 jay jay 22 Jun 11 12:32 foo.txt

# first 10 ch are file attributes

# first ch : file type
# - : regular file
# d : directory
# l : symbolic link
# c : character device such as keyboard, mouse, etc
# b : block device such as hard disk, usb, etc

#next 3 ch : owner permissions
#next 3 ch : group permissions
#next 3 ch : other(world) permissions
```

- `r`:
  - file : allow to open and read the file
  - directory : allow to list the contents of the directory if execute permission is also set
- `w`:
  - file : allow to modify the file but not rename or delete it is determined by the permissions of the directory containing the file
  - directory : allow to create, delete, and rename files in the directory if execute permission is also set
- `x`:
  - file : allow to execute the file if it is a program or script
  - directory : allow to access the directory and its contents, provided the name of the file is known (read permission is required to access the directory).

- symbolic like have dummy permissions. the actual permissions are stored in the file to which the symbolic link points.

- `chmod` command is used to change the permissions of a file or directory.
- `x` is value 1, `w` is value 2, `r` is value 4. we can add these values to get the desired permission.

```sh
chmod 777 foo.txt #give all permissions to all users
chmod 755 foo.txt #give read, write, execute permissions to owner and read, execute permissions to group and other users
chmod 644 foo.txt #give read, write permissions to owner and read permissions to group and other users
chmod 600 foo.txt #give read, write permissions to owner and no permissions to group and other users
```

- `u` is for user, `g` is for group, `o` is for other, `a` is for all.

```sh
u+x #give execute permission to user
u-x #remove execute permission from user
+x #give execute permission to all users
o-rw #remove read and write permissions from other users
go=rw #set the read and write permissions for the group owner and anyone besides the owner. If either the group owner or world previously had execute permissions, they are removed.
u+x,go=rx #give execute permission to the user and set the read and execute permissions for the group owner and anyone besides the owner.
```

-`umask` command is used to set the default permissions for newly created files and directories.

- setuid bit is represented by `s` in the owner execute position. setuid bit is used to allow a program to be executed with the permissions of the owner of the program. setuid bit is ignored for directories.


```sh
chmod u+s foo.txt #set the setuid bit for the owner of the file
```

- setgid bit is represented by `s` in the group execute position. setgid bit is used to allow a program to be executed with the permissions of the group of the program. setgid bit is ignored for files.

```sh
chmod g+s foo.txt #set the setgid bit for the group of the file
```

- sticky bit is represented by `t` in the other execute position. sticky bit is used to allow only the owner of the file or the root user to delete or rename the file. sticky bit is ignored for files.

```sh
chmod o+t foo.txt #set the sticky bit for the other users
```

- `su` command is used to switch to another user account. if no user name is specified, it will switch to root user account.

```sh
su jay #switch to jay user account
su - #the - option tells su to run a login shell, which means that the user's environment will be loaded. The l option tells su to log in as the specified user, rather than just switch to that user
```

- use exit command to exit from the current user account and return to the previous user account.

```sh
su -c "ls -la" user #run the command as another user if user is not provided then it will run as root user
```

- `sudo` command is used to run a command as another user, by default the root user. sudo command requires the user to enter their password. the user must be in the sudo group to use the sudo command.

- sudo does not require root password. it requires the user's password.

- One important difference between su and sudo is that sudo does not start a new shell, nor does it load another user's environment.

```sh
chown [owner][:[group]] file #change the owner and group of the file
chown jay foo.txt #change the owner of the file to jay
chown jay:users foo.txt #change the owner of the file to jay and group to users
chown :users foo.txt #change the group of the file to users
chown jay: foo.txt #change the owner of the file to jay and group to the primary group of jay
```

- chgrp command is used to change the group of a file or directory it is similar to chown command and works in the same way.

- `passwd user` command is used to change the password of a user account. if no user name is specified, it will change the password of the current user account.


### Processes

- all modern os is usually do multitasking they really do not do this they just switch between tasks so quickly that it appears that they are doing multiple tasks at the same time.(think about multi core cpu)

- linux kernel manage this through use of processes. 

- a process is an instance of a program that is being executed. a process has its own memory space, system resources, and unique process id.

- During system startup, the kernel initiates its own activities and launches a program called "init." Init runs a series of shell scripts located in /etc, known as init scripts, which start system services. These services often run as daemon programs, functioning in the background without a user interface. This allows the system to remain busy and perform routine tasks even when no user is logged in.

-  In the process scheme, this ability for a program to launch other programs is represented by a parent process creating a child process.

- init has process id 1. init is the parent of all processes.

- `ps` command is used  to display information about the currently running processes.

```sh
ps
PID TTY          TIME CMD
6713 pts/0    00:00:00 zsh
7500 pts/0    00:00:00 ps
# tty is short for teletype refers to the terminal that the process is running on.
# time is the total amount of CPU time that the process has used since it started.

px x #display the processes associated with the current user.

# ? indicate no controlling terminal
# STAT column indicate the current status of the process
# S : sleeping
# R : running
# T : stopped
# Z : zombie
# D : uninterruptible sleep
# W : paging
# < : high priority
# N : low priority
```

```bash
ps aux #display all processes running on the system

# USER User ID. This is the owner of the process.
# PID Process ID. This is a unique number that identifies the process.
# %CPU CPU usage in percent.
# %MEM Memory usage in percent.
# VSZ Virtual memory size.
# RSS Resident Set Size. The amount of physical memory (RAM) the process is using in kilobytes.
# START Time when the process started. For values over 24 hours, a date isused.
```

- `top` command is used to display the currently running processes and their resource usage dynamically. update the information every 3 seconds by default.
- use `q` to quit from top command. and `h` to display the help.


- `xlogo` command is used to display the xlogo program. xlogo is a simple program that displays the X Window System logo.

- `ctrl - c` is used to interrupt a process. not all processes can be interrupted. by `ctrl - c` command.

- `xlogo & [1] 28236` command is used to run a process in the background. the process id of the background process is displayed in the square brackets. here 28236 is the process id of the xlogo process. and 1 is the job number.using ps command we can see the process.

- `jobs` command is used to display the currently running background processes.

- `fg` command is used to bring a background process to the foreground. in our case `fg %1` command will bring the xlogo process to the foreground.

- `ctrl - z` command is used to suspend a process. the process is suspended and the shell prompt is displayed. the process can be resumed by using the `fg` command. now we can use `bg` command to resume the process in the background. or we can use `fg` command to resume the process in the foreground.

- `kill` command is used to send a signal to a process. by default, the TERM signal is sent to the process. the TERM signal is used to terminate a process. the TERM signal can be ignored by the process. if the process does not terminate, then the KILL signal can be sent to the process. the KILL signal cannot be ignored by the process. the KILL signal will terminate the process.

```sh
kill [-signal] pid #send a signal to a process
kill -9 28236 #send the KILL signal to the process 9 is the signal number of the KILL signal
```
- `1` is the signal number of the HUP signal. the HUP signal is used to reload the configuration of a process. the HUP signal can be ignored by the process.
- `2` is the signal number of the INT signal. the INT signal is used to interrupt a process. the INT signal can be ignored by the process.
- `15` is the signal number of the TERM signal. the TERM signal is used to terminate a process. the TERM signal can be ignored by the process.
- `9` is the signal number of the KILL signal. the KILL signal is used to terminate a process. the KILL signal cannot be ignored by the process. this signal is used as a last resort to terminate a process.
- `18` is the signal number of the CONT signal. the CONT signal is used to resume a process that has been suspended.
- `19` is the signal number of the STOP signal. the STOP signal is used to suspend a process. the STOP signal cannot be ignored by the process.

- use `kill -l` command to display the list of signals.

- `killall` command is used to send a signal to a process by name. by default, the TERM signal is sent to the process. the TERM signal is used to terminate a process. the TERM signal can be ignored by the process. if the process does not terminate, then the KILL signal can be sent to the process. the KILL signal cannot be ignored by the process. the KILL signal will terminate the process.

```sh
killall [-signal] process_name #send a signal to a process by name
killall -9 xlogo #send the KILL signal to the xlogo process
```

- `pstree` command is used to display the processes in a tree format. the parent process is displayed above the child process.

- `vmstat` command is used to display the virtual memory statistics. the vmstat command displays information about the system's virtual memory, swap space, disk I/O, and CPU usage. the vmstat command displays a summary of the system's virtual memory statistics. the vmstat command displays a summary of the system's swap space statistics. the vmstat command displays a summary of the system's disk I/O statistics. the vmstat command displays a summary of the system's CPU usage statistics.
