# Ubuntu Guide

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