# Setup

## Initial installations
1. `brew`
2. Arc Browser
3. Ghostty terminal
4. `nvim`
5. `starship`
6. `bat`
7. `fzf`
8. `--cask font-jetbrains-mono-nerd-font`

## Next steps
1. Create `.zshrc` file
2. Clone .config files
3. Setup zsh-syntax-highlighting
4. Install `tmux` and `tmp` package manager
5. Setup fnm
6. Install node
7. Run `autoload -Uz compinit` and `compinit`

## Other installations
1. Cursor
2. Raycast
3. Docker
4. DataGrip
5. Postman
6. Slack
7. Spotify
8. DropOver (App store)

## Dock autohide delay
Remove delay: `defaults write com.apple.dock autohide-delay -float 0; killall Dock`
Restore default: `defaults delete com.apple.dock autohide-delay; killall Dock`


## Setup nushell
1. Install `nushell`, `vivid`, `zoxide`, `carapace` via `brew`
2. Change nushell config dir:
   - `export NU_CONFIG_DIR=/Users/wintersakura/.config/nushell`
   - `export XDG_CONFIG_HOME=/Users/wintersakura/.config`
