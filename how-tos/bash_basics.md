# Bash Basics

_Note: Don't actually type the `$`._

* What directory am I in?
  * `$ pwd`
* Change directory
  * Child
    * `$ cd ./projects`
    * `$ cd projects`
  * Parent
    * `$ cd ../`
  * Root
    * `$ cd `
  * Somewhere specific
    * `$ cd ~/projects/my_project/folder/`
* List files in directory
  * Excluding hidden files
    * `$ ls`
  * Include hidden files
    * `$ ls -a`
  * With permissions
    * `$ ls -l`
  * Hidden files and permissions
    * `$ ls -a -l`
* Echo to the terminal
  * `$ echo "Hello, world!"`
* Create a new file
  * `$ touch my_file.rb`
* Write to that file from the terminal (add content)
  * `$ echo 'puts "hello"' >> my_file.rb`
* Create AND write to file from terminal (DANGER! will overwrite)
  * `$ echo 'puts "hello"' > my_file.rb`
* Create a directory/folder
  * `$ mkdir projects`
* Sublime
  * Open the current directory
    * `$ subl .`
  * Open only a specific file
    * `$ subl my_file.rb`
* Read the manual about a terminal command
  * `$ man echo`
    * `k` scrolls the page down
    * `j` scrolls the page up
    * `:q` takes you back to the command line
* Remove a file
  * `$ rm my_file.rb`
* Remove a directory/folder
  * _Warning: this cannot be undone_
  * `$ rm -rf some_folder/`
* Move a file from one place to another
  * `$ mv ./my_file.rb ~/Desktop/`
* Copy a file and give it a new name
  * `$ cp ./my_file.rb ./my_new_file.rb`
* View your command history
  * `$ history`
