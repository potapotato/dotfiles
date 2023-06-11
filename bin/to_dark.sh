#! /bin/zsh

echo "Auto theme script for cli, switching to dark"
test -f ~/.zshrc.local && sed -i 's/BAT_THEME=.*/BAT_THEME="Monokai Extended Bright"/' ~/.zshrc.local
test -f ~/.zshrc.local && sed -i 's/LS_COLORS=.*/LS_COLORS="$(vivid generate jellybeans)"/' ~/.zshrc.local
test -f ~/.zshrc.local && source ~/.zshrc.local

test -f ~/.config/lsd/config.yaml && sed -i 's/theme:.*/theme: hardhacker/' ~/.config/lsd/config.yaml



