# 安装 zsh
```bash
sudo apt-get install zsh curl wget git -y
```

# 修改 zsh为系统默认 shell
```bash
chsh -s /bin/zsh
```

# 安装 oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

# 修改配置文件
```bash
rm ~/.zshrc ~/.p10k.zsh
wget -P ~ https://raw.githubusercontent.com/lbdot/oh-my-zsh/main/.zshrc
wget -P ~ https://raw.githubusercontent.com/lbdot/oh-my-zsh/main/.p10k.zsh
```

# 重新加载配置
```bash
source ~/.zshrc
```
