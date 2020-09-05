# my-zsh

#### (1) 安装zsh

```bash
# MacOS
brew install zsh

# Ubuntu
sudo apt-get install zsh -y

# CentOS
sudo yum install zsh -y
```

#### (2) 安装oh-my-zsh

```bash
# 使用curl
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 使用wget
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

#### (3) 下载`powerlevel10k` oh-my-zsh主题

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

#### (4) 下载`zsh-autosuggestions` oh-my-zsh插件

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

#### (5) 下载`https://github.com/zsh-users/zsh-syntax-highlighting` oh-my-zsh插件

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

#### (6) 配置

```bash
vim ~/.zshrc
```

内容:

```zsh
# 设置主题
ZSH_THEME="powerlevel10k/powerlevel10k"

# 设置插件
plugins=(
  git
  my
  sudo
  extract
  history
  zsh-autosuggestions
  zsh-syntax-highlighting
)  
```

```zsh
# 重启
source ~/.zshrc
```

#### (7) 个性化配置

* [my.zsh](./custom/my.zsh)
