set nocompatible
call pathogen#incubate()
"execute pathogen#infect()"
syntax on
filetype plugin indent on
map <C-k> :call OCamlType()<CR>
map <C-]> :call OCamlSpot()<CR>
set history=100
set number
set cursorline
set visualbell
set hidden
set showmode
set showcmd
set ruler
set showmatch
set smartcase
set laststatus=2
set textwidth=80
set wrap
set linebreak
set incsearch
set hlsearch
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set foldmethod=indent
"set clipboard=unnamedplus
set wildmenu
set wildmode=list:full
syntax enable
"set background=dark
"colorscheme solarized
"colorscheme sebocean

set guioptions-=T " hide toolbar
" statusline = [buf] /path/file [+][RO][help][preview][type][unix] 0xFF 1-3, 49 / 99 50%
set statusline=[%n]\ %F%<\ %m%r%h%w%y[%{&ff}]%=0x%B\ @\ %c%V,\ %l\ /\ %L\ %P



setlocal spell spelllang=en_us
set spelllang=en_us

" Restore cursor position upon reopening files {{{
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
" }}}

" Strip white spaces when save the file. Need to remove echoed message in
" vim-better-whitespace {{{
autocmd BufReadPost * ToggleStripWhitespaceOnSave
" }}}

if has('autocmd')
    autocmd filetype ocaml setlocal softtabstop=2 shiftwidth=2
endif

" let g:ocp_indent_vimfile = system("opam config var share")
" let g:ocp_indent_vimfile = substitute(g:ocp_indent_vimfile, '[\r\n]*$', '', '')
" let g:ocp_indent_vimfile = g:ocp_indent_vimfile . "/vim/syntax/ocp-indent.vim"
" echo g:ocp_indent_vimfile
" autocmd FileType ocaml source g:ocp_indent_vimfile
autocmd FileType ocaml source /Users/tiffanyb/.opam/401pic/share/vim/syntax/ocp-indent.vim
au FileType ocaml map == :call OcpIndentBuffer()<CR>
" map ,r :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r <C-r>=line('.')<CR> %<.pdf %<CR>
map ,r :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r <C-r>=line('.')<CR> %<.pdf %<CR>
