filetype off
call pathogen#runtime_append_all_bundles()

filetype plugin indent on
syntax enable

set background=light
colorscheme Tomorrow
set         gfn=Mensch:h12

" Enable mouse in terminal Vim
set mouse=a
set ttymouse=xterm2

" Mapleader
let mapleader=","

" Long datestamp
iab YDATE <C-R>=strftime("%Y-%b-%d %X")<CR>

" Indentation
set shiftwidth=2
set autoindent
set tabstop=2
set expandtab

" Line macros
iab CHR /* ----------------------------------------------------------------- */
iab CH2 ////////////////////////////////////////
iab RHR #=====================================================================#
iab RH2 #=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~#

" Reset backspace for Mac OS compatability
set backspace=indent,eol,start

autocmd BufNewFile,BufRead */source/**/*.haml,*/source/**/*.markdown syntax match Comment /\%^---\_.\{-}---$/

" Miscellaneous
set nowrap
set number
set nocompatible
set shellslash
set grepprg=grep\ -nH\ $*

" Allow Vim to manage multiple buffers effectively.
set hidden

" Long history
set history=1000

" Sophisticated matchers
runtime macros/matchit.vim

" Show all options in <TAB> completion
set wildmenu

" Smartcase searching
set ignorecase
set smartcase

" Give scrolling some context
set scrolloff=3

" Isolate temporary files in a single directory
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Show ruler at bottom
set ruler

" Shhhhhhhh
set visualbell

" remove toolbar
if has("gui_running")
    set guioptions=egmrt
endif

" Replace grep with ack
set grepprg=ack
set grepformat=%f:%l:%m

" Highlight current line
set cursorline

" Error-hightlight any characters past the 79 mark.
"match ErrorMsg /\%>79v.\+/ 

" Fuzzy Finder
let g:fuzzy_ignore = "*.log"
let g:fuzzy_matching_limit = 70

if has("autocmd")
  " Enable filetype detection
  filetype plugin indent on
  " Restore cursor position
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif
if &t_Co > 2 || has("gui_running")
  " Enable syntax highlighting
  syntax on
endif

" Alternate current buffer.
nmap ,, :b #

" Show all buffers.
nmap ,l :ls

cabbr ack grep

" Mail should wrap.
au FileType mail set tw=78

" Load Prolog when it's a prolog file
au FileType prolog source ~/.vim/syntax/prolog.vim

" Allow quick setting of wrap
command! Wrap set tw=78

func! WordProcessorMode() 
  setlocal formatoptions=1 
  setlocal noexpandtab 
  map j gj 
  map k gk
  setlocal spell spelllang=en_us  
  set list
  set listchars=tab:\|\ 
  "set thesaurus+=/Users/sbrown/.vim/thesaurus/mthesaur.txt
  set complete+=s
  "set formatprg=par
  set tw=78
  set formatoptions=tl
  setlocal wrap 
  setlocal linebreak 
endfu 
com! WP call WordProcessorMode()

" ActionScript 3 Highlighting
autocmd BufRead *.as set filetype=actionscript
" Treetop syntax highlighting
au BufRead,BufNewFile *.treetop set filetype=treetop

" FuzzyFinder
" Stroke below interferes with indentation shorthands.
" nmap < :FuzzyFinderFile

nmap  :FufTag

" Make pasting in OSX not lame
nmap pb :r !pbpaste

set tags+=ftags

" .md files should be read as Markdown, not Modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

set listchars=tab:»·,trail:·
set list

set runtimepath^=~/.vim/bundle/ag
