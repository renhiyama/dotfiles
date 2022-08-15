echo "Setting Up NeoVim"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir ~/.config/nvim
cd .config/nvim
wget https://raw.githubusercontent.com/renhiyama/dotfiles/main/init.vim
echo "Try These Out:"
echo "--- Just Some Notes ---"
echo " :PlugInstall"
echo " :CocInstall coc-pyright"
echo " :CocInstall coc-tsserver"
echo " :CocInstall coc-json"
echo " :CocInstall coc-html"
echo " :CocInstall coc-css"
echo " :CocInstall coc-clangd"
echo "But Run `npm i` inside $HOME/.local/share/nvim/plugged/coc.nvim after running :PlugInstall in nvim"