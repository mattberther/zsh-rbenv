ZSH_RBENV_DIR=${0:a:h}

[[ -z "$RBENV_HOME" ]] && export RBENV_HOME="$HOME/.rbenv"

_zsh_rbenv_install() {
  echo "Installing rbenv..."
  git clone https://github.com/rbenv/rbenv.git "$RBENV_HOME"
  git clone https://github.com/rbenv/ruby-build.git "${RBENV_HOME}/plugins/ruby-build"
}

_zsh_rbenv_load() {
  eval "$(rbenv init - zsh)"
}

_zsh_rbenv_upgrade() {
 cd "$RBENV_HOME" 
 git pull
 cd "${RBENV_HOME}/plugins/ruby-build"
 git pull
}

_zsh_rbenv_rename_function() {
  test -n "$(declare -f $1)" || return
  eval "${_/$1/$2}"
  unset -f $1

 # Rename main rbenv function
  _zsh_rbenv_rename_function rbenv _zsh_rbenv_rbenv

 # Wrap rbenv in our own function
  rbenv() {
    case $1 in
      'upgrade')
       _zsh_rbenv_upgrade
        ;;
      *)
        _zsh_rbenv_rbenv "$@"
        ;;
    esac
  }
}

# export path
export PATH="$RBENV_HOME/bin:$PATH"

# Install rbenv if it isn't already installed
[[ ! -f "$RBENV_HOME/libexec/rbenv" ]] && _zsh_rbenv_install

# If rbenv is installed
if [[ -f "$RBENV_HOME/libexec/rbenv"  ]]; then
  # Load it
  _zsh_rbenv_load
fi
