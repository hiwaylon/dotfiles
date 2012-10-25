# The Prompt

# PROMPT="%{$fg[blue]%}%~%{$reset_color%}$ "

# The right-hand prompt

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Format for git_prompt_ahead()
ZSH_THEME_GIT_PROMPT_AHEAD="(%{$fg[red]%}!%{$reset_color%})"

#Customized git status, oh-my-zsh currently does not allow render dirty status before branch
git_custom_status() {
    local cb=$(current_branch)
    if [ -n "$cb" ]; then
        echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
    fi
}

PROMPT='%{$fg[yellow]%}%2~ $(git_custom_status)$(git_prompt_ahead)%{$reset_color%}$ '

