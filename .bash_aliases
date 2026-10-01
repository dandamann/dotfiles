# Claude in a dtach session: attach if it exists, otherwise create it. Unlike tmux, dtach passes
# output straight through, so the browser terminal's own scrollback (and touch scrolling) works.
# Closing the tab just drops the client; the session keeps running.
alias claudemux='dtach -A /tmp/claude.sock -r winch claude'
