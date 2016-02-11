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
" Find keywords in files (taken from Vim help)
nnoremap <F4> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
nnoremap <F7> :Unite file_mru<CR>
" For easier error navigation
nnoremap <F8> :cprevious<CR>
nnoremap <F9> :cnext<CR>
" disable scratch preview window:
set completeopt-=preview
let g:localvimrc_whitelist='/home/munzner/.*'
let g:localvimrc_sandbox=0
" enable smart case-sensitive searches
set ignorecase smartcase
" make g flag default (g flag in replacements means 'non-greedy' then):
set gdefault
" introduce // to search for selected text:
vnoremap // y/<C-R>"<CR>
" disable modelines (security, workflow reasons)
set modelines=0
" set up ag to browse code repos
if executable('ag')
    let g:unite_source_rec_async_command = 'ag --nocolor --nogroup --hidden -g ""'
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nocolor --nogroup --hidden'
    let g:unite_source_grep_recursive_opt=''
endif
nnoremap <C-F> "zyiw:exe "Unite grep:.::".@z.""<CR>
nnoremap <C-A> :Unite -start-insert file_rec/async<CR>

