" ~/.vimrc of Kartik Mistry <kartik.mistry@gmail.com>

" enable syntax highlighting
syntax on

" get easier to use and more user friendly vim defaults
" CAUTION: This option breaks some vi compatibility.
"          Switch it off if you prefer real vi compatibility
set nocompatible

" show matching brackets
set showmatch

" display mode INSERT/REPLACE/...
set showmode

" Required to be able to use keypad keys and map missed escape sequences
set esckeys

" from: https://github.com/swaroopch/dotvim/blob/develop/vimrc
" Status line
set laststatus=2
set statusline=
set statusline+=%-3.3n\ " buffer number
set statusline+=%f\ " filename
set statusline+=%h%m%r%w " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%= " right align remainder
set statusline+=0x%-8B " character value
set statusline+=%-14(%l,%c%V%) " line, character
set statusline+=%<%P " file position

" Disable the F1 help key
map <F1> <Esc>
imap <F1> <Esc>

" Display incomplete commands.
set showcmd

" Minimal number of screen lines to keep above and below the cursor.
" This keeps the cursor always in the vertical middle of the screen.
set scrolloff=999

" end: https://github.com/swaroopch/dotvim/blob/develop/vimrc

" Use UTF-8.
set encoding=utf-8

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Complete longest common string, then each full match
" enable this for bash compatible behaviour
set wildmode=longest,full

" Set line no
set nu

" Daniel whitespace marker
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
highlight LineTooLong cterm=bold ctermbg=red guibg=LightYellow
match DiffAdd '\%>80v.*'

" from lool's vimrc
set autoindent
set nobackup
set ruler

" from Perl Best Practices
set shiftwidth=4

" Don't break up long lines, but visually wrap them.
set textwidth=0
set wrap

" set list mode and appropriate chars to display tabs, end of lines,
" wrapping, or trailing spaces
set list
set listchars=tab:>-,trail:.,extends:>,precedes:<

" Changed default required by SuSE security team--be aware if enabling this
" that it potentially can open for malicious users to do harmful things.
set modelines=0

set incsearch
set smartindent

" Color
colorscheme desert
