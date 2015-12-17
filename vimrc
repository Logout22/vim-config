execute pathogen#infect()

syntax on
filetype plugin on
set smarttab expandtab shiftwidth=4 softtabstop=4 tabstop=4 autoindent
if has("gui_running")
    set lines=50 columns=120
    set spell spelllang=en_gb
    "set spelllang=de_20
endif
" A line end marker
set colorcolumn=80
set ruler
autocmd FileType make set noexpandtab
autocmd FileType c set cindent
autocmd FileType cpp set cindent
" Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e
" Opposite to J (Ctrl-J):
nnoremap <C-J> a<CR><ESC>
" Find keywords in files
nnoremap <F9> [I
" For easier error navigation
nnoremap <F11> :cprevious<CR>
nnoremap <F12> :cnext<CR>
" disable scratch preview window:
set completeopt-=preview
let g:localvimrc_whitelist='/home/munzner/.*'
let g:localvimrc_sandbox=0
" enable smart case-sensitive searches
set ignorecase smartcase
" introduce // to search for selected text:
vnoremap // y/<C-R>"<CR>
" disable modelines (security, workflow reasons)
set modelines=0
" set up vimgrep to browse code repos
command -nargs=1 Codegrep vimgrep <args> **/*.c **/*.h **/*.cpp **/*.txt **/*.asm

