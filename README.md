# Dot Files configuration

```sh
git clone https://github.com/vautheman/dotfiles.git
```

## Installation de ZSH

```sh
sudo apt install zsh
sudo apt install exe
zsh
```

## Installation de PowerLevel10K

Veiller à utiliser une police qui prends en charge les icons pour PowerLevel10K
**[FiraCode](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/FiraCode.zip)


```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```

Ajouter les alias pour les icons de dossier dans le fichier `.zshrc`

```sh
alias ls="exa --icons --group-directories-first"
alias ll="exa --icons --group-directories-first -l"
```

Mettre à jour zsh

```sh
source .zshrc
```

Reconfigurer zsh

```sh
p10k configure
```


## Installation de TMUX

```sh
sudo apt install tmux
```

Installation de plugin tmux

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```


