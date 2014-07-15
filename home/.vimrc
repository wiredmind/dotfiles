set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" load plugins here
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-haml'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/syntastic'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'edkolev/tmuxline.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'plasticboy/vim-markdown'
Plugin 'w0ng/vim-hybrid'
Plugin 'mitsuhiko/vim-python-combined'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'mitsuhiko/vim-json'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'junegunn/vim-easy-align'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1
  \ && exists("b:NERDTreeType")
  \ && b:NERDTreeType == "primary") | q | endif

" Sensible whitespace
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
set smartindent
set autoindent
set list
set listchars=tab:▸\ ,eol:¬,nbsp:⋅,trail:•
let &colorcolumn=join(range(81,999), ",")

" Hybrid line numbering
set relativenumber
set number

" Window splits
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

" Pretty print
syntax on
set cursorline
set showmatch
set smartcase
set term=screen-256color
let g:hybrid_use_Xresources = 1
colorscheme hybrid

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch

" Utilsnips
let g:UltiSnipsExpandTrigger="<Leader>u"
let g:UltiSnipsJumpForwardTrigger="<Leader>n"
let g:UltiSnipsJumpBackwardTrigger="<Leader>N"

" Vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1

" Keymaps
" Toggle PASTE mode
nmap <Leader>p :set paste<CR>o<esc>"+]p:set nopaste<CR>

" Re-indent all lines
nmap <Leader>i mmgg=G`m<CR>

" Turn off search highlight
nmap <Leader>h :nohlsearch<CR>

" Viminfo
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" CtrlP
nnoremap <Leader>t :CtrlPTag<CR>

" easytags
let g:easytags_updatetime_warn = 0 " Disable easytags updatetime warning

" EasyMotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)

" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)
