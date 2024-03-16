# Scheme name: eris
# Scheme system: base16
# Scheme author: ed (https://codeberg.org/ed)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#0a0920'
set -l color01 '#13133a'
set -l color02 '#23255a'
set -l color03 '#333773'
set -l color04 '#4a5293'
set -l color05 '#606bac'
set -l color06 '#7986c5'
set -l color07 '#9aaae5'
set -l color08 '#f768a3'
set -l color09 '#f768a3'
set -l color0A '#faaea2'
set -l color0B '#faaea2'
set -l color0C '#258fc4'
set -l color0D '#258fc4'
set -l color0E '#f768a3'
set -l color0F '#f768a3'

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
