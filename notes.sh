#add existing to git
git init
git add .
git remote add origin git@github.com:USERNAME/REPONAME.git
git push -u origin master
 
#remove svn
find . -name '.svn' -type d -print0 | xargs -0 rm -rf
git commit -a -m 'removing svn files'
 
#show user data
git config -l
 
#tag a release
git tag -a v1.0 -m 'version 1.0'
git push origin --tags
 
#pull to a repo not in current directory
git --git-dir=/path/to/repo/.git pull
 
#like svn revert
git reset --hard ;git pull
 
#like svn revert but restores current changes
git stash;git pull;git stash pop
 
#commit/push with add
git commit -a -m 'message';git push

#ignore file mode changes.
git config core.filemode false

#Delete untracked files 
git clean -f
#If you want to also remove directories, run
git clean -f -d

#Pushin local branch to remote
git push origin <experimental_branch_name>
