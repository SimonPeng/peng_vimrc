"====================================================================
" copy and paste
"====================================================================
" allow deleting single characters without updating the default register
" "_: black hole register
"----------------------------
" normal mode - delete
nnoremap s "ss
nnoremap S "sS

nnoremap x "xx
nnoremap X "xX

nnoremap c  "cc
nnoremap cc "ccc
nnoremap C  "cc$

nnoremap d  "dd
nnoremap dd "ddd
nnoremap D  "dd$

nnoremap <del> "d<del>
nnoremap <bs> "x<del>

"----------------------------
" visual mode - delete
vnoremap s "ss
vnoremap S "sS

vnoremap x "xx
vnoremap X "xX

vnoremap c  "cc
vnoremap cc "ccc
vnoremap C  "cc$

vnoremap d  "dd
vnoremap dd "ddd
vnoremap D  "dd$

vnoremap <del> "d<del>
vnoremap <bs> "x<del>

vnoremap <c-x> "xx

"----------------------------
" visual mode - paste
"----------------------------
" paste in visual mode without updating the default register
" copy original select to register "o"
vnoremap p "cc<esc>p


"-------------------------------------------------
" remap register
"-------------------------------------------------
"----------------------------
" normal mode - copy
nnoremap <leader>ca   "ay
nnoremap <leader>cb   "by
nnoremap <leader>cc   "cy
nnoremap <leader>cd   "dy
nnoremap <leader>ce   "ey
nnoremap <leader>cf   "fy
nnoremap <leader>cg   "gy
nnoremap <leader>ch   "hy
nnoremap <leader>ci   "iy
nnoremap <leader>cj   "jy
nnoremap <leader>ck   "ky
nnoremap <leader>cl   "ly
nnoremap <leader>cm   "my
nnoremap <leader>cn   "ny
nnoremap <leader>co   "oy
nnoremap <leader>cp   "py
nnoremap <leader>cq   "qy
nnoremap <leader>cr   "ry
nnoremap <leader>cs   "sy
nnoremap <leader>ct   "ty
nnoremap <leader>cu   "uy
nnoremap <leader>cv   "vy
nnoremap <leader>cw   "wy
nnoremap <leader>cx   "xy
nnoremap <leader>cy   "yy
nnoremap <leader>cz   "zy

"----------------------------
" visual mode - copy
vnoremap <leader>ca   "ay
vnoremap <leader>cb   "by
vnoremap <leader>cc   "cy
vnoremap <leader>cd   "dy
vnoremap <leader>ce   "ey
vnoremap <leader>cf   "fy
vnoremap <leader>cg   "gy
vnoremap <leader>ch   "hy
vnoremap <leader>ci   "iy
vnoremap <leader>cj   "jy
vnoremap <leader>ck   "ky
vnoremap <leader>cl   "ly
vnoremap <leader>cm   "my
vnoremap <leader>cn   "ny
vnoremap <leader>co   "oy
vnoremap <leader>cp   "py
vnoremap <leader>cq   "qy
vnoremap <leader>cr   "ry
vnoremap <leader>cs   "sy
vnoremap <leader>ct   "ty
vnoremap <leader>cu   "uy
vnoremap <leader>cv   "vy
vnoremap <leader>cw   "wy
vnoremap <leader>cx   "xy
vnoremap <leader>cy   "yy
vnoremap <leader>cz   "zy

"----------------------------
" normal mode - paste
nnoremap <leader><leader>a "ap
nnoremap <leader><leader>b "bp
nnoremap <leader><leader>c "cp
nnoremap <leader><leader>d "dp
nnoremap <leader><leader>e "ep
nnoremap <leader><leader>f "fp
nnoremap <leader><leader>g "gp
nnoremap <leader><leader>h "hp
nnoremap <leader><leader>i "ip
nnoremap <leader><leader>j "jp
nnoremap <leader><leader>k "kp
nnoremap <leader><leader>l "lp
nnoremap <leader><leader>m "mp
nnoremap <leader><leader>n "np
nnoremap <leader><leader>o "op
nnoremap <leader><leader>p "pp
nnoremap <leader><leader>q "qp
nnoremap <leader><leader>r "rp
nnoremap <leader><leader>s "sp
nnoremap <leader><leader>t "tp
nnoremap <leader><leader>u "up
nnoremap <leader><leader>v "vp
nnoremap <leader><leader>w "wp
nnoremap <leader><leader>x "xp
nnoremap <leader><leader>y "yp
nnoremap <leader><leader>z "zp

" paste system clipboard
nnoremap <leader><leader>* "*p

"----------------------------
" visual mode - paste
vnoremap <leader><leader>a "cc<esc>"ap
vnoremap <leader><leader>b "cc<esc>"bp
vnoremap <leader><leader>c "cc<esc>"cp
vnoremap <leader><leader>d "cc<esc>"dp
vnoremap <leader><leader>e "cc<esc>"ep
vnoremap <leader><leader>f "cc<esc>"fp
vnoremap <leader><leader>g "cc<esc>"gp
vnoremap <leader><leader>h "cc<esc>"hp
vnoremap <leader><leader>i "cc<esc>"ip
vnoremap <leader><leader>j "cc<esc>"jp
vnoremap <leader><leader>k "cc<esc>"kp
vnoremap <leader><leader>l "cc<esc>"lp
vnoremap <leader><leader>m "cc<esc>"mp
vnoremap <leader><leader>n "cc<esc>"np
vnoremap <leader><leader>o "cc<esc>"op
vnoremap <leader><leader>p "cc<esc>"pp
vnoremap <leader><leader>q "cc<esc>"qp
vnoremap <leader><leader>r "cc<esc>"rp
vnoremap <leader><leader>s "cc<esc>"sp
vnoremap <leader><leader>t "cc<esc>"tp
vnoremap <leader><leader>u "cc<esc>"up
vnoremap <leader><leader>v "cc<esc>"vp
vnoremap <leader><leader>w "cc<esc>"wp
vnoremap <leader><leader>x "cc<esc>"xp
vnoremap <leader><leader>y "cc<esc>"yp
vnoremap <leader><leader>z "cc<esc>"zp

" paste system clipboard
vnoremap <leader><leader>* "cc<esc>"*p

"----------------------------
" insert mode - paste
inoremap <leader><leader>a <c-r>a
inoremap <leader><leader>b <c-r>b
inoremap <leader><leader>c <c-r>c
inoremap <leader><leader>d <c-r>d
inoremap <leader><leader>e <c-r>e
inoremap <leader><leader>f <c-r>f
inoremap <leader><leader>g <c-r>g
inoremap <leader><leader>h <c-r>h
inoremap <leader><leader>i <c-r>i
inoremap <leader><leader>j <c-r>j
inoremap <leader><leader>k <c-r>k
inoremap <leader><leader>l <c-r>l
inoremap <leader><leader>m <c-r>m
inoremap <leader><leader>n <c-r>n
inoremap <leader><leader>o <c-r>o
inoremap <leader><leader>p <c-r>p
inoremap <leader><leader>q <c-r>q
inoremap <leader><leader>r <c-r>r
inoremap <leader><leader>s <c-r>s
inoremap <leader><leader>t <c-r>t
inoremap <leader><leader>u <c-r>u
inoremap <leader><leader>v <c-r>v
inoremap <leader><leader>w <c-r>w
inoremap <leader><leader>x <c-r>x
inoremap <leader><leader>y <c-r>y
inoremap <leader><leader>z <c-r>z

" paste system clipboard
inoremap <leader><leader>* <c-r>*

"----------------------------
" command mode - paste
cnoremap <leader><leader>a <c-r>a
cnoremap <leader><leader>b <c-r>b
cnoremap <leader><leader>c <c-r>c
cnoremap <leader><leader>d <c-r>d
cnoremap <leader><leader>e <c-r>e
cnoremap <leader><leader>f <c-r>f
cnoremap <leader><leader>g <c-r>g
cnoremap <leader><leader>h <c-r>h
cnoremap <leader><leader>i <c-r>i
cnoremap <leader><leader>j <c-r>j
cnoremap <leader><leader>k <c-r>k
cnoremap <leader><leader>l <c-r>l
cnoremap <leader><leader>m <c-r>m
cnoremap <leader><leader>n <c-r>n
cnoremap <leader><leader>o <c-r>o
cnoremap <leader><leader>p <c-r>p
cnoremap <leader><leader>q <c-r>q
cnoremap <leader><leader>r <c-r>r
cnoremap <leader><leader>s <c-r>s
cnoremap <leader><leader>t <c-r>t
cnoremap <leader><leader>u <c-r>u
cnoremap <leader><leader>v <c-r>v
cnoremap <leader><leader>w <c-r>w
cnoremap <leader><leader>x <c-r>x
cnoremap <leader><leader>y <c-r>y
cnoremap <leader><leader>z <c-r>z

" paste system clipboard
cnoremap <leader><leader>* <c-r>*



