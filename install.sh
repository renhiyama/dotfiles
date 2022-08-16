# Init
echo "Running Update and Installing Required Stuff..."
sudo apt update
sudo apt upgrade -y
sudo apt install build-essential neovim vim zsh curl wget tree -y

echo "Installing Oh My Zsh..."

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing Headline Font..."

cd $HOME/.oh-my-zsh/themes
wget https://raw.githubusercontent.com/moarram/headline/main/headline.zsh-theme

echo "Changing .zshrc"
rm $HOME/.zshrc
wget https://raw.githubusercontent.com/renhiyama/dotfiles/main/.zshrc

echo "Installing GWSL Apps. Press N to not install them when asked."
sudo apt install nautilus gedit gnome-system-monitor
echo "Try This Theme Btw (Windows 11): https://www.gnome-look.org/p/1591292"

echo "Setting Up Nodejs"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 18

echo "Setting Up Deno"
curl -fsSL https://deno.land/install.sh | sh

echo "Setting Up Rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Setting Up Bun"
curl https://bun.sh/install | bash

echo "Setting Up NixOS"
sh <(curl -L https://nixos.org/nix/install) --no-daemon

echo "Setting Up Epik Commands!"
cp .extras $HOME/.extras
cd $HOME/.extras
chmod a+x curltime
chmod a+x fucktheprocessusingport