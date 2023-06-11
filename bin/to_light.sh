#! /bin/zsh

echo "Auto theme script for cli, switching to light"
test -f ~/.zshrc.local && sed -i 's/BAT_THEME=.*/BAT_THEME="OneHalfLight"/' ~/.zshrc.local
test -f ~/.zshrc.local && sed -i 's/LS_COLORS=.*/LS_COLORS="$(vivid generate gruvbox-light)"/' ~/.zshrc.local
test -f ~/.zshrc.local && source ~/.zshrc.local

test -f ~/.config/lsd/config.yaml && sed -i 's/theme:.*/theme: solarized-light/' ~/.config/lsd/config.yaml
