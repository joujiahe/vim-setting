"
"
" Show line number
set nu

let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let g:winManagerWindowLayout = 'MiniBufExpl,FileExplorer|TagList'

" Toogle window manager
nmap wm :WMToggle<CR>
"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
