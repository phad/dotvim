if has("autocmd")
  filetype plugin indent on

  au FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  au BufRead,BufNewFile *.ru  setfiletype ruby
  au BufRead,BufNewFile *.ejs setfiletype html

  au BufWritePre *.css,*.erb,*.feature,*.html,*.js,*.rb :call <SID>StripTrailingWhitespace()
end
