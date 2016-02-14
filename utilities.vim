function s:selectVimOccurence()
    let nr = input("Which one: ")
    if nr > 0
        execute "normal ".nr."[\t"
    endif
endfunction

function InvokeVimOccurence()
    execute "normal [I"
    call s:selectVimOccurence()
endfunction

function InvokeGrepOccurence()
    execute "normal \"zyiw"
    execute "Unite grep:.::".@z.""
endfunction
