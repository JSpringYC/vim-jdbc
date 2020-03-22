if get(g:, 'vim_jdbc_autoload', 0) == 1
    finish
else
    let g:vim_jdbc_autoload = 1
    " 当前的数据源
    let g:vim_jdbc_ds = ''
endif

" 列出当前的数据源
function! jdbc#GetDataSources()
    echo 'jdbc#GetDataSources'
endfunction

" 更换数据源
"
" 参数：
"   1、数据源ID
function! jdbc#ChangeDataSource(...)
    if strlen(a:000[0]) == 0
        echo 'Current DataSource is: ' . g:vim_jdbc_ds
    else 
        let g:vim_jdbc_ds = a:000[0]
        echo 'jdbc#ChangeDataSource: '. a:000[0]
    endif
endfunction

" 执行查询语句
"
" 参数：
"   1、SQL，如果为空的话，则使用当前选择的文本。如果当前未选择，则用编辑的所有文本
function! jdbc#ExecuteSelect(...)
    let sql = ''

    if strlen(a:000[0]) == 0
        " TODO 参数为空，判断是否选择了文本

        echo 'SQL can not be null!'
    else
        let sql = join(a:000, ' ')
        echo 'jdbc#ExecuteSelect: '. sql
    endif
endfunction

" 执行更新语句
"
" 参数：
"   1、SQL，如果为空的话，则使用当前选择的文本。如果当前未选择，则用编辑的所有文本
function! jdbc#ExecuteUpdate(...)
    if strlen(a:000[0]) == 0
        echo 'SQL can not be null!'
    else 
        let sql = join(a:000, ' ')
        echo 'jdbc#ExecuteUpdate: '. sql
    endif
endfunction
