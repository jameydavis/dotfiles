# dotfiles 🔧

My personal dotfiles configuration for macOS. Keeping my development environment cozy and warm! ☕

## What's Included

- **vimrc** - Modern Vim configuration with vim-plug and 25+ plugins
- **zshrc** - Zsh configuration with oh-my-zsh integration
- **irbrc** - Enhanced IRB (Ruby REPL) configuration
- **install.sh** - Automated setup script

## Quick Start

```bash
# Clone the repository
git clone https://github.com/jameydavis/dotfiles.git ~/dotfiles

# Run the install script
cd ~/dotfiles
./install.sh

# Install vim plugins
vim +PlugInstall +qall

# Reload your shell
source ~/.zshrc
```

## Features

### Vim Configuration

**Plugin Manager:** vim-plug (modern, fast, parallel installation)

**Theme:** Gruvbox with matching airline statusbar

**Key Plugins:**
- **tpope essentials** - fugitive, surround, commentary, rails, and more
- **fzf** - Blazing fast fuzzy finder for files and buffers
- **ALE** - Asynchronous linting for JavaScript, Python, Ruby
- **NERDTree** - File explorer sidebar
- **vim-polyglot** - 600+ language syntax support
- **GitGutter** - Git diff indicators in the gutter
- **vim-airline** - Beautiful statusline with gruvbox theme

**Custom Keybindings:**
- Leader key: `,`
- `jj` / `kk` - Exit insert mode (no more ESC stretching!)
- `,f` - Find files (FZF)
- `,b` - List buffers (FZF)
- `,g` - Search with Ripgrep (FZF)
- `,r` - Toggle NERDTree

### Zsh Configuration

- oh-my-zsh integration
- Vi keybindings
- Git, brew, and colorize plugins
- Custom aliases and functions

### IRB Configuration

- Pretty print support
- Tab completion
- Colored output (via wirble)
- Command history persistence

## Manual Installation

If you prefer to set things up manually:

```bash
# Symlink individual files
ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/irbrc ~/.irbrc

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install vim plugins
vim +PlugInstall +qall
```

## Requirements

- macOS (or Linux with minor adjustments)
- Vim 8.0+
- Zsh
- Git
- [Optional] Powerline fonts for best airline experience
- [Optional] Ripgrep for FZF file content searching

## Installation Notes

- The install script automatically backs up existing dotfiles to `~/.vimrc.backup`, etc.
- Existing symlinks are safely replaced
- vim-plug is installed automatically if not present

## Updating

```bash
cd ~/dotfiles
git pull origin master
./install.sh

# Update vim plugins
vim +PlugUpdate +qall
```

## License

Feel free to use and modify as you wish!
