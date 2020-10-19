# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
ZSH_DISABLE_COMPFIX="true"
# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
HIST_STAMPS="mm/dd/yyyy"


prompt_zsh_internet_signal(){
  local symbol="\uf7ba"
  local strength=`iwconfig wlp5s0 | grep -i "link quality" | grep -o "[0-9]*/[0-9]*"`

  echo -n "%F{white}\uE0B3 $symbol $strength"
}

#colorls
path+=(
    $(ruby -e 'puts File.join(Gem.user_dir, "bin")')
)
source $(dirname $(gem which colorls))/tab_complete.sh

prompt_codetalk() {
    local content='\uF17C c{}deTalk'
    $1_prompt_segment "$0" "$2" "black" "white" "$content" "#"
}
POWERLEVEL9K_DEBUG_ISSUE_315=true
gitpush() {
    git add .
    git commit -m "$*"
    git push
}
gitclone() {
  sudo git clone "$*"
}

alias gpush=gitpush
alias gcl=gitclone
alias swo=swo
HIST_STAMPS="dd/mm/yyyy"
DISABLE_UPDATE_PROMPT=true

plugins=(
adb
alias-finder
ansible
ant
apache2-macports
arcanist
archlinux
asdf
autopep8
aws
battery
bazel
bbedit
bgnotify
boot2docker
bower
branch
brew
bundler
cabal
cake
cakephp3
capistrano
cargo
catimg
celery
chruby
chucknorris
codeclimate
coffee
colored-man-pages
colorize
command-not-found
common-aliases
compleat
composer
copybuffer
copydir
copyfile
cp
cpanm
dash
debian
dircycle
direnv
dirhistory
dirpersist
django
dnf
dnote
docker-compose
docker-machine
docker
doctl
dotenv
dotnet
droplr
drush
eecms
emacs
ember-cli
emoji-clock
emoji
emotty
encode64
extract
fabric
fancy-ctrl-z
fasd
fastfile
fbterm
fd
firewalld
flutter
forklift
fossil
frontend-search
gas
gatsby
gb
gcloud
geeknote
gem
git-auto-fetch
git-escape-magic
git-extras
git-flow-avh
git-flow
git-hubflow
git-prompt
git
gitfast
github
gitignore
glassfish
globalias
gnu-utils
golang
gradle
grails
grunt
gulp
hanami
helm
heroku
history-substring-search
history
hitokoto
homestead
httpie
ionic
iterm2
jake-node
jenv
jfrog
jhbuild
jira
jruby
jsontools
jump
kate
keychain
kitchen
knife_ssh
knife
kops
kube-ps1
kubectl
laravel
laravel4
laravel5
last-working-dir
lein
lighthouse
lol
lxd
macports
man
marked2
mercurial
meteor
microk8s
minikube
mix-fast
mix
mosh
mvn
mysql-macports
n98-magerun
nanoc
ng
nmap
node
nomad
npm
npx
nvm
oc
osx
otp
pass
paver
pep8
percol
perl
perms
phing
pip
pipenv
pj
please
pod
postgres
pow
powder
powify
profiles
pyenv
pylint
python
rails
rake-fast
rake
rand-quote
rbenv
rbfu
react-native
rebar
redis-cli
repo
ripgrep
ros
rsync
ruby
rust
rustup
rvm
safe-paste
salt
sbt
scala
scd
screen
scw
sdk
sfdx
sfffe
shell-proxy
shrink-path
singlechar
spring
sprunge
ssh-agent
stack
sublime
sudo
supervisor
suse
svcat
svn-fast-info
svn
swiftpm
symfony
symfony2
systemadmin
systemd
taskwarrior
terminitor
terraform
textastic
textmate
thefuck
themes
thor
tig
timer
torrent
transfer
tugboat
ubuntu
ufw
urltools
vagrant-prompt
vagrant
vault
virtualenv
vscode
vundle
wakeonlan
wd
web-search
wp-cli
xcode
yarn
yii
yii2
yum
z
zeus
zsh-navigation-tools
zsh-autosuggestions
)

source $ZSH/.oh-my-zsh/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m $c select-quoted
  done
done


# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

alias lc='colorls -lA --sd'

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory


if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
neofetch
rig| toilet -f term -F border --gay
chuck_cow | lolcat
fortune | cowsay | lolcat
espeak "Ready"
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh