# FZF Configuration

Custom FZF (fuzzy finder) configuration for bash with enhanced features and key bindings.

## Features

- **Ctrl+R**: Search command history with preview and clipboard support
- **Ctrl+T**: Fuzzy file search with syntax-highlighted previews (using bat)
- **Alt+C**: Directory navigation with tree preview
- Clean reverse layout with borders

## Requirements

- [fzf](https://github.com/junegunn/fzf) - Fuzzy finder
- [bat](https://github.com/sharkdp/bat) - For syntax-highlighted file previews (optional)
- [tree](http://mama.indstate.edu/users/ice/tree/) - For directory previews (optional)
- xclip - For clipboard support (optional)

## Installation

### Fedora/RHEL
```bash
sudo dnf install fzf bat tree xclip
```

### Ubuntu/Debian
```bash
sudo apt install fzf bat tree xclip
```

### Manual Setup

1. Add to your `~/.bashrc`:
```bash
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source /path/to/fzf-config.bash
```

2. Reload your shell:
```bash
source ~/.bashrc
```

## Key Bindings

| Key Binding | Action |
|-------------|--------|
| `Ctrl+R` | Search command history |
| `Ctrl+T` | Search and insert file path |
| `Alt+C` | Change directory |
| `Ctrl+/` | Toggle preview window (in Ctrl+R and Ctrl+T) |
| `Ctrl+Y` | Copy selected command to clipboard (in Ctrl+R) |

## Usage Examples

```bash
# Search and edit a file
vim $(fzf)

# Kill a process interactively
ps aux | fzf | awk '{print $2}' | xargs kill

# Checkout a git branch
git checkout $(git branch | fzf)

# Find and navigate to a directory
cd $(find . -type d | fzf)
```

## Customization

Edit `fzf-config.bash` to customize:
- `FZF_DEFAULT_OPTS`: General appearance settings
- `FZF_CTRL_R_OPTS`: History search behavior
- `FZF_CTRL_T_OPTS`: File search behavior
- `FZF_ALT_C_OPTS`: Directory navigation behavior

## License

MIT
