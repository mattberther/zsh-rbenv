# zsh-rbenv

> zsh plugin for installing, updating and loading `rbenv`  
> Inspired by [zsh-nvm](https://github.com/lukechilds/zsh-nvm)

## Usage

Once the plugin's installed rbenv will be available. You'll probably want to load this as one of your first plugins 
so ruby/gem is available for any other plugins that may require them.

zsh-rbenv also wraps nvm in some additional functionality.

### Upgrade
If you want to upgrade to the latest rbenv :

`$ rbenv upgrade`


## Installation

### Using [Antigen](https://github.com/zsh-users/antigen)

Bundle `zsh-rbenv` in your `.zshrc`

```shell
antigen bundle cswl/zsh-rbenv
```

### Using [zplug](https://github.com/b4b4r07/zplug)
Load `zsh-rbenv` as a plugin in your `.zshrc`

```shell
zplug "cswl/zsh-rbenv"

```
### Using [zgen](https://github.com/tarjoilija/zgen)

Include the load command in your `.zshrc`

```shell
zgen load cswl/zsh-rbenv
```

### As an [Oh My ZSH!](https://github.com/robbyrussell/oh-my-zsh) custom plugin

Clone `zsh-rbenv` into your custom plugins repo

```shell
git clone https://github.com/cswl/zsh-rbenv ~/.oh-my-zsh/custom/plugins/zsh-rbenv
```
Then load as a plugin in your `.zshrc`

```shell
plugins+=(zsh-rbenv)
```

Keep in mind that plugins need to be added before `oh-my-zsh.sh` is sourced.

### Manually
Clone this repository somewhere (`~/.zsh-rbenv` for example)

```shell
git clone https://github.com/cswl/zsh-rbenv.git ~/.zsh-rbenv
```
Then source it in your `.zshrc` (or `.bashrc`)

```shell
source ~/.zsh-rbenv/zsh-rbenv.plugin.zsh
```

### License

MIT © Cswl <cswl1337@gmail.com>