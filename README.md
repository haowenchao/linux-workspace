我个人的 linux 环境的一些配置, 包括 vim 的配置和一些 bash 命令的重命名.

## 需要安装的软件

1. cscope
2. global
3. ctags
4. gtags

### How to install gtags

1. Download source code from GNU global home page(www.gnu.org/software/global/download.html)
2. extract downloaded package
3. refer to ```INSTALL``` in extracted files

## vim 的配置

1. 包括一些常用的 vim 配置选项开关
2. Taglist 插件的一些常用配置
3. cscope 的一些按键映射
4. gtags 的一些按键映射和配置
5. 函数定义

## bash 命令重命名

* fa: 在当前目录下**所有文件**搜索指定关键字
* fs: 在当前目录下**所有源文件包括后缀为 .c .h .S .s**搜索指定关键字
* fc: 在当前目录下**所有 C 文件**搜索指定关键字
* fh: 在当前目录下**所有 .h 文件**搜索指定关键字
* wcl: 统计当前目录下**所有 C 文件**代码行数
* cls: 强制清屏, 不同于 clear 命令

