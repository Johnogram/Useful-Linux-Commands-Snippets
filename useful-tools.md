# Useful tools for fresh install

- [VSCode](https://code.visualstudio.com)
- [VTop](https://github.com/MrRio/vtop)
- [TLDR](https://tldr.sh/)
- [OhMyZSH](https://ohmyz.sh/)
- [Tmux](https://github.com/tmux/tmux)
- [Tmux TPM](https://github.com/tmux-plugins/tpm)
- [Vim Plug](https://github.com/junegunn/vim-plug)
- [Vim CoC](https://github.com/neoclide/coc.nvim)

### Standard Developer Tools
```sh
sudo apt install build-essential git curl
```

#### Useful packages
```sh
sudo apt install autoconf automake pkg-config
```

### Gnome Tweak Tools
```sh
sudo apt install gnome-tweak-tool

# Create Theme and Icon directory
mkdir ~/.icons ~/.themes
```

### Composer
```sh
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
```

### NVM
```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
```

### ZSH
```sh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Tmux
```sh
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
sudo apt install libevent-dev
sudo apt install ncurses-dev
./configure && make
```

### Vim
```sh
sudo apt install vim
```

### PHP
```sh
TODO
```

### JRE
```sh
# install jdk
sudo apt install openjdk-8-jdk
```

### Databases
```sh
# install nosql database
sudo apt install mongodb-server
# install sqlite3 for smaller db
sudo apt install libsqlite3-dev sqlite3
# mysql community version installation
sudo apt install mysql-server libmysqlclient-dev
```

### Ruby
```sh
# install pre requisites
sudo apt install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

# clone rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/rbenv/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

# add configuration to bashrc
echo "export PATH=$PATH:$HOME/.rbenv/bin:$HOME/.rbenv/shims" >> ~/.bashrc
echo "eval $(rbenv init -)" >> ~/.bashrc
echo "export PATH=$HOME/.rbenv/plugins/ruby-build/bin:$PATH" >> ~/.bashrc
# install and set specific ruby version
rbenv install 2.3.0
rbenv global 2.3.0
# install some gems
gem install bundler jekyll mysql2 rails jekyll-pagedown
```
