map e $
map H ^

"
" ===
" === System
" ===

set foldmethod=marker
" set foldmethod=syntax
set wrap
set foldlevel=99
set foldenable
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8

set clipboard=unnamedplus

" Prevent incorrect backgroung rendering
let &t_ut=''

syntax enable

let mapleader=" "

syntax on 
set number 

" Show command autocomplete
" set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
" set wildmenu                                                 " show a navigable menu for tab completion
" set wildmode=longest,list,full

" Press space twice to jump to the next '<++>' and edit it
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

map <LEADER>w :set wrap<Esc>

set hlsearch 

" ===
" === Editor behavior
" ===
" Better tab
set expandtab
set tabstop=4     " 读到档案的\t (Tab 字元) 时，要解译为几个空白
set shiftwidth=4  " tab 宽
set softtabstop=4 " Backspace
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5


" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"



noremap <LEADER><CR> :nohlsearch<CR>
set incsearch 
" set tabstop=4
set ignorecase 
map Q :q<CR>
map W :w<CR>
map s <nop>
map R :source $MYVIMRC<CR>
map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitbelow<CR>:split<CR>
map <LEADER>l <C-w>l
map <LEADER>k <C-W>k
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
" Rotate screens
noremap srk <C-w>b<C-w>K
noremap srh <C-w>b<C-w>H
map <LEADER>+ :vertical resize+5<CR>
map <LEADER>- :vertical resize-5<CR>
map <LEADER>n :NERDTreeToggle<CR>

" map <LEADER>t :Tabularize /
set mouse=a


set relativenumber
set cursorline
set showcmd

" 提示相同地方
set autochdir
" ===
" === Restore Cursor Position
" ===
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


noremap E 5k
noremap D 5j
set smartcase
call plug#begin('~/.vim/plugged')
" 注释

" Plug 'theniceboy/eleline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"===
"=== colorscheme
"===

Plug 'ayu-theme/ayu-vim'
Plug 'connorholyday/vim-snazzy'
Plug 'ajmwagar/vim-deus'
"Plug 'rakr/vim-one'
Plug 'arzg/vim-colors-xcode'

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary' 
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs' 

Plug 'dhruvasagar/vim-table-mode'

" Git
" Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
" Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim' " gv (normal) to show git log

Plug 'kien/ctrlp.vim'

Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }

" Markdown
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } , 'for' :['markdown', 'vim-plug']}

Plug 'junegunn/vim-easy-align'

" Plug 'terryma/vim-multiple-cursors'
Plug 'tmhedberg/SimpylFold'
Plug 'itchyny/vim-cursorword'

Plug 'Yggdroot/indentLine'
Plug 'nathanaelkane/vim-indent-guides'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'


Plug 'francoiscabrol/ranger.vim'

Plug 'AndrewRadev/switch.vim'
" Formatter
Plug 'Chiel92/vim-autoformat'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'ajmwagar/vim-deus'
Plug 'jaxbot/semantic-highlight.vim'
" Plug 'godlygeek/tabular'
" 查找相同单词，表顺序
Plug 'osyo-manga/vim-anzu'

" Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim' 

" Plug 'RRethy/vim-illuminate'
" voldikss/vim-floaterm

Plug 'mhinz/vim-startify'
let g:ctrlp_map = '<c-p>'
" Plug 'terryma/vim-multiple-cursors' 多光标操作

" Plug 'junegunn/fzf', { 'do': './install --bin' }
" Plug 'junegunn/fzf.vim'
call plug#end()

" false or fale

" let g:switch_mapping = "-"


" ===
" === Tab management
" ===
" Create a new tab with tu
map tu :tabe<CR>
" Move around tabs with tn and ti
map th :-tabnext<CR>
" Move around tabs with tn and ti
map th :-tabnext<CR>
map tl :+tabnext<CR>
" Move the tabs with tmn and tmi
map tmh :-tabmove<CR>
map tml :+tabmove<CR>

" Call figlet
map tx :r !figlet 
map td :r !date "+%Y-%m-%d %H:%M:%S"

" w !sudo tee %
" w ~./***   写到某路径  r 读

" ===
" === Dress up my vim
" ===
let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
" let g:airline_theme='base16_flat'
let g:airline_theme='dracula'
" let g:airline_theme='base16' 
" 红色
" let g:airline_theme='fairyfloss' 
" 紫色
" let g:airline_theme='behelit' 
" 蓝色
" let g:airline_theme='base16_snazzy' 
" snazzy
" let g:lightline = {
" \ 'colorscheme': 'snazzy',
" \ }


" ===
" === NERDTree
" ===
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" 显示不同变量的不同颜色
nnoremap <Leader>s :SemanticHighlightToggle<cr>


" === Dress up my vim
" ===
map <LEADER>c1 :set background=dark<CR>:colorscheme snazzy<CR>:AirlineTheme dracula<CR>
map <LEADER>c2 :colorscheme deus<CR>:AirlineTheme dracula<CR>
map <LEADER>c3 :colorscheme xcodedark<CR>:AirlineTheme dracula<CR>
map <LEADER>c4 :colorscheme ayu<CR>:AirlineTheme ayu_light<CR>

" color snazzy
" let g:SnazzyTransparent = 1
" set background=dark    " Setting dark mode
color deus
" let g:deus_termcolors=256

" ===
" === vim-indent-guide
" ===
" let g:indent_guides_guide_size = 1
" let g:indent_guides_start_level = 2
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_color_change_percent = 1
" silent! unmap <LEADER>ig
" autocmd WinEnter * silent! unmap <LEADER>ig




let g:SnazzyTransparent = 1

" Cursor shape
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" Indentation
nnoremap < <<
nnoremap > >>

" ===
" === coc
" ===
" fix the most annoying bug that coc has
silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
let g:coc_global_extensions = ['coc-vimlsp', 'coc-emmet', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-python', 'coc-omnisharp', 'coc-yaml', 'coc-translator']
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]	=~ '\s'
endfunction
inoremap <silent><expr> <Tab>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<Tab>" :
			\ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <silent><expr> <space>t coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Useful commands
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
" nnoremap <silent> gd <Plug>(coc-definition)
" nnoremap <silent> gy <Plug>(coc-type-definition)
" nnoremap <silent> gi <Plug>(coc-implementation)
" nnoremap <silent> gr <Plug>(coc-references)
" nnoremap <leader>rn <Plug>(coc-rename)
" nmap <leader>rn <Plug>(coc-rename)
" nmap <leader>rn :CocCommand document.renameCurrentWord<CR>
" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" xmap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap if <Plug>(coc-funcobj-i)
" omap af <Plug>(coc-funcobj-a)

" nmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <TAB> <Plug>(coc-range-select)


" nmap tt :CocCommand explorer<CR>
" coc-translator
nmap ts <Plug>(coc-translator-p)

" ==
" let g:multi_cursor_use_default_mapping=0
" let g:multi_cursor_start_word_key = '<c-k>'
" let g:multi_cursor_select_all_word_key = '<a-k>'
" let g:multi_cursor_start_key = 'g<c-k>'
" let g:multi_cursor_select_all_key = 'g<a-k>'
" let g:multi_cursor_next_key = '<c-k>'
" let g:multi_cursor_prev_key = '<c-p>'
" let g:multi_cursor_skip_key = '<C-x>'
" let g:multi_cursor_quit_key = '<Esc>'

" ===
" === Ranger.vim
" ===
nnoremap <LEADER>r :Ranger<CR>


" Compile function
map <LEADER>e :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
  elseif &filetype == 'php'
    :set splitbelow
    :sp
    :res -5
		:term php %
    " :exec "!time php %<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!chromium % &"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run %
	endif
endfunc


" vnoremap Y "+y
" set clipboard=unnamedplus

" ===
" === AutoFormat
" ===
nnoremap \f :Autoformat<CR>


"===
"=== Vim-table-mode
"===
map \t :TableModeToggle<CR>

" ===
" === vim-easy-align
" ===
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" anzu
"===========
" mapping
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)

" clear status
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)

" statusline
set statusline=%{anzu#search_status()}
"-------------

map gtd :Gdiff<CR>

nmap <silent> <C-c> <Plug>(coc-cursors-position)
nmap <silent> <C-d> <Plug>(coc-cursors-word)*
xmap <silent> <C-d> y/\V<C-r>=escape(@",'/\')<CR><CR>gN<Plug>(coc-cursors-range)gn
" xmap <silent> <C-d> <Plug>(coc-cursors-range)
" use normal command like `<leader>xi(`
map vw viw

vmap: :norm 
" xmap <silent> <C-d> y/\V<C-r>=escape(@",'/\')<CR><CR>gN<Plug>(coc-cursors-range)gn

" nmap <expr> <silent> ] <SID>select_current_word()
" function! s:select_current_word()
"   if !get(g:, 'coc_cursors_activated', 0)
"     return "\<Plug>(coc-cursors-word)"
"   endif
"   return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
" endfunc

hi CocCursorRange guibg=#b16286 guifg=#ebdbb2

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-e>"
let g:UltiSnipsJumpForwardTrigger="<C-e>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
let g:UltiSnipsSnippetDirectories = ['UltiSnips']

let g:snips_author="DuWeifan"
"===
"=== alacritty-vim
"===

if &term == "alacritty"        
  let &term = "xterm-256color"
endif


" ===
" === vim-illuminate
" ===
" let g:Illuminate_delay = 750
" hi illuminatedWord cterm=undercurl gui=undercurl

"===
"=== airline
"===

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

" IndentLine {{
" let g:indentLine_char_list = ['▏', '¦', '┆', '┊']
" let g:indentLine_color_term = 239
" let g:indentLine_char = ''
" let g:indentLine_first_char = ''
" let g:indentLine_showFirstIndentLevel = 1
" let g:indentLine_setColors = 0
" }}


" ==
" == GitGutter
" ==
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1
autocmd BufWritePost * GitGutter
nnoremap <LEADER>gf :GitGutterFold<CR>
nnoremap T :GitGutterPreviewHunk<CR>
nnoremap <LEADER>g- :GitGutterPrevHunk<CR>
nnoremap <LEADER>g= :GitGutterNextHunk<CR>

" ===
" === GV
" ===
nnoremap gv :GV<CR>

"===
"=== fold
"===
" :help folding
" 命令小结
" zc	关闭当前打开的折叠
" zo	打开当前的折叠
" zm	关闭所有折叠
" zM	关闭所有折叠及其嵌套的折叠
" zr	打开所有折叠
" zR	打开所有折叠及其嵌套的折叠
" zd	删除当前折叠
" zE	删除所有折叠
" zj	移动至下一个折叠
" zk	移动至上一个折叠
" zn	禁用折叠
" zN	启用折叠
