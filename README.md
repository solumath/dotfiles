# .dotfiles

My personal dotfiles. For new machines to have my environment set up fast and hassle free.
Works by creating symlinks and placing them in $HOME.

## Prerequisites

You need to have the following installed:

- `git`
- `curl`
- `zsh`
- `oh-my-zsh`

```bash
sudo apt install git zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Installation

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/solumath/.dotfiles/main/install.sh)"
```

## Updating

### Pull changes

```bash
config_update
```

or manually

```bash
git pull
```

### Commit changes

```bash
git add .
git commit -m "Update dotfiles"
git push
```
