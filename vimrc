"******************************************************************************"
"**************************** Vundle Plugin ***********************************"
"******************************************************************************"

set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'majutsushi/tagbar'

Plugin 'scrooloose/nerdcommenter'

Plugin 'Valloric/YouCompleteMe'

Plugin 'bling/vim-airline'

Plugin 'Solarized'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"******************************************************************************"
"**************************** Vim Mappings ************************************"
"******************************************************************************"

" Enable file type detection on vim 
filetype on
filetype plugin on

" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab

" highlight search terms
set hlsearch     

" show search matches as you type
set incsearch     

" Set the <leader> key
let mapleader = ","

" Enable line numbering
set number

" Set the minimum width for the numbers
set numberwidth=1

" Set the color for the numbers
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Toggle line numbering (only in normal mode)
nnoremap <F12> :set invnumber<CR>

" Sequence of commands to make vim inserting a closing bracket
" Map { in insert mode to add a closing bracket
autocmd Filetype c :inoremap { {<CR><BS>}<Esc>ko
autocmd Filetype cpp :inoremap { {<CR><BS>}<Esc>ko
" Number of spaces that a <Tab> in the file counts for
set tabstop=4
" Number of spaces to use for each step of (auto)indent
set shiftwidth=4
" In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
set expandtab
" When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'. 
set smarttab
" Copy indent from current line when starting a new line
set autoindent
" Do smart autoindenting when starting a new line.
set smartindent

" Search for tags file in the current working direcotry
set tags=./tags;

" Set map for toggling paste mode (useful when pasting from the system
" clipboard)
set pastetoggle=<F11>

" Run ctags in the current directory
noremap <F4> :!ctags -R ./<CR>

" Map ( in insert mode to add a closing parenthesis
autocmd Filetype c :inoremap ( ()<Esc>i
autocmd Filetype cpp :inoremap ( ()<Esc>i

" Map Ctrl plus arrows to resize split
nnoremap <C-LEFT> <C-w><
nnoremap <C-RIGHT> <C-w>>
nnoremap <C-UP> <C-w>+
nnoremap <C-DOWN> <C-w>-

" Map for new tab and moving between tabs
nnoremap <C-t> :tabnew<Space>
nnoremap <C-p> :tabprevious<CR>
nnoremap <C-n> :tabnext<CR>

" Map for tag navigation
nnoremap l<C-]> :tselect<CR>
nnoremap n<C-]> :tnext<CR>
nnoremap p<C-]> :tprev<CR>

"******************************************************************************"
"**************************** YouCompleteMe Plugin ****************************"
"******************************************************************************"

" The YouCompleteMe plugin prerequest:
" 1) libclang 3.2+"
" 2) Development tools for CMake
" 3) Python dev header
" 4) Compile it:
" 	cd ~/.vim/bundle/YouCompleteMe
" 	./install.sh --clang-completer
" 5) Remember to provide a ycm_extra_conf.py file
" 6) Remember in order to see the suggestions you have to write first the
"    includes o C family and the imports for Python

autocmd Filetype cpp let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf_files/cpp/ycm_extra_conf.py"
autocmd Filetype c let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf_files/c/ycm_extra_conf.py"

"******************************************************************************"
"**************************** NerdTree Plugin *********************************"
"******************************************************************************"

" Map F9 to open and close the nerdtree window
noremap <F9> :NERDTreeToggle<CR>

"******************************************************************************"
"**************************** Tagbar Plugin ***********************************"
"******************************************************************************"

" Map F8 to open and close the tagbar window
noremap <F10> :TagbarToggle<CR>

"******************************************************************************"
"**************************** Nerdcommenter Plugin ****************************"
"******************************************************************************"

" You have to enable file type detection, see in Vim Mappings section

" noremap is not working with Nerdcommenter plugin
" Comment line
map <F5> <Leader>cc<CR>
" Uncomment line
map <F6> <Leader>cu<CR>
" Toggle comment 
map <F7> <Leader>ci<CR>
" Use alternative comment stype
map <F8> <Leader>ca<CR>

"******************************************************************************"
"**************************** Airline Plugin **********************************"
"******************************************************************************"

" Make ariline appear
set laststatus=2

" Enable colors for airline
set t_Co=256

" Set one of the avaible themes
let g:airline_theme="hybrid"

"******************************************************************************"
"**************************** Solarized Plugin ********************************"
"******************************************************************************"

syntax enable
"set background=light
set background=dark
colorscheme solarized

