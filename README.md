# 说明

Vim操作数据库的工具，基于Java的JDBC实现。

- 适用的JDK版本：1.8+

- 适用的Vim版本：8.0+

## 安装

- Plug

```vim
Plug 'jspringyc/vim-jdbc'
```

- Vundle

```vim
Plugin 'jspringyc/vim-jdbc'
```

## 配置

```vim
" JDK目录，如果配置了JAVA_HOME的环境变量，可以不配置此项
let g:JAVA_HOME=/path/to/your/jdk
" jdbc.conf配置的路径，默认地址为~/.config/vim/jdbc.conf
let g:JDBC_CONF=/path/to/your/jdbc.conf
```

## 使用

- 列出所有的数据库连接

```vim
:DbList
```

- 切换数据库连接，为空则显示当前的数据库连接

```vim
:DbChange [db]
```

- 执行查询语句

```vim
:DbSelect
```

- 执行更新语句

```vim
:DbUpdate
```
