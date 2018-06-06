# Ubuntu Guide

### Ubuntu dist updates
To update Ubuntu to a new major version, run:
```sh
sudo apt update && sudo apt dist-upgrade
```
Then:
```sh
do-release-upgrade
```
Once completed, re-enable 3rd part repos using this command:
```sh
for f in /etc/apt/sources.list.d/*.list; do sudo sed -i 's/**OLDNAME**/**NEWNAME**/g' $f; sudo sed -i 's/^# \(.*disabled on upgrade to.*\)/\1/g' $f;done
```

### Ubuntu core updates
To update core packages installed
```sh
sudo apt update
```
then
```sh
sudo apt upgrade
```

### Node.js (using NVM)
To find the latest version - [here](https://nodejs.org/en/)

To view installed versions
```sh
nvm ls
```

To view all versions available
```sh
nvm ls-remote
```

### NPM
To find the latest version - [here](https://docs.npmjs.com/troubleshooting/try-the-latest-stable-version-of-npm)

To view installed version
```sh
npm -v
```

To update to the latest version
```sh
sudo npm install npm@latest -g
```

### RSync command for local editing and pushing to dev server

```sh
rsync -ruv --delete --exclude=*.bin/* /path/from/ /path/to/
```

### GULP tasks using NPM
To run gulp tasks using NPM
```sh
npm run *gulp task name*
```
e.g.
```sh
npm run build-dev
```

### Vagrant WordPress defaults
Database Server: `localhost`

Database Name: `wordpress`

Database Username: `wordpress`

Database Password: `wordpress`

PhpMyAdmin URL: `http://project.local/phpmyadmin`

### Homestead Resources
[Quickstart Guide](https://scotch.io/tutorials/getting-started-with-laravel-homestead)

###### Bug in Homestead 7
Getting Command: laravel not installed

```sh
vagrant ssh
```

```sh
composer global require "laravel/installer"
```

```sh
echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.bashrc
```

```sh
exit
```

```sh
vagrant ssh
```

laravel new will now work
