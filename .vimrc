set number
"set cursorline

syntax on
filetype on
filetype plugin on
filetype indent on
set expandtab
set relativenumber
set textwidth=78
set autoindent
set showmatch
set ruler
set colorcolumn=78
set hlsearch
set incsearch
autocmd FileType * set shiftwidth=4
autocmd FileType * set tabstop=4
set mouse=a

" MacVim stuff
set gcr=n-v-c:ver10-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
set gfn=Inconsolata:h16
set guioptions-=T 

" HTML
autocmd FileType * set shiftwidth=4
autocmd FileType * set tabstop=4

" Javascript
autocmd FileType javascript,html set shiftwidth=2
autocmd FileType javascript,html set tabstop=2
"set errorformat=%f(%l):\ %m
"make F10 call make for linting etc.
inoremap <silent> <F10> <C-O>:make<CR>
map <silent> <F10> :make<CR>

" Python stuff..
au FileType python set tabstop=4
au FileType python set shiftwidth=4
au FileType python setl softtabstop=4
"autocmd FileType python compiler pylint
highlight SpellBad term=reverse ctermbg=grey
highlight ExtraWhitespace ctermbg=red
au BufRead,BufNewFile *.py,*.pyw match ExtraWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.js match ExtraWhitespace /\s\+$/
"highlight SpellBad term=reverse ctermbg=0

" Node stuff
au BufNewFile,BufRead *.ejs set filetype=html
au BufRead,BufNewFile *.coffee set filetype=coffee
autocmd FileType coffee compiler espresso

" Actionscript
au BufNewFile,BufRead *.as set filetype=actionscript

imap jj <Esc>

