" set up pathogen, https://github.com/tpope/vim-pathoge
call pathogen#infect()
filetype off

" don't bother with vi compatibility
set nocompatible

" set the shell to zsh
set shell=/bin/zsh
set shellcmdflag=-ci
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
set showbreak=>>                 "<D-
set scrolloff=3                   " Show 3 lines of context around the cursor.
set title                         " Set the terminal's title
set nobackup                      " Don't make a backup before overwriting a file.
set undofile                      " Allow undo from history
"set list                        " show trailing whitespace
"set listchars=tab:-\ ,trail:·,extends:❯,precedes:❮
set gdefault                      " Uses the G flag by defaults
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location
set autochdir 				"Auto change the directory to current's fil
set cursorline             "highlight the current line 
set spell                   "Enables speelchecking
"TABS
set tabstop=4                   " Global tab width.
set shiftwidth=4                 " And again, related.
set expandtab                    " Use spaces instead of tabs
set softtabstop=4
set laststatus=2                  " Show the status line all the time

if has('persistent_undo')
  set undofile
  set undodir=~/.vim/tmp/,~/.vim/undo_files/
endif

" THEME
if has('gui_running')
  "set guifont=Source\ Code\ Pro\ light:h13
  set guifont=Inconsolata\ for\ Powerline:h16
  "set guifont=Sauce\ Code\ Powerline\ light:h13
  "set guifont=Monaco:h14
  "set guifont=menlo\ for\ powerline:h15
  "set guifont=Meslo\ for\ powerline:h15
  set guioptions-=T " Removes the top toolbar
  set guioptions-=r " Removes right hand scrollbar
  set go-=L "Remove left hand scrollbar
endif
"set background=dark
"colorscheme monokai
"colorscheme twilight
colorscheme solarized
"colorscheme xoria256
colorscheme xoria256_modified
set linespace=16 	" Line height

"Enable code folding
set foldenable

" Useful status information at bottom of screen
if ! has('gui_running')
  set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
endif

"MAPING
let mapleader=","

" Easy align plugin
" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign with a Vim movement
nmap <Leader>a(EasyAlign)

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

" Disable localized menus for now since only some items are translated (e.g.
" the entire MacVim menu is set up in a nib file which currently only is
" translated to English).
set langmenu=none
set encoding=UTF8

" Set mouse use for teminal mode
set mouse=a

" Run phpunit test on the current file
nnoremap <leader>t :! clear && phpunit %<cr>
" Disable syntax highlight for files larger than 50 MB
autocmd BufWinEnter * if line2byte(line("$") + 1) > 50000000 | syntax clear | endif

" Auto open NERDTree
" autocmd VimEnter * NERDTree
" autocmd vimenter * if !argc() | NERDTree | endif
" autocmd vimenter * NERDTree
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

" Visual mode block indent
vmap > >gv
vmap < <gv

" Yank till the end of the line
nnoremap Y y$

map <c-h> <c-w>h
map <c-l> <c-w>l

" make all line command act for screen line instead of actual lines
noremap j gj
noremap k gk
noremap $ g$
noremap 0 g0

" Easy escaping in to normal mode
imap jj <esc>

" Easy escaping to visual mode
imap vv <esc>v

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

if has('gui_running')
    " Powerline status bar
    python import sys; sys.path.append("/Library/Python/2.7/site-packages")
    python from powerline.vim import setup as powerline_setup
    python powerline_setup()
    python del powerline_setup
    let g:Powerline_symbols = 'fancy'
    set laststatus=2 " Always display the statusline in all windows
    set encoding=utf-8 " Necessary to show unicode glyphs
    set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
endif

if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

" if expand("%") == ""|browse confirm w|else|confirm w|endif
" Trailing white space
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
