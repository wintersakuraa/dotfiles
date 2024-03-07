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
source ~/.config/zsh/plugins/catppuccin_frappe-zsh-syntax-highlighting.zsh

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
