" set up pathogen, https://github.com/tpope/vim-pathoge
call pathogen#infect()          
filetype off

" don't bother with vi compatibility
set nocompatible

 " Turn on syntax highlighting.
syntax enable      

" Turn on file type detection.
filetype plugin indent on         


set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set backspace=indent,eol,start    " Intuitive backspacing.
set hidden                        " Handle multiple buffers better.
set ai
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set number                        " Show line numbers.
set ruler                         " Show cursor position.
set showmatch
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.
set title                         " Set the terminal's title
set nobackup                      " Don't make a backup before overwriting a file.
set undofile                      " Allow undo from history
set list                        " show trailing whitespace
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮
set gdefault                      " Uses the G flag by defaults
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location
set autochdir 				"Auto change the directory to current's file
set cursorline             "highlight the current line 

"TABS
set tabstop=4                   " Global tab width.
set shiftwidth=4                 " And again, related.
set expandtab                    " Use spaces instead of tabs
set softtabstop=4
set laststatus=2                  " Show the status line all the time


" THEME
if has('gui_running')
  set guifont=Source\ Code\ Pro\ light:h14
endif
set background=dark
" colorscheme monokai
colorscheme solarized
set linespace=7 	" Line height

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

"MAPING
let mapleader=","

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

"Tcomment siple comment
nmap <leader>/ <c-_><c-_>
" block comment
nmap <leader>b <c-_>b

" Disable localized menus for now since only some items are translated (e.g.
" the entire MacVim menu is set up in a nib file which currently only is
" translated to English).
set langmenu=none
set encoding=UTF8



" Disable syntax highlight for files larger than 50 MB
autocmd BufWinEnter * if line2byte(line("$") + 1) > 50000000 | syntax clear | endif

" Auto open NERDTree
autocmd VimEnter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd vimenter * NERDTree
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTreeToggle<CR>

" NERD commenter
filetype plugin on
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS

" imap <Tab> <C-n>		"open the suggestions panel on tab

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
