# Scheme name: Precious Dark Fifteen
# Scheme system: base16
# Scheme author: 4lex4 &lt;4lex49@zoho.com&gt;
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#23262b'
set -l color01 '#303337'
set -l color02 '#3e4044'
set -l color03 '#898989'
set -l color04 '#abaaa8'
set -l color05 '#bab9b6'
set -l color06 '#bab9b6'
set -l color07 '#bab9b6'
set -l color08 '#ff8782'
set -l color09 '#e99857'
set -l color0A '#cfa546'
set -l color0B '#95b659'
set -l color0C '#42bda7'
set -l color0D '#66b0ef'
set -l color0E '#b799ff'
set -l color0F '#f382d8'

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