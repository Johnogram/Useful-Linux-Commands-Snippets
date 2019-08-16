# Useful tools for fresh install

- [VTop](https://github.com/MrRio/vtop)
- [TLDR](https://tldr.sh/)
- [OhMyZSH](https://ohmyz.sh/)
- [Tmux](https://github.com/tmux/tmux)
- [Tmux TPM](https://github.com/tmux-plugins/tpm)

### Standard Developer Tools
```sh
sudo apt-get install build-essential git
```

### Composer
```sh
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
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
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

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

### JRE
```sh
# install jdk
sudo apt install openjdk-8-jdk
```
