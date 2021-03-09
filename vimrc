"turn on syntax highlighting
syntax enable

"break vi compatibility mode to allow extra features
set nocompatible

"smart indent detects when you might be interested in indenting a line and does
"so for you
set smartindent
set autoindent

"this bit, found in :help smartindent, make smartindent retain the indention
"level for lines commented with  #, which I prefer
inoremap # X#
"change the shiftwidth and tab to 4 to save some space in editing
set shiftwidth=4
set tabstop=4
set noexpandtab
"expand tabs to the spaces they represent for portability

"when writing paired parentheses, flash the matching member of the closure
set showmatch

"when typing a command, show what has been typed so far
set showcmd

"enable type ahead find-like function in vim
set incsearch

"include a reading of the current cursor position in the lower left corner
set ruler

"assign folds based on the indent level of the text
set foldmethod=indent 

"keep three lines of scroll around the cursor as often as possible
set scrolloff=3

"highlight search strings
set hlsearch

"add line numbers
set number

"automatically change to the same directory as the edited file
"http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
set autochdir

filetype plugin on
filetype plugin indent on

"when a .plx file is encountered, apply the perl syntax highlighting
autocmd BufNewFile,BufRead *.plx set filetype=perl 
autocmd FileType perl setlocal comments+=:#
"autocmd FileType perl set formatoptions=cqnra
autocmd FileType perl setlocal formatoptions=q
autocmd FileType perl setlocal textwidth=80
autocmd FileType perl setlocal omnifunc=OmniPerl_Complete
autocmd FileType perl setlocal spell

"when a .cfg file is encountered, turn off spell checking
autocmd BufNewFile,BufRead *.cfg set nospell

autocmd BufNewFile,BufRead *.tt set filetype=html

autocmd BufNewFile,BufRead *.R set filetype=r
autocmd FileType r setlocal tabstop=4
autocmd FileType r setlocal formatoptions=q

autocmd FileType html setlocal textwidth=80
autocmd FileType html setlocal formatoptions-=tcq 

autocmd BufNewFile,BufRead *.txt set filetype=text
autocmd FileType text setlocal textwidth=80
"autocmd FileType text setlocal formatoptions=tcqa 

autocmd FileType tex setlocal textwidth=80
autocmd FileType plaintex setlocal textwidth=80
autocmd FileType tex setlocal spell
autocmd FileType plaintex setlocal spell
"autocmd FileType latex set formatoptions-=tcq 

autocmd BufNewFile,BufRead *.nf set filetype=groovy
