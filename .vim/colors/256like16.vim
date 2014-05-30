" Vim color file
" By Petr Baudis <pasky@ucw.cz>, based on vim74/syntax/syncolor.vim
"
" Use with colorsupport.vim http://www.vim.org/scripts/script.php?script_id=2682
" on xterm-256color terminal to make it look more like a 16-color terminal,
" with high contrast and fairly traditional colors.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "256like16"

if &background == "dark"
  hi Constant	term=underline cterm=NONE ctermfg=Magenta    ctermbg=NONE gui=NONE guifg=#ff80f0 guibg=NONE
  hi Special	term=bold      cterm=NONE ctermfg=LightRed   ctermbg=NONE gui=NONE guifg=#ff6060 guibg=NONE
  hi Statement	term=bold      cterm=NONE ctermfg=Yellow     ctermbg=NONE gui=NONE guifg=#ffff60 guibg=NONE
  hi PreProc	term=underline cterm=NONE ctermfg=LightBlue  ctermbg=NONE gui=NONE guifg=#8080ff guibg=NONE
  hi Type	term=underline cterm=NONE ctermfg=LightGreen ctermbg=NONE gui=NONE guifg=#60ff60 guibg=NONE
  hi SignColumn guibg=NONE
endif

" vim: sw=2
