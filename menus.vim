" From http://vi.stackexchange.com/questions/580
"
" Initialize Unite's global list of menus
if !exists('g:unite_source_menu_menus')
    let g:unite_source_menu_menus = {}
endif

" Create an entry for our new menu of commands
let g:unite_source_menu_menus.my_commands = {
\    'description': 'My Commands'
\ }

" Define the function that maps our command labels to the commands they execute
function! g:unite_source_menu_menus.my_commands.map(key, value)
    return {
    \   'word': a:key,
    \   'kind': 'command',
    \   'action__command': a:value
    \ }
endfunction

" Define our list of [Label, Command] pairs
let g:unite_source_menu_menus.my_commands.command_candidates = [
\   ['1 Find current word through grep', 'call InvokeGrepOccurence()'],
\   ['2 Find keyword through grep', 'Unite grep:.'],
\   ['3 Browse all files', 'Unite -start-insert file_rec/async']
\ ]
