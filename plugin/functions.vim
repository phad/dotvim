" http://technotales.wordpress.com/2010/03/31/preserve-a-vim-function-that-keeps-your-state/
function! Preserve(command)
  " Save search history and cursor position
  let save_search = @/
  let save_pos = getpos('.')

  " Run the command
  execute a:command

  " Restore search and position
  let @/ = save_search
  call setpos('.', save_pos)
endfunction

function! StripTrailingWhitespace()
  call Preserve("%s/\\s\\+$//e")
endfunction


nmap _$ :call StripTrailingWhitespace()<CR>
nmap _= :call Preserve("normal gg=G")<CR>
