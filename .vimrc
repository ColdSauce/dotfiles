
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'junegunn/goyo.vim'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'fatih/vim-go'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'leafgarland/typescript-vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-expand-region'

Plugin 'john2x/flatui.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-commentary'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

Plugin 'lervag/vimtex'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
set laststatus=2
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
vnoremap <Tab> >><ESC>_
vnoremap <S-Tab> <<<ESC>_
inoremap <S-Tab> <<_


let g:syntastic_javascript_checkers = ['jslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_gcc_args = "-Wextra -Wall -Werror -pedantic"



let g:airline#extensions#tabline#enabled = 1
let g:airline_theme= "bubblegum"
let g:airline_powerline_fonts = 1

set t_Co=256
colorscheme jellybeans
function! g:ToggleBackground()
  if &background != 'dark'
      set background=dark
        else
            set background=light
            colorscheme hemisu
              endif
              endfunction
nnoremap <silent> <F3> :call g:ToggleBackground()<CR>

" tab and indent settings
set expandtab
set tabstop=2
set smarttab
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4

set t_Co=256

syntax enable
set background=dark

set autoread
set so=7
if has('mouse')
    set mouse=a
endif

set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
set mat=2
set foldcolumn=1

set nobackup
set nowb
set noswapfile

set lbr
set tw=500

set ai
set si
set wrap

map j gj
map k gk


set nu

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

" Space is the leader!
let mapleader = "\<Space>"

nnoremap <Leader>w :w<CR>

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

nmap <Leader><Leader> V

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" vp doesn't replace paste buffer
" this is the best thing that exists.
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
  endfunction
  function! s:Repl()
    let s:restore_reg = @"
      return "p@=RestoreRegister()\<cr>"
      endfunction
      vmap <silent> <expr> p <sid>Repl()


