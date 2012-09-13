set nu

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd            " Show (partial) command in status line.
"set showmatch          " Show matching brackets.
"set ignorecase         " Do case insensitive matching
"set smartcase          " Do smart case matching
set hlsearch           " Highlight search
set incsearch          " Incremental search
"set autowrite          " Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a            " Enable mouse usage (all modes)

let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1

let NERDTreeShowHidden = 1


" MiniBuffExplore
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 


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
let g:winManagerWindowLayout="MiniBufExpl,NERDTree|TagList"

" Toggles window
nmap tl :TlistToggle<CR>
nmap tt :NERDTreeToggle<CR>

nmap tw :if IsWinManagerVisible () <BAR> WMToggle <CR> <BAR> else <BAR> WMToggle <CR> : q <CR> endif <CR><CR> 
"nmap wm :WMToggle<CR>


" Cscope settings
nmap cs :cs f s 
nmap csw :cs f s <C-R>=expand("<cword>") <CR> <CR>


" Rebuild ctags and cscope
nmap <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q . <CR> :!find -name "*" > cscope.files <CR> <CR> :!cscope -b <CR> <CR>
