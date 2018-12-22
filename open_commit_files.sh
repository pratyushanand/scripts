#/bin/bash
#it will open all the files for given commit
#assumes that  atleast two commits exist in repository
#arg1 :  default is HEAD. Can pass a commit id as well.
if [[ $1 ]];then
	commit=$1
else
	commit='HEAD'
fi
vim `commit_files.sh $commit`
