# Dotfiles

This repository contains my dotfiles. My current
operating system is PopOS 22.04.

## How to create a new dotfiles repository

Run the following command:

`git init --bare $HOME/dotfiles`

This will create a new repository called `dotfiles`
in your home DIR, however this will be a 'bare'
repository.

Once created, add the following alias to Fish/Bash:

`alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'`

We will use this alias when commiting any files
we want to include into our dotfiles repository.

Now, we set git to show no untracked files by default:

`dotfiles config --local status.showUntrackedFiles no`

Finally, we can add and commit files:

`dotfiles add .bashrc && dotfiles commit -m "add .bashrc" && dotfiles push`

## Installation of existing dotfiles onto a new PC

First, add the above alias like before. Once this
is done, we need to ignore the dotfiles folder we'll create:

`echo "dotfiles" > .gitignore`

And then clone down this repository:

`git clone --bare <git-repo-url> $HOME/dotfiles`

You can then checkout all of your previous
dotfiles (remove the `-f` flag to see if you'll
override any files):

`dotfiles checkout -f`

Finally, reset git to not show untracked files:

`dotfiles config --local status.showUntrackedFiles no`