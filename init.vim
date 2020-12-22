
"please read through this file and change what you need to change

let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'

" let g:mkdp_browser = 'chromium'

map e $
" map H ^


"
" ===
" === System
" ===

" set foldmethod=marker
set foldmethod=syntax
set wrap
set foldlevel=99
set tw=0
set foldenable
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set autoindent
set smartindent
set mouse=a
set encoding=utf-8

set clipboard+=unnamedplus

set completeopt=longest,noinsert,menuone,noselect,preview
set undofile

" Prevent incorrect backgroung rendering
let &t_ut=''

syntax enable

let mapleader=" "

syntax on 
set number 

" Show command autocomplete
" set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
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
set tabstop=2     " 读到档案的\t (Tab 字元) 时，要解译为几个空白
set shiftwidth=2  " tab 宽
set softtabstop=2 " Backspace
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
autocmd FileType php set tabstop=4     " 读到档案的\t (Tab 字元) 时，要解译为几个空白
autocmd FileType php set shiftwidth=4  " tab 宽
autocmd FileType php set softtabstop=4 " Backspace
au BufNewFile,BufRead *.blade.php set filetype=html

" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"


" ===
" === Insert Mode Cursor Movement
" ===
inoremap <C-a> <ESC>A


noremap <LEADER><CR> :nohlsearch<CR>
set incsearch 
" set tabstop=4
set ignorecase 
map Q :q<CR>
map S :w<CR>
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
" map <LEADER>n :NERDTreeToggle<CR>
map <LEADER>n :Ranger<CR>

set ttyfast "should make scrolling faster
set lazyredraw "same as above
set colorcolumn=100
set visualbell
set updatetime=100
set virtualedit=block
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


" ===
" === Terminal Behaviors
" ===
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_Color_14 = '#9AEDFE'

" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>


" Opening a terminal window
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>

call plug#begin('~/.vim/plugged')
" Plug 'alvan/vim-closetag'
" Plug 'tobyS/pdv'
" Plug 'othree/csscomplete.vim'
Plug 'KabbAmine/vCoolor.vim' " <Alt-C> In GNU/Linux it uses a simple GTK+ dialog via Zenity or Yad.
Plug 'airblade/vim-rooter'

Plug 'mzlogin/vim-markdown-toc'

Plug 'posva/vim-vue'

Plug 'ryanoasis/vim-devicons'

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }

Plug 'jwalton512/vim-blade'
" 注释
Plug 'lambdalisue/suda.vim' " do stuff like :sudowrite

" Plug 'theniceboy/eleline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"===
"=== colorscheme
"===

" Plug 'ayu-theme/ayu-vim'
" Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'connorholyday/vim-snazzy'
Plug 'ajmwagar/vim-deus'
"Plug 'rakr/vim-one'
" Plug 'arzg/vim-colors-xcode'

" Plug 'scrooloose/nerdtree'
" Plug 'tpope/vim-commentary' 

Plug 'preservim/nerdcommenter'

Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs' 

Plug 'dhruvasagar/vim-table-mode'

" Git
" Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
" Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim' " gv (normal) to show git log

" Plug 'kien/ctrlp.vim'

" Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }

" Markdown
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } , 'for' :['markdown', 'vim-plug']}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

Plug 'junegunn/vim-easy-align'

" Plug 'terryma/vim-multiple-cursors'
Plug 'tmhedberg/SimpylFold'
" Plug 'itchyny/vim-cursorword'

" Plug 'Yggdroot/indentLine'
Plug 'nathanaelkane/vim-indent-guides'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'


Plug 'francoiscabrol/ranger.vim'

Plug 'AndrewRadev/switch.vim'
" Formatter
" Plug 'Chiel92/vim-autoformat'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'ajmwagar/vim-deus'
Plug 'jaxbot/semantic-highlight.vim'
" Plug 'godlygeek/tabular'
" 查找相同单词，表顺序
Plug 'osyo-manga/vim-anzu'

" Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim' 

Plug 'RRethy/vim-illuminate' " automatically highlighting other uses of the word under the cursor
" voldikss/vim-floaterm

Plug 'mhinz/vim-startify'

Plug 'mbbill/undotree'

" Vim Applications
Plug 'itchyny/calendar.vim'
" Plug 'terryma/vim-multiple-cursors' 多光标操作

" Plug 'junegunn/fzf', { 'do': './install --bin' }
" Plug 'junegunn/fzf.vim'

" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

" ===
" === vim-calendar
" ===
"noremap \c :Calendar -position=here<CR>
noremap \\ :Calendar -view=clock -position=here<CR>
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
" let g:ctrlp_map = '<c-p>'
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
map tx :r !figlet -f block 
map td :r !date "+%Y-%m-%d %H:%M:%S"<CR>

" w !sudo tee %
" w ~./***   写到某路径  r 读

" ===
" === Dress up my vim
" ===
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark

color deus
" color dracula

" let g:airline_theme='base16_flat'
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
" let NERDTreeMapCloseDir = "n"
" map <LEADER>m :Bookmark
" map <C-f> :OpenBookmark

" let NERDTreeMapChangeRoot = "y"


" 显示不同变量的不同颜色
nnoremap <Leader>s :SemanticHighlightToggle<cr>


" === Dress up my vim
" ===
map <LEADER>c1 :set background=dark<CR>:colorscheme snazzy<CR>:AirlineTheme dracula<CR>
" map <LEADER>c2 :colorscheme deus<CR>:AirlineTheme dracula<CR>
" map <LEADER>c3 :colorscheme xcodedark<CR>:AirlineTheme dracula<CR>
" map <LEADER>c4 :colorscheme ayu<CR>:AirlineTheme ayu_dark<CR>

"===
"=== transparent
"===
" highlight Normal guibg=NONE ctermbg=None

" color snazzy
let g:SnazzyTransparent = 1
let g:deus_termcolors=256

" ===
" === vim-indent-guide
" ===
" hi IndentGuidesOdd  guibg=#CE9C9C   ctermbg=3
" hi IndentGuidesEven guibg=green ctermbg=4
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 1
" silent! unmap <LEADER>ig
" autocmd WinEnter * silent! unmap <LEADER>ig

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
let g:coc_global_extensions = ['coc-vimlsp', 'coc-emmet', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-python', 'coc-omnisharp', 'coc-yaml', 'coc-translator', 'coc-phpls']
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
nmap <leader>rn :CocCommand document.renameCurrentWord<CR>
" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')
" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

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


nmap tt :CocCommand explorer<CR>
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
" nnoremap <LEADER>r :Ranger<CR>


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
" nnoremap \f :Autoformat<CR>


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
let g:Illuminate_delay = 280
hi illuminatedWord cterm=undercurl gui=undercurl

"===
"=== airline
"===

  let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1
noremap \p :echo expand('%:p')<CR>


" adding to vim-airline's statusline

" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='dracula'

" IndentLine {{
" let g:indentLine_char_list = ['▏', '¦', '┆', '┊']
" let g:indentLine_color_term = 239
" let g:indentLine_char = '▏'
" let g:indentLine_first_char = '¦'
" let g:indentLine_showFirstIndentLevel = 1
" let g:indentLine_setColors = 0
" }}


" ==
" == GitGutter
" ==

let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '░'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▒'
" autocmd BufWritePost * GitGutter
nnoremap <LEADER>gf :GitGutterFold<CR>
nnoremap H :GitGutterPreviewHunk<CR>
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

"===
"=== startify
"===
let g:startify_bookmarks = [ 
            \ {'c': '~/.config/nvim/init.vim'},
            \ {'n': '~/WorkPlatform/www/wffl/.env'},]
let g:startify_lists = [
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]
let g:startify_custom_indices = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0']
let g:startify_files_number = 10

" Can be enabled or disabled
" adding to vim-startify screen
let g:webdevicons_enable_startify = 1

" ===
" === suda.vim
" ===
cnoreabbrev sudowrite w suda://%
cnoreabbrev sw w suda://%

" " ===
" " === vim-go
" " ===
" let g:go_def_mapping_enabled = 0
" let g:go_template_autocreate = 0
" let g:go_textobj_enabled = 0
" let g:go_auto_type_info = 1
" let g:go_def_mapping_enabled = 0
" let g:go_highlight_array_whitespace_error = 1
" let g:go_highlight_build_constraints = 1
" let g:go_highlight_chan_whitespace_error = 1
" let g:go_highlight_extra_types = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_format_strings = 1
" let g:go_highlight_function_calls = 1
" let g:go_highlight_function_parameters = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_generate_tags = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_space_tab_error = 1
" let g:go_highlight_string_spellcheck = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_trailing_whitespace_error = 1
" let g:go_highlight_types = 1
" let g:go_highlight_variable_assignments = 0
" let g:go_highlight_variable_declarations = 0
" let g:go_doc_keywordprg_enabled = 0

" " PHP documenter script bound to Control-P
" autocmd FileType php inoremap <C-f> <ESC>:call PhpDocSingle()<CR>i
" autocmd FileType php nnoremap <C-f> :call PhpDocSingle()<CR>
" autocmd FileType php vnoremap <C-f> :call PhpDocRange()<CR>

"===
"=== php-cs-fixer
"===

map <F2> :!php-cs-fixer fix --config ~/.php_cs %<CR>

"===
"=== comment
"===
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCommentEmptyLines = 1
let g:NERDDefaultAlign = 'left'
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
map gcc <LEADER>c<LEADER>

autocmd FileType html,php map <LEADER>cm ko<++><ESC><LEADER>cc<LEADER><LEADER>



" ===
" === FZF
" ===

set rtp+=/usr/local/opt/fzf
set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf
set rtp+=/home/david/.linuxbrew/opt/fzf
noremap <C-p> :Files<CR>
noremap <C-f> :Rg<CR>
noremap <C-h> :History<CR>
"noremap <C-t> :BTags<CR>
noremap <C-l> :Lines<CR>
" noremap <C-w> :Buffers<CR>
" noremap <leader>; :History:<CR>

let g:fzf_preview_window = 'right:60%'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
  \ 'source': s:list_buffers(),
  \ 'sink*': { lines -> s:delete_buffers(lines) },
  \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
\ }))

noremap <c-d> :BD<CR>

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.7 } }


" ===
" === Far.vim
" ===
noremap <LEADER>f :F  **/*<left><left><left><left><left>
" noremap <LEADER>r :Far  **/*<left><left><left><left><left>
let g:far#mapping = {
		\ "replace_undo" : ["l"],
		\ }

" au FileType html let b:AutoPairs = AutoPairsDefine({'>': '<', '!!' : '!!'})

"===
"=== vue comment
"===


nnoremap <silent> <leader>. :cd %:p:h<CR>:echo expand('%:p:h')<CR>

" Open up lazygit
noremap \g :Git 
noremap <c-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>

"===
"=== markdown
"===

let g:mkdp_browser = 'google-chrome-stable'


"===
"=== title
"===
" use normal command like `<leader>xi(`
nmap <leader>x  <Plug>(coc-cursors-operator)

nmap <silent> <C-c> <Plug>(coc-cursors-position)
nmap <silent> <C-d> <Plug>(coc-cursors-word)*
xmap <silent> <C-d> y/\V<C-r>=escape(@",'/\')<CR><CR>gN<Plug>(coc-cursors-range)gn
xmap <silent> <C-d> <Plug>(coc-cursors-range)

"===
"=== markdown snippets
"===

autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype markdown inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd Filetype markdown inoremap <buffer> ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap <buffer> ,m - [ ] 
autocmd Filetype markdown inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,l --------<Enter>

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" ===
" === Undotree
" ===
noremap L :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
	nmap <buffer> u <plug>UndotreeNextState
	nmap <buffer> e <plug>UndotreePreviousState
	nmap <buffer> U 5<plug>UndotreeNextState
	nmap <buffer> E 5<plug>UndotreePreviousState
endfunc

" ===
" === Command Mode Cursor Movement
" ===
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-w> <S-Right>

" ===
" === vim-rooter
" ===
let g:rooter_patterns = ['__vim_project_root', '.git/']
let g:rooter_silent_chdir = 1

