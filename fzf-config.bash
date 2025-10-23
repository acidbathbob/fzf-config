# ====================================
# FZF Configuration
# ====================================

# Source FZF key bindings (Ctrl+R for history, Ctrl+T for files, Alt+C for directories)
if [ -f /usr/share/fzf/shell/key-bindings.bash ]; then
    source /usr/share/fzf/shell/key-bindings.bash
fi

# FZF default options for better appearance
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --inline-info"

# FZF Ctrl+R history search options
export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window up:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | xclip -selection clipboard)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"

# FZF Ctrl+T file search options
export FZF_CTRL_T_OPTS="
  --preview '(bat --style=numbers --color=always {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'
  --bind 'ctrl-/:toggle-preview'"

# FZF Alt+C directory navigation options
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
