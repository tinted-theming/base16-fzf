# Base16 caroline
# Scheme author: ed (https://codeberg.org/ed)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#1c1213'
set -l color01 '#3a2425'
set -l color02 '#563837'
set -l color03 '#6d4745'
set -l color04 '#8b5d57'
set -l color05 '#a87569'
set -l color06 '#c58d7b'
set -l color07 '#e3a68c'
set -l color08 '#c24f57'
set -l color09 '#a63650'
set -l color0A '#f28171'
set -l color0B '#806c61'
set -l color0C '#6b6566'
set -l color0D '#684c59'
set -l color0E '#a63650'
set -l color0F '#893f45'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D"\
" --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C"\
" --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D"