let s:save_cpo = &cpo
set cpo&vim
" 判断插件是加载
if exists('g:vim_jdbc')
    finish
endif

" 列出当前的数据源
command! -nargs=0 DbList call jdbc#GetDataSources()
" 切换数据源
command! -nargs=* DbChange call jdbc#ChangeDataSource(<q-args>)
" 执行查询语句
command! -nargs=* DbSelect call jdbc#ExecuteSelect(<q-args>)
" 执行更新语句
command! -nargs=* DbUpdate call jdbc#ExecuteUpdate(<q-args>)


let g:vim_jdbc = 1
let &cpo = s:save_cpo
unlet s:save_cpo
