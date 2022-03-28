set nocompatible
filetype on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

 
" 这里根据自己需要的插件来设置，以下是我的配置 "

" github 仓库中的插件 "
Plugin 'VundleVim/Vundle.vim'

" YouCompleteMe:语句补全插件
Plugin 'Valloric/YouCompleteMe'

set runtimepath+=~/.vim/bundle/YouCompleteMe
autocmd InsertLeave * if pumvisible() == 0|pclose|endif     "离开插入模式后自动关闭预览窗口"
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0                            " 关闭加载.ycm_extra_conf.py提示
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键,没有这个会拦截掉tab, 导致其他插件的tab不能用.
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'"
let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"             " 回车即选中当前项
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>     " 跳转到定义处
let g:ycm_min_num_of_chars_for_completion=2                 " 从第2个键入字符就开始罗列匹配项"
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_key_invoke_completion = '<c-z>'
noremap <c-z> <NOP>
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }


 
"底栏
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"vim-airline配置:优化vim界面"
"let g:airline#extensions#tabline#enabled = 1
" airline设置
" 显示颜色
set t_Co=256
set laststatus=2
" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = ' '
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
" 映射<leader>num到num buffer
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>
"底栏显示时间
let g:airline_section_b='%{strftime("%c")}'
let g:airline_section_y='%{bufnr("%")}'
"显示完整文件名称
let g:airline#extensions#tabline#formatter = 'unique_tail'

 
 
" vim-scripts 中的插件 "

Plugin 'yegappan/taglist'
"ctags 配置:F3快捷键显示程序中的各种tags，包括变量和函数等。
map <F3> :TlistToggle<CR>			"按F3等同于在命令行模式输入:TlistToggle
"filetype plugin indent on　　　　　　　　        "打开文件类型检测功能
let Tlist_Ctags_Cmd = '/usr/bin/ctags'         "设定系统中ctags程序的位置
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1			"不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow=1			"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_WinWidt=25


Plugin 'The-NERD-tree'
"NERDTree 配置:F2快捷键显示当前目录树
map <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=25 
 

Plugin 'indentLine.vim'
Plugin 'delimitMate.vim'

Plugin 'frazrepo/vim-rainbow'

au FileType c,cpp,objc,objcpp call rainbow#load()
let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']


Plugin 'junegunn/fzf.vim'




Plugin 'mileszs/ack.vim'



Plugin 'scrooloose/nerdcommenter'
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" 安装vim-man
Plugin 'vim-utils/vim-man' 
"---------------------------vim-man配置--------------------------------------
source $VIMRUNTIME/ftplugin/man.vim
"按m横屏显示manpage
nmap m :Man <C-R>=expand("<cword>")<CR><CR>
"按vm竖屏显示manpage
nmap vm :Vman <C-R>=expand("<cword>")<CR><CR>


"vue 语法高亮插件
Plugin 'posva/vim-vue'
autocmd FileType vue syntax sync fromstart
"autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

"vue语法检测（目前语法检测还没玩得很好，先不要）
"Plugin 'scrooloose/syntastic'
"let g:syntastic_javascript_checkers = ['eslint']

"vim 强大的搜索插件
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"调用时，除非指定了起始目录，否则ctrlp将根据此变量设置其本地工作目录
"let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_working_path_mode = 'ra'

"html标签对应高亮
Plugin 'Valloric/MatchTagAlways'


"括号自动关闭
Plugin 'Townk/vim-autoclose'

"自动函数注释
Plugin 'babaybus/DoxygenToolkit.vim'

"多光标
Plugin 'mg979/vim-visual-multi', {'branch': 'master'}
"帮助文档 :help visual-multi

" 非 github 仓库的插件"
" Plugin 'git://git.wincent.com/command-t.git'
" 本地仓库的插件 "
 
call vundle#end()
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"函数自动注释配置
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="--------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Wang Jiancong"
let g:DoxygenToolkit_licenseTag="My own license" 

"---------------------------------------------------------------------------------------------------
"底行配置
let g:airline#extensions#tabline#enable = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'



"自动保存最后修改时间
function SetLastModifiedTimes()
	let cursor= line('.')
	"获取行
	let column=col('.') 
	"获取列

	"获取光标位置
	let pos = getpos(".")

	let res = search("@LastEditTime","w")
	let line = getline(res)
	let newtime = " * @LastEditTime:".strftime("%Y-%m-%d %H:%M:%S")
	let repl = substitute(line,".*$",newtime,"g")
	if res
		call setline(res,repl)
		"执行Normal命令 将光标定位到函数执行之前的位置 这种方法不好用
		"exec ":"+cursor+" gg" 
		"exec ":"+column+" l" 
		"定位光标到原来的位置 这个很好用
		call setpos(".", pos)
	endif

endfunction
autocmd BufWrite *.[ch],*.hpp,*.cpp,Makefile,*.mk,*.sh,*.php,*.html  call SetLastModifiedTimes()


" 当新建 .h .c .hpp .cpp .mk .sh等文件时自动调用SetTitle 函数 自动插入文件头 
autocmd BufNewFile *.[ch],*.hpp,*.cpp,Makefile,*.mk,*.sh,*.php,*.html exec ":call SetTitle()" 
" 加入注释 

"加入c cpp h hpp ch mk php 等文件注释
func SetComment()
	call setline(1,"/*") 
        call append(line("."),"================================================================") 
	call append(line(".")+1, " * Copyright © ".strftime("%Y")." Yimning. All rights reserved.")
	call append(line(".")+2, " *   ") 
	call append(line(".")+3, " * @File Name: ".expand("%")) 
	call append(line(".")+4, " * @Author: Yimning") 
	call append(line(".")+5, " * @Email: 1148967988@qq.com") 
	call append(line(".")+6, " * @Created Time:".strftime("%Y-%m-%d %H:%M:%S"))
	call append(line(".")+7, " * @LastEditTime:".strftime("%Y-%m-%d %H:%M:%S"))
	call append(line(".")+8, " * @Description:") 
	call append(line(".")+9, " *")
	call append(line(".")+10, "================================================================") 
	call append(line(".")+11, "*/")
	call append(line(".")+12, " ")

endfunc

"加入html注释
func SetHtmlComment()
	call setline(1,"<!--") 
	call append(line("."),   " * Copyright © ".strftime("%Y")." Yimning. All rights reserved.")
	call append(line(".")+1, " *   ") 
	call append(line(".")+2, " * @FileName: ".expand("%")) 
	call append(line(".")+3, " * @Author: Yimning") 
	call append(line(".")+4, " * @Email: 1148967988@qq.com") 
	call append(line(".")+5, " * @Created Time:".strftime("%Y-%m-%d %H:%M:%S"))
	call append(line(".")+6, " * @LastEditTime:".strftime("%Y-%m-%d %H:%M:%S"))
	call append(line(".")+7, " * @Description:") 
	call append(line(".")+8, "")
	call append(line(".")+9, "-->") 
	call append(line(".")+10, "")
	call append(line(".")+11, "")
endfunc

" 加入shell,Makefile注释
func SetComment_sh()
	call setline(3, "#================================================================") 
	call setline(4, "#   Copyright © ".strftime("%Y")." EdisonLiu_ All rights reserved.")
	call setline(5, "#   ") 
	call setline(6, "#   @FileName：".expand("%:t")) 
	call setline(7, "#   @Author: Yimning")
	call setline(8, "#   @Created Time:".strftime("%Y-%m-%d")) 
	call setline(9, "#   @Description:") 
	call setline(10, "#")
	call setline(11, "#================================================================")
	call setline(12, "")
	call setline(13, "")
endfunc 
" 定义函数SetTitle，自动插入文件头 
func SetTitle()
	if &filetype == 'make' 
		call setline(1,"") 
		call setline(2,"")
		call SetComment_sh()
 
	elseif &filetype == 'sh' 
		call setline(1,"#!/bin/sh") 
		call setline(2,"")
		call SetComment_sh()
	elseif &filetype == 'html'
		call setline(2,"")
		call SetHtmlComment()

	elseif &filetype == 'c' 
		call SetComment()
		call append(line(".")+13, "")
	  	call append(line(".")+14,"#include \"".expand("%:t:r").".h\"") 
		call append(line(".")+15, "#include<stdio.h>")
		call append(line(".")+16, "")

	else
	     call SetComment()
	     if expand("%:e") == 'hpp' 
		  call append(line(".")+13, "")
		  call append(line(".")+14, "#ifndef _".toupper(expand("%:t:r"))."_H") 
		  call append(line(".")+15, "#define _".toupper(expand("%:t:r"))."_H") 
		  call append(line(".")+16, "#ifdef __cplusplus") 
		  call append(line(".")+17, "extern \"C\"") 
		  call append(line(".")+18, "{") 
		  call append(line(".")+19, "#endif") 
		  call append(line(".")+20, "") 
		  call append(line(".")+21, "#ifdef __cplusplus") 
		  call append(line(".")+22, "}") 
		  call append(line(".")+23, "#endif") 
		  call append(line(".")+24, "#endif //".toupper(expand("%:t:r"))."_H") 
 
	     elseif expand("%:e") == 'h' 
		  call append(line(".")+13, "")
	  	  call append(line(".")+14, "#ifndef _".toupper(expand("%:t:r"))."_H") 
		  call append(line(".")+15, "#define _".toupper(expand("%:t:r"))."_H") 
		  call append(line(".")+16, "") 
		  call append(line(".")+17, "#ifdef __cplusplus") 
		  call append(line(".")+18, "extern \"C\"") 
		  call append(line(".")+19, "{") 
		  call append(line(".")+20, "#endif") 
		  call append(line(".")+21, "") 
		  call append(line(".")+22, "#ifdef __cplusplus") 
		  call append(line(".")+23, "}") 
		  call append(line(".")+24, "#endif") 
		  call append(line(".")+25, "") 
		  call append(line(".")+26, "#endif //".toupper(expand("%:t:r"))."_H") 

	elseif &filetype == 'cpp' 
		  call append(line(".")+13, "")
	  	  call append(line(".")+14, "#include \"".expand("%:t:r").".h\"") 
		  call append(line(".")+15, "#include<stdio.h>")
		  call append(line(".")+16, "#include<iostream>")
    		  call append(line(".")+17, "using namespace std;")
		  call append(line(".")+18, "")

	elseif &filetype == 'java'
		  call append(line(".")+13, "")
		  call append(line(".")+14,"public class ".expand("%"))
		  call append(line(".")+15,"")

             elseif expand("%:e") == 'php' 
		  call setline(1,"<?php  ")
		  call append(line("."),"/*")
		  call append(line(".")+13, "")
	  	  call append(line(".")+14, "?>")
	     endif

	endif
endfunc
"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>
 
" 映射全选+复制 ctrl+a
map <C-A> ggVGY
map! <C-A> <Esc>ggVGY
map <F12> gg=G
" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y
 
 
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置当文件被改动时自动载入
set autoread
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全 
set completeopt=preview,menu 

" 设置字体大小
set guifont=Courier_new:h200:b:cDEFAULT
"set guifont = Courier_new:h20
"set guifont=Courier_new 20

"允许插件  
filetype plugin on
"共享剪贴板  
set clipboard=unnamed "系统剪切板共享,需要安装vim的扩展支持 sudo apt install vim-gtk"  
"从不备份  
set nobackup
"make 运行
:set makeprg=g++\ -Wall\ \ %
"自动保存
set autowrite
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
" 设置在状态行显示的信息
set foldcolumn=0
set foldmethod=indent 
set foldlevel=3 
set foldenable              " 开始折叠
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
" 语法高亮
set syntax=on
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
" 总是显示状态行
set laststatus=2
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 为C程序提供自动缩进
set smartindent
" 高亮显示普通txt文件（需要txt.vim脚本）
 au BufRead,BufNewFile *  setfiletype txt
"自动补全
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {<CR>}<ESC>O
":inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endfunction
filetype plugin indent on 
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
