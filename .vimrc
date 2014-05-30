"""" Core stuff

version 5.0

set nocompatible " has to be on the first line


set tabstop=4


set modeline
set modelines=3

set exrc

"let mapleader="~" " make sure this is done before any <Leader> stuff happens

filetype on
filetype plugin on
filetype indent on
set number
set nobackup
set viminfo='20,\"50

" don't forget to set 'export TERM=xterm-256color'
set background=dark
colorscheme blackboard

" Otherwise, contents of last visual will appear in X11 selection buffer - eek!
set clipboard=autoselectml


"""" Charset
set fencs=ucs-bom,utf-8,default,latin2


"""" Autocompletion

set wildchar=<Tab>
set wildmenu
set wildmode=longest:full,full

set history=999


"""" Searching

set ignorecase
set smartcase
set hlsearch
set incsearch
set magic

set showmatch
set mat=2

"""" Indentation

set shiftwidth=4

"set cindent
"set smartindent
set autoindent
set so=7

"""" Formatting

set formatoptions=cql

set list listchars=tab:\ \ ,trail:-

syntax enable

"""" Folding

set foldmethod=indent
set foldenable
set foldlevel=99


"""" Tags

set tags=./tags,tags,./TAGS,TAGS,tags,TAGS,../tags,../TAGS,../../tags,../../TAGS,../../../tags,../../../TAGS,../../../../tags,../../../../TAGS,../../../../../tags,../../../../../TAGS,../../../../../../tags,../../../../../../TAGS,../../../../../../../tags,../../../../../../../TAGS,../../../../../../../../tags,../../../../../../../../TAGS,../../../../../../../../../tags,../../../../../../../../../TAGS,../../../../../../../../../../tags,../../../../../../../../../../TAGS,../../../../../../../../../../../tags,../../../../../../../../../../../TAGS,../../../../../../../../../../../../tags,../../../../../../../../../../../../TAGS,/usr/include/tags,/usr/include/TAGS,/usr/local/include/tags,/usr/local/include/TAGS



"""" User mapping (misc)

" v) "`"'	visual content quoted
vnoremap "" <esc>:set paste<cr>`>a"<c-o>`<"<esc>:set nopaste<cr>`>2l
vnoremap "' <esc>:set paste<cr>`>a'<c-o>`<'<esc>:set nopaste<cr>
vnoremap "` <esc>:set paste<cr>`>a`<c-o>`<`<esc>:set nopaste<cr>

" v) "<>[](){}	visual content parenthesed
vnoremap "< <esc>:set paste<cr>`>a><c-o>`<<<esc>:set nopaste<cr>
vnoremap "> <esc>:set paste<cr>`>a><c-o>`<<<esc>:set nopaste<cr>`>2l
vnoremap "[ <esc>:set paste<cr>`>a]<c-o>`<[<esc>:set nopaste<cr>
vnoremap "] <esc>:set paste<cr>`>a]<c-o>`<[<esc>:set nopaste<cr>`>4l
vnoremap "( <esc>:set paste<cr>`>a)<c-o>`<(<esc>:set nopaste<cr>
vnoremap ") <esc>:set paste<cr>`>a)<c-o>`<(<esc>:set nopaste<cr>`>2l
vnoremap "{ <esc>:set paste<cr>`>a}<c-o>`<{<esc>:set nopaste<cr>
vnoremap "} <esc>:set paste<cr>`>a}<c-o>`<{<esc>:set nopaste<cr>`>2l

" n> m-h	hide highlight
noremap h :nohl<cr>


"" Buffer switching

map <A-1> :b1<CR>
map <A-2> :b2<CR>
map <A-3> :b3<CR>
map <A-4> :b4<CR>
map <A-5> :b5<CR>
map <A-6> :b6<CR>
map <A-7> :b7<CR>
map <A-8> :b8<CR>
map <A-9> :b9<CR>
map <A-0> :b10<CR>
map <C-Tab> :bn<CR>
map <S-C-Tab> :bp<CR>
"""" Per-filetype mapping

au BufEnter *vimrc set keywordprg=
au BufLeave *vimrc set keywordprg=man

au FileType perl set formatoptions=cql

au! BufNewFile,BufRead *.ino setlocal ft=arduino
au! BufNewFile,BufRead *.pde setlocal ft=arduino
au! BufNewFile,BufRead *.md setlocal ft=markdown


"""" Plugins

"" Increment

" c-A in visual mode works as gradual incrementation
vnoremap <c-a> :Inc<CR>


"" Calendar

let g:calendar_mark='right'
let g:calendar_navi='both'
let g:calendar_monday=1


"" EnhancedCommentify

let g:EnhCommentifyPretty = 'Yes'
let g:EnhCommentifyRespectIdent = 'Yes'
let g:EnhCommentifyUseAltKeys = 'Yes'


"" MiniBufExplorer
let g:miniBufExplSplitBelow=1


"" VimSpell

"let spell_language_list = "english,czech"
""highlight SpellErrors ctermbg=Red guibg=Red ctermfg=White guifg=White cterm=underline gui=underline term=reverse
"highlight link SpellErrors Error

"" TeX
let g:tex_flavor = "latex"

"" SQL
" This is something purely evil, hijacking C-C.
let g:omni_sql_no_default_maps = 1



"""" Sourcing standalone rcs

"so /home/pasky/.vimrc.shell



"""" UI

"" I/O
set mouse=
set bg=dark
"set bg=light
set bs=2

set ttimeout ttimeoutlen=10 " esc v insert modu ma okamzitou odezvu

"set statusline=%{VimBuddy()}

set ruler

"" Windows
set noequalalways

"" Buffers
set switchbuf=useopen

"" GUI
set guifont=Monospace\ 9
