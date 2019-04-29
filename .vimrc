set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
" Bundle import FROM HERE ---------------------------------
call vundle#begin()

" Format reminder:
" Bundle 'githubUsername/repoName

" Let vundle manage itself
Bundle 'VundleVim/Vundle.vim'

" Colorscheme
Bundle 'morhetz/gruvbox'

" Fuzzy finder
Bundle 'ctrlpvim/ctrlp.vim'

" Comment ease-of-use plugin
Bundle 'tpope/vim-commentary'

" Proper JSON filetype detection, and support
Bundle 'leshill/vim-json'

" Indent support for Javascript
Bundle 'pangloss/vim-javascript'

" Indent support for HTML
Bundle 'indenthtml.vim'

" Markdown syntax support
Bundle 'tpope/vim-markdown'

" Coffee-script syntax support
Bundle 'kchmck/vim-coffee-script'

call vundle#end()
" Bundle import ENDS HERE ---------------------------------
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

" don't nag me when hiding buffers
set hidden " allow me to have buffers with unsaved changes.
set autoread " when a file has changed on disk, just load it. Don't ask.

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the `g` flag by default.

" allow the cursor to go anywhere in visual block mode.
set virtualedit+=block

" leader is a key that allows you to have your own "namespace" of keybindings.
" You'll see it a lot below as <leader>
let mapleader = ","

" So we don't have to press shift when we want to get into command mode.
nnoremap ; :
vnoremap ; :

" So we don't have to reach for escape to leave insert mode.
inoremap jf <esc>

" create new vsplit, and switch to it.
noremap <leader>v <C-w>v

" Use sane regex's when searching
nnoremap / /\v
vnoremap / /\v

" Clear match highlighting
noremap <leader><space> :noh<cr>:call clearmatches()<cr>

" Quick buffer switching - like cmd-tab'ing
nnoremap <leader><leader> <c-^>

" Visual line nav, not real line nav
" If you wrap lines, vim by default won't let you move down one line to the
" wrapped portion. This fixes that.
noremap j gj
noremap k gk

" Map the key for toggling comments with vim-commentary
nnoremap <leader>c <Plug>CommentaryLine

" Let ctrlp have up to 15 results.
let g:ctrlp_max_height = 15

" Status bar
set laststatus=2

" Show line numbers
set number

" Set status line display
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Adding our colourscheme
colorscheme gruvbox
set background=dark
