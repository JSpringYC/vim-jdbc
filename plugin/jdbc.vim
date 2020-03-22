let s:save_cpo = &cpo
set cpo&vim
" 判断插件是加载
if exists('g:vim_jdbc')
    finish
endif

command! -nargs=0 DbList call jdbc#GetDataSources()

command! -nargs=* DbChange call jdbc#ChangeDataSource(<q-args>)

let g:vim_jdbc = 1
let &cpo = s:save_cpo
unlet s:save_cpo
