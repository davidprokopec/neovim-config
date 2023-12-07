# 2023 neovim config

## Requirements
* [neovim](https://github.com/neovim/neovim) >=0.9.3

## Recommended
* [ripgrep](https://github.com/BurntSushi/ripgrep) - for respecting .gitignore files and not showing them in project/fuzzy-search
* [tmux](https://github.com/tmux/tmux) - better terminal window management -- [my config](https://github.com/davidprokopec/tmux-config)


## How to install
Clone the repo to ~/.config/nvim
```
git clone https://github.com/davidprokopec/neovim-config.git ~/.config/nvim
```
Open neovim, let everything install and then reopen

Install additional LSPs using `:Mason`

Change required LSPs in user/lsp/init `ensure_installed`
