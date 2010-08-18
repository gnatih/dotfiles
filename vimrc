" enable syntax highlighting
syntax on

" show matching brackets
set showmatch

" display mode INSERT/REPLACE/...
set showmode

" Required to be able to use keypad keys and map missed escape sequences
set esckeys

" get easier to use and more user friendly vim defaults
" CAUTION: This option breaks some vi compatibility.
"          Switch it off if you prefer real vi compatibility
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Complete longest common string, then each full match
" enable this for bash compatible behaviour
" set wildmode=longest,full

" Set line no
set nu

" Daniel whitespace marker
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
hi LineTooLong cterm=bold ctermbg=red guibg=LightYellow
match DiffAdd '\%>80v.*'

" from lool vimrc
set autoindent
set nobackup
set ruler

" from Perl Best Practices
set textwidth=80
set shiftwidth=4

" set list mode and appropriate chars to display tabs, end of lines,
" wrapping, or trailing spaces
set list
set listchars=tab:>-,trail:.,extends:>,precedes:<

" Dictionary
set dictionary=/usr/share/dict/american-english

" Changed default required by SuSE security team--be aware if enabling this
" that it potentially can open for malicious users to do harmful things.
set modelines=0
