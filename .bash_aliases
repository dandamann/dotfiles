alias claudemux='tmux new-session -A -s claude'

# Start interactive shells in the workspace instead of $HOME. Claude Code never saves its trust prompt
# for the home directory, but does save it per project folder (in the shared ~/.claude volume).
if [ "$PWD" = "$HOME" ] && [ -d "${DEV_WORKSPACE:-}" ]; then cd "$DEV_WORKSPACE"; fi
