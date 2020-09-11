"let g:airline_theme='deus'
"let g:airline_left_sep='>

" Set compatibility to Vim only.
set nocompatible

"set t_Co=256
let python_highlight_all = 1

set mousehide
set mouse=a

set wrap
set linebreak

set nobackup
set noswapfile
set termencoding=utf-8
set fileencodings=utf-8,cp1251
set t_vb=
set novisualbell

set clipboard=unnamed
set ruler
set hidden
set visualbell t_vb=

set showtabline=1

autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako setlocal noexpandtab
autocmd FileType *.py set tw=80
autocmd FileType python nnoremap <C-a> :call WriteDocstrings()<CR>
"nnoremap <C-a> :call WriteDocstrings()<CR>
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufNewFile *.py call WritePyinit()
autocmd VimLeave * !reset

" Turn on syntax highlighting.
syntax on

" For plug-ins to load correctly.
filetype plugin indent on

" Turn off modelines
set modelines=0

" Automatically wrap text that extends beyond the screen length.
set wrap
" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set autoindent

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2
set showtabline=1


" Display options
set showmode
set showcmd

" Show line numbers
set number

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set nohlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

set nolist

"Layouts
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866
"memory, history, undotree
if version >= 700
    set history=64
    set undolevels=128
    set undodir=~/.vim/undodir/
    set undofile
    set undolevels=1000
    set undoreload=10000
endif

" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif

"Configure 256 colors for xterm mode
if &term =~ "xterm"
    let &t_Co=256
endif

colorscheme OceanicNext
let g:airline_theme='deus'

let g:airline_enable_fugitive=1
let g:airline_enable_syntastic=1
let g:airline_enable_bufferline=1

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_linecolumn_prefix = '¶ '
let g:airline_fugitive_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'

"let g:airline_section_c = '%n'
let g:airline_section_z = '%l/%v'


