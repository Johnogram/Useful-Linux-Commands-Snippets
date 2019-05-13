# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/johnminns/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=agnoster
#ZSH_THEME=avit

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"
function precmd () {
  window_title="\033]0;${PWD##*/}\007"
  echo -ne "$window_title"
}

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  arcanist
  composer
  git-extras
  git-flow
  git-prompt
  gitignore
  grunt
  gulp
  node
  npm
  nvm
  zsh-navigation-tools
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
source ~/.rvm/scripts/rvm
export PATH="$PATH:$HOME/.rvm/bin"

# Gradle
export PATH="$PATH:$HOME/.gradle/gradle-5.4.1/bin"

# JRE
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
#export JAVA_HOME="/usr/lib/jvm/java-1.11.0-openjdk-amd64"

# Composer
export PATH="$PATH:$HOME/.composer/vendor/bin"

# Arcanist
export PATH="$PATH:$HOME/arcanist/arcanist/bin"

# Android Studio
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT="$HOME/Android/sdk"
export PATH="$PATH:$HOME/android-studio/bin"
 # avdmanager, sdkmanager
export PATH="$PATH:$ANDROID_SDK_ROOT/tools/bin"
# adb, logcat
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"
# emulator
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"

# PHPUnit/XDebug
export XDEBUG_CONFIG="idekey=VSCODE"

# Aliases
alias phpunit="./vendor/bin/phpunit --testdox"
alias phpunit_simple="./vendor/bin/phpunit"
alias eapi_run="php -S 10.10.0.213:1616 -t public"
alias epay_sync_push="rsync -ruv --delete --exclude '*.bin/*' /home/johnminns/Documents/code/epay_dev/ /media/shares/work/epay_dev/"
alias epay_sync_pull="rsync -ruv --delete --exclude '*.bin/*' /media/shares/work/epay_dev/ /home/johnminns/Documents/code/epay_dev/"
alias git_master_diff="git diff --name-status master"
alias phan="./vendor/bin/phan"
alias arc_land="arc land --onto master --keep-branch --squash"
alias arc_land_preview="arc land --onto master --keep-branch --squash --preview"
alias storybook="npm run-script storybook"
alias payroll_hub_sync_push="rsync -ruv --delete --exclude '*.bin/*' /home/johnminns/Documents/code/payroll-hub/ /media/shares/work/dev-web/payroll-hub/"
alias epay_docker_up="source /home/johnminns/Documents/scripts/EpayDocker.sh"
alias epay_docker_down="docker stop epaysafe-test-db; docker stop epaysafe-test-web"
