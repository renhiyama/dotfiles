/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
 echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/user/.zshrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install thefuck
echo "eval $(thefuck --alias)" >> /home/user/.zshrc