dotfiles
========

My common *nix dotfiles

I often start from [here](https://github.com/pivotal-sprout/sprout-wrap), which sets up most of the tools I use. These files are more personal customizations, rather than full bootstraps.

Primarily, this repo holds my Bash, Vim, and Python settings. Eventually, it will contain everything I can customize and source control.

## Installation Notes:

Link all of the dotfiles into your home directory. Do this after every pull. For example:
```bash
ln -s ~/workspace/dotfiles/.* ~/.
```

Ensure ~/.bash_profile is linked to the repo, especially, if you've "sprout wrapped" your environment. Fork & merge if necessary.

To get Python's CLI readline tab autocompletion working in Mavericks, you might need to do this:
```bash
brew install readline python
```
