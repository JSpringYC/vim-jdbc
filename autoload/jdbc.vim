if get(g:, 'vim_jdbc_autoload', 0) == 1
    finish
else
    let g:vim_jdbc_autoload = 1
endif

function! jdbc#GetDataSources()
    echo 'jdbc#GetDataSources'
endfunction

function! jdbc#ChangeDataSource(...)
    echo 'jdbc#ChangeDataSource: '. a:000[0]
endfunction
