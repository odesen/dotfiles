" enter the current millenium
set nocompatible

" show line numbers
set number

" Encoding
set encoding=utf-8

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

" Status bar
set laststatus=2

" search down into subfolders
" provides tab-completion for all file-related tasks
set path+=**

" display all matchings files when we tab complete
set wildmenu

" create the 'tags' file (may need to install ctags first)
command! MakeTags !ctags -R .

let g:netrw_banner=0 " disable annoying banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 " open splits to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
