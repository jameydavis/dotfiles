#!/usr/bin/env bash

set -e

echo "🚀 Installing dotfiles..."

# Get the directory where this script lives
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Backup existing files if they exist and aren't symlinks
backup_if_exists() {
    local file=$1
    if [ -e "$file" ] && [ ! -L "$file" ]; then
        echo "📦 Backing up existing $file to ${file}.backup"
        mv "$file" "${file}.backup"
    fi
}

# Create symlink
create_symlink() {
    local source=$1
    local target=$2
    
    backup_if_exists "$target"
    
    if [ -L "$target" ]; then
        echo "🔗 Removing old symlink: $target"
        rm "$target"
    fi
    
    echo "🔗 Linking $target -> $source"
    ln -sf "$source" "$target"
}

# Install vim-plug if not present
if [ ! -f "$HOME/.vim/autoload/plug.vim" ]; then
    echo "📥 Installing vim-plug..."
    curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Symlink dotfiles
echo ""
echo "Creating symlinks..."
create_symlink "$DOTFILES_DIR/vimrc" "$HOME/.vimrc"
create_symlink "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"
create_symlink "$DOTFILES_DIR/irbrc" "$HOME/.irbrc"
create_symlink "$DOTFILES_DIR/gitconfig" "$HOME/.gitconfig"
create_symlink "$DOTFILES_DIR/gitignore_global" "$HOME/.gitignore_global"
create_symlink "$DOTFILES_DIR/editorconfig" "$HOME/.editorconfig"

echo ""
echo "✅ Dotfiles installed!"
echo ""
echo "Next steps:"
echo "  1. Open vim and run :PlugInstall to install plugins"
echo "  2. Restart your terminal or run: source ~/.zshrc"
echo ""
