#!/bin/sh

# 安装 zsh
sudo apt-get install zsh curl wget git -y

# 修改 zsh为系统默认 shell
chsh -s /bin/zsh

# 安装 oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 安装 powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# 安装 zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 安装 zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# 修改配置文件
rm ~/.zshrc ~/.p10k.zsh
wget -P ~ https://raw.githubusercontent.com/lilungpo/oh-my-zsh/main/.zshrc
wget -P ~ https://raw.githubusercontent.com/lilungpo/oh-my-zsh/main/.p10k.zsh

# 重新加载配置
source ~/.zshrc
