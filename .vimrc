" vim: ts=2 sw=2 noet

set viminfo=""
set ts=4
set sw=4
set softtabstop=4
set et
set sm
set nohls
set ai
syn on

"" FOLDING FOR PYTHON """""""""""""""""""""""""""""""""""""""""""""""
"
" Language:	python
" Maintainer:	Johannes Zellner <johannes@zellner.org>
" URL:		http://www.zellner.org/vim/fold/python.vim
" Last Change:	Sam, 14 Okt 2000 11:21:08 +0200
" $Id: python.vim,v 1.2 2000/10/25 13:03:16 joze Exp $ }}}

" [-- local settings --]
setlocal foldexpr=PythonFold(v:lnum)

if exists('*PythonFold') | finish | endif

fun! PythonFold(num)
	let line = getline(a:num)
	if line =~ '^\s*[^#].*:\(\s*#.*\)\=$'
		let ind = indent(a:num) / &sw + 1
		return '>'.ind
	elseif line =~ '^[^#]*[[{]'
		return 'a1'
	elseif line =~ '^[^#]*[]}]'
		return 's1'
	elseif line =~ '^\(from\|import\)'
		return 1
	elseif line =~ '\S'
		return indent(a:num) / &sw
	else
		" use -1 instead of '=' if don't want to
		" fold empty lines below the end of a body
		"return '=' " return '-1'
		return '-1' " return '-1'
	endif
endfun

setlocal foldmethod=expr
set foldlevelstart=99
set ruler
