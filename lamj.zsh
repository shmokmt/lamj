#!/usr/bin/env zsh

lamj() {
    local git_root=$(git rev-parse --show-toplevel 2>/dev/null)

    if [[ -z "$git_root" ]]; then
        echo "Error: Not in a git repository" >&2
        return 1
    fi

    local selected_dir=$(
        cd "$git_root"
        rg --files --hidden --glob '**/.lambdaignore' . 2>/dev/null | \
            sed 's|/\.lambdaignore||' | \
            sort -u | \
            sed 's|^\./||' | \
            fzf --prompt="Select lambroll directory: " --height=40% --reverse
    )

    if [[ -n "$selected_dir" ]]; then
        cd "$git_root/$selected_dir"
    else
        echo "No directory selected"
        return 1
    fi
}
