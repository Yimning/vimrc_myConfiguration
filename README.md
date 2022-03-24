## 安装说明
- 安装Vundle的方法： git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
- 安装完Vundl后执行PluginInstall安装所有插件
## 命令说明
- 全选文本内容 via
- 保存文档 ，w
- php变量选中命令 vis
- 选中html属性（不是很稳） vib 
- 上一个标签 ,n 
- 下一个标签 ,p
- 关闭其他标签 ,o

- 自动补全（无需命令，输入前半部分括号或者引号即自动补全后半部分）

#### 插件命令说明
- NERDTree新建文件、删除文件、设置当前目录为根目录


|功能|快捷键|解释 |
|--|--|:--|
|新建文件|ma|在要创建文件的目录中按命令 ma然后键入你要创建的文件名称即可。|
|删除文件|md|在要删除的文件上按命令md然后输入y回车即可。|
|移动文件/修改文件名|mm|在要修改的文件上按命令mm然后输入对应的目录和名称回车即可。|
|设置当前目录为项目根目录|C|在要设置为根目录的目录上按命令C【大写】即可。（刚学vim的时候总是不小心按到u命令把不必要的目录设置成了我的项目根目录，当时一直没找到比较好的解决方案很尴尬只能重启vim解决现在只要按C命令改回来即可）|
|查看当前文件所在目录|:NERDTreeFind|执行命令 :NERDTreeFind 或则在.vimrc中添加  map \<leader\>v \:NERDTreeFind\<CR\>  全局使用 \<leader\>v命令(我的是,v)直接显示当前文件所在目录。|


- ctrlp使用

|功能|快捷键|解释 |
|--|--|:--|
|模糊搜索最近打开的文件(MRU)|,-f|--|
|模糊搜索当前目录及其子目录下的所有文件|,-p|--|-


搜索框出来后, 输入关键字, 然后
|功能|快捷键|解释 |
|--|--|:--|
|进行上下选择|ctrl + j/k|在搜索的结果中上下移动光标选择要打开的文件|
|在当前窗口水平分屏打开文件|ctrl + x |--|
|同上, 垂直分屏|ctrl + v  |--|
|在tab中打开|ctrl + t|这个我经常用|

- VIM快速注释插件NERD Commenter 

|功能|快捷键|解释 |
|--|--|:--|
|注释选中|,cc |注释掉在视觉模式下选定的当前行或文本|
|注释选中，但强制嵌套|,cn|（没试验过）|
|切换选定行的注释状态|,c<space> |如果选中的是注释的，则解注释。如果未注释则注释。 （<space>为空格键）|
|仅使用一组多部分分隔符注释给定行。|,cm|这个我经常用，（这个也就是多行注释只用一个注释标签的意思 例如 /* sdfasdfdfds */ ） |

我目前使用 ,cm注释 使用 ,c<space>取消注释
 
 
 
![Image](https://github.com/Yimning/vimrc_myConfiguration/blob/master/images/1.png)
![Image](https://github.com/Yimning/vimrc_myConfiguration/blob/master/images/2.png)

