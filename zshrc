# Path to your oh-my-zsh installation.
export ZSH=/Users/myair/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="avit"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git jump ruby z last-working-dir wd)

# User configuration

export PATH="/Users/myair/.rbenv/shims:/usr/local/bin:/usr/local/bin/git:/usr/bin:/bin:/usr/sbin:/sbin:/Users/myair/.rvm/bin:/usr/local/bin/"
#export PATH="/Users/myair/Downloads/infer-osx-v0.4.0/infer/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

#GO
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/Developer/golang
export GOBIN=$HOME/Developer/golang/bin
export PATH=$PATH:$GOPATH/bin

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
#application alias
  alias vim='/usr/local/bin/vim'
  alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
#config alias
  alias zshrc="vim ~/.zshrc"
  alias vimrc="vim ~/.vimrc"
  alias ohmyzsh="open ~/.oh-my-zsh"
  alias xvimrc="vim ~/.xvimrc"

  alias be="bundle exec"

  alias myplayground="open ~/Developer/MyPlayground.playground"
  alias screenshots="open /Users/myair/Dropbox/Screenshots"
#fentury alias
  alias rails_mobile_test="RAILS_ENV=mobile_test DATABASE=ios_test rails s -p8082"
  alias test_console="DEVICE_TARGET='iPhone 6s (9.2)' rake console"
  alias feature_test="bundle exec cucumber"
  alias gps="git pull salt master"
  alias gpf="git pull fentury master"

  alias afind="ack -il"
  alias fproc="ps aux| grep"
  alias kill_all="pkill -9 -f"
#ssh alias
  alias mount_pi="sshfs vlad@188.237.77.85: Developer/rasberryPi/"
  alias ssh_pi="ssh vlad@188.237.88.85"
  alias ssh_jenkins="ssh jenkins@192.168.20.72"
#Web Bookmarks
  alias mgrs="open https://git.saltedge.com/fentury/ios-fentury/merge_requests"
  alias builds="open -a safari https://git.saltedge.com/fentury/ios-fentury/builds"
  alias issues="open https://git.saltedge.com/fentury/ios-fentury/issues\?assignee_id=19"
  alias v1go="open https://git.saltedge.com/fentury/ios-fentury"
  alias v2go="open https://git.saltedge.com/fentury/ios-fentury-v2"
#fastline alias
  #alias fastlane="/Users/myair/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/fastlane-1.18.0/bin/fastlane"
  #alias sigh="~/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/sigh-0.10.3/bin/sigh"
  #alias frameit=" ~/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/frameit-2.1.0/bin/frameit"
  #alias pem="~/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/pem-0.7.1/bin/pem"
  
#Syntax Highlighting enable
  source /Users/myair/Developer/Helpful\ Stuff/zsh-syntax-highlighting-master/zsh-syntax-highlighting.plugin.zsh
#  History
# Keep history in this file
  export HISTFILE=~/.zsh_history
# Max history command size
  export HISTSIZE=10000
  export SAVEHIST=$HISTSIZE
# enable histroy
  setopt APPEND_HISTORY
# remove repeated,empty, and whitespace commands
  setopt HIST_IGNORE_ALL_DUPS
  setopt HIST_IGNORE_SPACE
  setopt HIST_REDUCE_BLANKS

# Unarchive file
# example: extract file
  extract () {
   if [ -f $1 ] ; then
   case $1 in
   *.tar.bz2)   tar xjf $1        ;;
   *.tar.gz)    tar xzf $1     ;;
   *.bz2)       bunzip2 $1       ;;
   *.rar)       unrar x $1     ;;
   *.gz)        gunzip $1     ;;
   *.tar)       tar xf $1        ;;
   *.tbz2)      tar xjf $1      ;;
   *.tbz)       tar -xjvf $1    ;;
   *.tgz)       tar xzf $1       ;;
   *.zip)       unzip $1     ;;
   *.Z)         uncompress $1  ;;
   *.7z)        7z x $1    ;;
   *)           echo "I don't know how to extract '$1'..." ;;
   esac
   else
   echo "'$1' is not a valid file"
   fi
  }

# Create archive
# example: pk tar file
pk () {
 if [ $1 ] ; then
 case $1 in
 tbz)       tar cjvf $2.tar.bz2 $2      ;;
 tgz)       tar czvf $2.tar.gz  $2       ;;
 tar)      tar cpvf $2.tar  $2       ;;
 bz2)    bzip $2 ;;
 gz)        gzip -c -9 -n $2 > $2.gz ;;
 zip)       zip -r $2.zip $2   ;;
 7z)        7z a $2.7z $2    ;;
 *)         echo "'$1' cannot be packed via pk()" ;;
 esac
 else
 echo "'$1' is not a valid file"
 fi

}
