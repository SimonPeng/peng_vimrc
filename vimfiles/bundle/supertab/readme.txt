
安裝使用SuperTab
 SuperTab使Tab快捷鍵具有更快捷的上下文提示功能。跟OmniCppComplete一樣，SuperTab
也是一個Vim插件。

 從http://www.vim.org/scripts/script.php?script_id=1643下載安裝版。這個安裝包跟
先前的幾個Vim插件不同，它是一個vba文件，即Vimball格式的安裝包，這種格式安裝包提
供傻瓜式的安裝插件的方法。
1）用Vim打開.vba安裝包文件。
2）在Vim命令行下運行命令「UseVimball
~/.vim」。此命令將安裝包解壓縮到~/.vim目錄。VImball安裝方式的便利之處在於你可以
在任何目錄打開.vba包安裝，而不用切換到安裝目的地目錄。而且不用運行helptags命令安
裝幫助文檔。
3）在~/.vimrc文件中加入以下這行：

let g:SuperTabDefaultCompletionType="context"

SuperTab使用很簡單，只要在輸入變量名或路徑名等符號中途按Tab鍵，就能得到以前輸入
過的符號列表，並通過Tab鍵循環選擇。

      