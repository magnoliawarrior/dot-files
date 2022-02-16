set number
syntax on
set tabstop=2
noremap <space> /

" highlight searches
set hlsearch

" ignore case in search unless capital letter is used.
set ignorecase
set smartcase

" Enalbe use of the mouse for all modes
if has('mouse')
	set mouse=a
endif

" Change cursor shape to block for nvc, and vertical for insert
" Cursor in terminal
  " https://vim.fandom.com/wiki/Configuring_the_cursor
  " 1 or 0 -> blinking block
  " 2 solid block
  " 3 -> blinking underscore
  " 4 solid underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
    
  if &term =~ '^xterm'
    " normal mode
    let &t_EI .= "\<Esc>[0 q"
    " insert mode
    let &t_SI .= "\<Esc>[6 q"
  endif
