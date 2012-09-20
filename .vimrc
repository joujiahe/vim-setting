" General settings
set nu

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd            " Show (partial) command in status line.
set showmatch          " Show matching brackets.
"set ignorecase         " Do case insensitive matching
"set smartcase          " Do smart case matching
set hlsearch           " Highlight search
set incsearch          " Incremental search
"set autowrite          " Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
" Send more characters for redraws
"set ttyfast
"
" " Set this to the name of your terminal that supports mouse codes.
" " Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
"set ttymouse=xterm2
set mouse=a            " Enable mouse usage (all modes)

" Taglist settings
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1

" CPPComplete settings
filetype plugin on
set ofu=syntaxcomplete#Complete

" MiniBuffExplore settings
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
let g:miniBufExplForceSyntaxEnable = 1
"let g:miniBufExplorerMoreThanOne=1
"map <Leader>c :CMiniBufExplorer<CR>
"map <Leader>u :UMiniBufExplorer<CR>
"map <Leader>t :TMiniBufExplorer<CR>
"nmap <F4> :bd <CR>

" Winmanager integration with NERDTree
let g:NERDTree_title="[NERDTree]"

function! NERDTree_Start()
	exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
	return 1
endfunction

function! NERDTree_WrapUp()
	let s:lastCursorRow = line('.')
	let s:lastCursorColumn = virtcol('.')
	let s:lastDirectoryDisplayed = b:completePath
endfunction


" Winmanager setting
let g:winManagerWindowLayout="NERDTree|TagList"

" Toggles window
nmap tl :TlistToggle<CR>
nmap tt :NERDTreeToggle<CR>

nmap tw :if IsWinManagerVisible () <BAR> WMToggle <CR> <BAR> else <BAR> WMToggle <CR> : q <CR> endif <CR><CR> 
"nmap wm :WMToggle<CR>


" Cscope settings
nmap cs :cs find s 
nmap csf :cs find f 
nmap csw :cs find s <C-R>=expand("<cword>") <CR> <CR>

" NerdTree settings
set autochdir
let NERDTreeChDirMode=2
let NERDTreeShowHidden = 1
nnoremap <leader>n :NERDTree .<CR>

" Rebuild ctags and cscope
nmap <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q . <CR> :!find -name "*" > cscope.files <CR> <CR> :!cscope -b <CR> <CR>
