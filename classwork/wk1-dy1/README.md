# Git

* Initialize `git` in a project
  * `$ git init`
* Create a GitHub repository
  * `$ git create`
* Stage changes
  * Stage all changed files
    * `$ git add -A`
  * Stage only some changed files
    * `$ git add test.rb my_file.rb another.rb`
* Add a commit message
  * `$ git commit -m "Changed this to this and fixed bugs"`
* Pull from a branch
  * `$ git pull origin branchname`
* Push to a branch
  * `$ git push origin branchname`
* Check out a new branch
  * `$ git checkout -b new-branch`
* View all branches + determine current branch
  * `$ git branch`
* Switch branches
  * `$ git checkout other-branch`
* View log history of commits
  * `$ git log`
  * `$ git reflog`
* Creating an upstream remote
  * `$ git remote add upstream git@github.com/blah:bleh`
* Remove a remote
  * `$ git remote rm upstream`
* Fetch from a remote
  * `$ git fetch upstream`
* Rebase from an upstream remote
  * `$ git rebase upstream/master`
* Rebase from master in to feature branch
  * `$ git rebase origin/master`
