execute pathogen#infect()

let s:vimconfigpath=fnamemodify(resolve(expand('<sfile>:p')), ":h")

execute "source ".s:vimconfigpath."/utilities.vim"

" Defines custom menu for F4 key
execute "source ".s:vimconfigpath."/menus.vim"

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
" Create a mapping to open a custom menu
nnoremap <F4> :<C-U>Unite menu:my_commands -start-insert -ignorecase<CR>
" For easier error navigation
nnoremap <F8> :cprevious<CR>
nnoremap <F9> :cnext<CR>
" Disable scratch preview window:
set completeopt-=preview
let g:localvimrc_whitelist='/home/munzner/.*'
let g:localvimrc_sandbox=0
" Enable smart case-sensitive searches
set ignorecase smartcase
" Make g flag default (g flag in replacements means 'non-greedy' then):
set gdefault
" Introduce // to search for selected text:
vnoremap // y/<C-R>"<CR>
" Disable modelines (security, workflow reasons)
set modelines=0
" Set up ag to browse code repos
if executable('ag')
    let g:unite_source_rec_async_command = 'ag --nocolor --nogroup --hidden -g ""'
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nocolor --nogroup --hidden'
    let g:unite_source_grep_recursive_opt=''
endif
" Do not truncate grep's result list
call unite#custom#source("grep", "max_candidates", 0)
