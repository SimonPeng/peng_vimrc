進入 Vim，命令模式下輸入：
: NERDTree
就行了。

要查看幫助文件，可能要先重新索引一下：
: helptags  ~/.vim/doc
然後：
: help  NERD_tree.txt

NERD_tree 常用命令：

o  打開關閉文件或者目錄
t  在標籤頁中打開
T  在後台標籤頁中打開
!  執行此文件
p  到上層目錄
P  到根目錄
r  刷新選中目錄
K  到第一個節點
J  到最後一個節點
u  打開上層目錄
m  顯示文件系統菜單（文件/目錄的添加、刪除、移動操作） <---- 導航到目的目錄，然後按m調出nerd目錄，然後選擇你要的操作。
?  幫助
q  關閉

_vimrc

"==== F2 NERDTree 切換 =================
map <F2> :NERDTreeToggle<CR>
imap <F2> <ESC>:NERDTreeToggle<CR>