# dotfiles

Installed into dev containers by `devcontainer up --dotfiles-repository`, which clones this
repo and runs `install.sh`. The script links only the files listed in it into `$HOME`.

The repo is cloned before any credentials exist in the container, so it must stay public and
must not contain secrets.

To add a dotfile, put it here and add its name to `files=(...)` in `install.sh`.
