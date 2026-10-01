#!/usr/bin/env bash
# Entry point for `devcontainer up --dotfiles-repository`. Links only the named files into $HOME.
set -euo pipefail
here=$(cd "$(dirname "$0")" && pwd)
files=(.gitconfig .tmux.conf .bash_aliases)
for f in "${files[@]}"; do
  ln -sfn "$here/$f" "$HOME/$f"
done
