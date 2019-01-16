" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2017 Sep 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

"if has("vms")
"  set nobackup		" do not keep a backup file, use versions instead
"else
"  set backup		" keep a backup file (restore to previous version)
"  if has('persistent_undo')
"    set undofile	" keep an undo file (undo changes after closing)
"  endif
"endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  augroup END

else

  set autoindent		" always set autoindenting on

endif  "has("autocmd")

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

" Autocomplete quotes and brackets
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O

""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM GENERAL
""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable Vi compatibility
set nocompatible

" Set path for vim
set path+=**

" Highlights line cursor is on
set cursorline

" Redraw screen only when necessary
set lazyredraw

" Show command in bottom bar
set showcmd

" Turn on wildmenu
set wildmenu

" Highlight matching parenthesis
set showmatch

"""""""""""""""""""""""""""""""""""""""""""""""""""
" SYNTAX
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Indentation per filetype
filetype plugin indent on

" Use colorscheme
colorscheme cobalt
hi Normal ctermbg=NONE

" Set background to dark
set background=dark

"""""""""""""""""""""""""""""""""""""""""""""""""""
" TABS 
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Convert tabs to spaces
set expandtab

" Set tab equivalent to 4 spaces
set tabstop=4
set shiftwidth=4

" Hide files in background instead of closing them
set hidden

" Set undo limit to 1000
set history=1000

""""""""""""""""""""""""""""""""""""""""""""""""""""
" FOLDS
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable code folding
set foldenable

" Fold on indent
set foldmethod=manual

" Set starting fold level to 0
set foldlevelstart=0

""""""""""""""""""""""""""""""""""""""""""""""""""""
" LINE NUMBERS
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display line numbers
set number

" Display relative line numbers
set relativenumber

""""""""""""""""""""""""""""""""""""""""""""""""""""
" OMNICOMLETE
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

""""""""""""""""""""""""""""""""""""""""""""""""""""
" FILE TYPE SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""
" .tex file settings
au FileType tex setl tw=150

""""""""""""""""""""""""""""""""""""""""""""""""""""
" SNIPPETS
""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <space>html :-1r ~/.vim/skeletons/skeleton.html<CR>
nnoremap <space>c :-1r ~/.vim/skeletons/skeleton.c<CR>
nnoremap <space>java :-1r ~/.vim/skeletons/skeleton.java<CR>
nnoremap <space>py :-1r ~/.vim/skeletons/skeleton.py<CR>
