function! s:small_terminal() abort
  new
  wincmd J
  call nvim_win_set_height(0, 12)
  set winfixheight
  setlocal nonumber
  setlocal scrolloff=0
  setlocal norelativenumber
  term
endfunction

" ANKI: Make a small terminal at the bottom of the screen.
nnoremap <leader>st :call <SID>small_terminal()<CR>
nnoremap <leader>sv :call <SID>vertical_terminal()<CR>

function! s:vertical_terminal()
    rightbelow vsplit
    terminal
    setlocal nonumber norelativenumber
endfunction


" autocmd BufEnter <buffer> :setlocal scrolloff=0
