# starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# aliases
source ~/.config/zsh/aliases.zsh

# plugins
source ~/.config/zsh/plugins/z.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions.zsh

# pnpm
export PNPM_HOME="/Users/wintersakura/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# syntax highlighting
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=243'

# zed
export EDITOR="zed --wait"

# fnm
eval "$(fnm env --use-on-cd)"

# bun completions
[ -s "/Users/wintersakura/.bun/_bun" ] && source "/Users/wintersakura/.bun/_bun"

# deno completions
fpath=(~/.config/zsh $fpath)
autoload -Uz compinit
compinit -u

# ngrok completions
if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi

# fzf completions
eval "$(fzf --zsh)"

# fnm completions
eval "$(fnm completions --shell zsh)"

# use fd instead of fzf
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

# bat (better cat)
export BAT_THEME=ansi
