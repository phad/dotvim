" Disable toolbar
set guioptions-=T

" Disable scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=b

" Font family and size
set guifont=Inconsolata:h16

" MacVim specific
if has("gui_macvim")
  set antialias
endif
