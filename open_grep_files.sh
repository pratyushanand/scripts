#/bin/bash
#it will open all the files found in git grep
#arg1 :  string to be grepped
vim `git grep --name-only $1`
