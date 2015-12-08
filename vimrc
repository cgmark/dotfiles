execute pathogen#infect()

syntax on
set background=dark
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set textwidth=80
set smartindent
set smarttab
set hlsearch
"set incsearch
set ruler
set tags=tags;/
set history=1000
set formatoptions=tcroq
set backspace=2
set ignorecase
set smartcase

filetype on
filetype plugin on
filetype indent on

map <C-]> :tselect <C-R><C-W><CR>

au FileType Makefile setlocal noexpandtab
au FileType python set omnifunc=pythoncomplete#Complete

" TagList configuration
map T :TlistToggle<CR>
let Tlist_Compact_Format=1
let Tlist_Enable_Fold_Column=0
let Tlist_Process_File_always=1
let Tlist_GainFocus_On_ToggleOpen=1

highlight BadWhitespace ctermbg=red guibg=red
au FileType python match BadWhitespace /^\t\+/
au FileType python match BadWhitespace /\s\+$/

" remove trailing whitespace when writing .py files
au BufWritePre *.py :%s/\s\+$//e
 
"au FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 setlocal textwidth=80 smarttab expandtab

nnoremap <c-]> g<c-]>
vnoremap <c-]> g<c-]>
