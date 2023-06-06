# DOTFILES

> In Unix-like operating systems, any file or folder that starts with a dot character (for example, /home/user/.config), commonly called a dot file or dotfile, is to be treated as hidden – that is, the ls command does not display them unless the `-a` or `-A` flags (ls -a or ls -A) are used. [[wikipedia](https://en.wikipedia.org/wiki/Hidden_file_and_hidden_directory)]

## Adding Files

By default, all files and folders are ignored by git. To add file(s) use:

```bash
git add -f <path/to/file>
```

Once added, the file(s) will be tracked and you no longer need to use the `-f` flag for subsequent commits.

## Installation

```bash
# Navigate to your home directory
cd ~

## Clone using --no-checkout (we will checkout in the last step)
git clone --no-checkout git@github.com:aaronmbos/dotfiles.git

# Navigate to the dotfiles directory
cd ~/dotfiles

# Set the working tree to your home directory
git config core.worktree "../../"

# Checkout the files overwriting any existing files
git reset --hard origin/main
```

### Inspiration

This dotfile configuration is based on this [gist](https://gist.github.com/meleu/053275b6842646b95491bf1af4a6ca0e).
