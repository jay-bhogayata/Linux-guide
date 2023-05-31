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