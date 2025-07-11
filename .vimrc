" Start of Config
source ~/.vim/keymaps.vim
source ~/.vim/startify.vim
source ~/.vim/vimtex.vim 
set number
set cursorline
set relativenumber  
set virtualedit=onemore  
set autoindent
set clipboard=unnamedplus
let mapleader = " "
" set fillchars+=vert:\
" set fillchars+=horiz:\
" set fillchars+=vert:\ ,horiz:\
set fillchars=fold:\
" set smartindent
" let g:AutoPairsMapCh = 0

" Keymaps for easy navigation
inoremap jk <Esc>
" vnoremap J :m'>+1<CR>gv  
" vnoremap K :m'<-2<CR>gv  
vnoremap <C-j> :m'>+1<CR>gv  
vnoremap <C-k> :m'<-2<CR>gv  
nnoremap QQ :qa!<CR>
nnoremap ZQ :wq!<CR>
vnoremap ; <Esc>
nnoremap <C-s> :w!<CR>
inoremap <C-s> <Esc>:w!<CR>
nnoremap <C-o> o<Esc>k<CR>gv
nnoremap <Leader>h :TerminalSplit bash<CR>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <leader>g :GodotRun<CR>
" nnoremap <leader>y "+y
nnoremap y "+y
nnoremap p "+p
vnoremap J gj
vnoremap K gk
" = Fast Scrolling =  
" Easy shits
" inoremap ( ()<Left>
" inoremap [ []<Left>
" inoremap { {}<Left>
" inoremap " ""<Left>
" inoremap ' ''<Left>

" Keymaps for NERDtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Keymaps  for fzf.vim
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Keymaps for coc.nvim
" Use <Tab> and <S-Tab> to navigate completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <CR> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Options for coc.Vim
let g:coc_disable_signs = 1
" set signcolumn=yes:1
" set signcolumn=no
" highlight signcolumn guibg=NONE ctermbg=NONE
" highlight SignColumn ctermbg=green
"
" Options for buftabline
set hidden
" nnoremap <C-N> :bnext<CR>
" nnoremap <C-P> :bprev<CR>
nnoremap n :bnext<CR>
nnoremap N :bprev<CR>
" let g:coc_global_extensions = ['coc-rls']
let g:coc_global_extensions = ['coc-rust-analyzer']
" let g:coc_global_extensions = ['coc-asm-lsp']

" Options for vim-airline 
" let g:airline_section_x = ''  " Disable the z section
let g:airline_section_y = ''  " Disable the z section
" let g:airline_section_z = ''  " Disable the z section
" let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#whitespace#enabled = 0

" Settings for NERDtree
let g:NERDTreeMinimalUI = 1
let g:NERDTreeMinimalMenu = 1

" Settings for coc.nvim
let g:coc_disable_startup_warning = 1

" Keymaps for Vim-Terminal
nnoremap <Leader>h :TerminalSplit bash<CR>

" Settings for buftabline
let g:buftabline_show = 0  " Disable buftabline
let g:buftabline_separator = '|'
let g:buftabline_arrow = '▶'

" Plugins (Statusline, Theme, motion)
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ghifarit53/tokyonight-vim'
Plug 'mhinz/vim-startify'
" Plug 'catppuccin/vim'
" Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'prabirshrestha/vim-lsp'
Plug 'tc50cal/vim-terminal'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-buftabline'
Plug '~/.vim/plugged/comvimed'
Plug 'jiangmiao/auto-pairs'
Plug 'Raimondi/delimitMate'
" Plug 'bling/vim-bufferline'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'ryanoasis/vim-devicons'
Plug 'V1337Q/buffereze'
Plug 'habamax/vim-godot'
Plug 'vimsence/vimsence'
Plug 'jupyter-vim/jupyter-vim'
Plug 'tomasiser/vim-code-dark'
Plug 'V1337Q/Schatten-VIM'
Plug 'V1337Q/VIM-Diagnostic-Lines'
Plug 'dense-analysis/ale'
call plug#end()


" Settings for Vim-Airline

" Tokyonight Colorscheme
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0
" let g:airline_theme = 'catppuccin_mocha'
colorscheme tokyonight
highlight CursorLineSign guifg=#7aa2f7 ctermfg=81    
command! RunRust !cargo run

" Map <F5> to compile and run Rust code
nnoremap <F5> :RunRust<CR>

augroup RustRun
    autocmd!
    autocmd FileType rust nnoremap <buffer> <F5> :RunRust<CR>
augroup END

      " \ 'n' : '󰊠',

let g:airline_mode_map = {
      \ 'n' : 'N',
      \ 'i' : 'I',
      \ 'R' : 'R',
      \ 'v' : 'V',
      \ 'V' : 'VL',
      \ "\<C-v>" : 'VB',
      \ 'c' : 'C',
      \ 's' : 'S',
      \ 'S' : 'SL',
      \ "\<C-s>" : 'SB',
      \ 't': 'T',
      \}

"  \ ' %3p%%',
" let g:bufferline_separator = ' ▏'  
" let g:airline_section_z = ''
" let g:airline_section_z = airline#section#create([
"   \ '%{&filetype}',
"   \ ' %l|%L | %c|%C',
"   \ ' %3p%%',
"   \ ' %{airline#extensions#coc#get_status()}',
"   \ ' %{get(g:, "coc_git_status", "")}',
" \ ])
function! MaxColumn()
  return virtcol('$')
endfunction
  " \ ' %{substitute(airline#extensions#coc#get_status(), "[✗✓➜]", "", "g")}',  

  " \ '%{&filetype}',
  " \ ' %3p%%',
  " \ ' %{airline#extensions#coc#get_status()}',
let g:airline_section_z = airline#section#create([
  \ ' %l|%L | %c|%{MaxColumn()}',
  \ ' %{get(g:, "coc_git_status", "")}',
\ ])

" function! AirlineBuffers()
"   let buffers = []
"   for nr in filter(range(1, bufnr('$')), 'buflisted(v:val)')
"     call add(buffers, fnamemodify(bufname(nr), ':t'))
"   endfor
"   return join(buffers, ' | ')
" endfunction

" let g:airline_section_c = '%{AirlineBuffers()}'
set runtimepath+=~/.vim/plugged/buffereze


" Godot-VIM

" let g:godot_executable = '/mnt/c/Users/Cluts/Downloads/Godot_v4.4-stable_win64.exe/Godot_v4.4-stable_win64.exe'
" let g:godot_run_detached = 1
let g:godot_executable = 'cmd.exe /mnt/c/Users/Cluts/Downloads/Godot_v4.4-stable_win64.exe/Godot_v4.4-stable_win64.exe'

let g:godot_run_detached = 1

func! GodotSettings() abort

	setlocal foldmethod=expr

	setlocal tabstop=4

	nnoremap <buffer> <F4> :GodotRunLast<CR>

	nnoremap <buffer> <F5> :GodotRun<CR>

	nnoremap <buffer> <F6> :GodotRunCurrent<CR>

	nnoremap <buffer> <F7> :GodotRunFZF<CR>

endfunc

augroup godot | au!

	au FileType gdscript call GodotSettings()

augroup end

" Detect .dtl files as 'dialogic'
"
au BufRead,BufNewFile *.dtl set filetype=dialogic
"
"


" set t_Co=256
" set termguicolors
"


set t_Co=256

set termguicolors


if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'

	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"

	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

endif


colorscheme default  

syntax on
" colorscheme schatten
" let g:airline_theme = 'base16_gruvbox_dark_soft'
colorscheme tokyonight

let g:loaded_airline = 1
let g:airline_loaded = 1
set laststatus=2



" function! RecolorMode(mode)
" 	if a:mode == 'n'
" 		hi ModeText ctermfg=6       ctermbg=0       cterm=NONE
" 	elseif a:mode == 'i'
" 		hi ModeText ctermfg=1       ctermbg=0       cterm=NONE
" 	elseif a:mode == 'R'
" 		hi ModeText ctermfg=2       ctermbg=0       cterm=NONE
" 	elseif a:mode == 'v' || a:mode == 'V' || a:mode == '^V'
" 		hi ModeText ctermfg=3       ctermbg=0       cterm=NONE
" 	elseif a:mode == 'c'
" 		hi ModeText ctermfg=4       ctermbg=0       cterm=NONE
" 	elseif a:mode == 't'
" 		hi ModeText ctermfg=5       ctermbg=0       cterm=NONE
" 	endif

" 	return ''
" endfunction
function! CocStatus()
	return get(g:, 'coc_status', '')
endfunction
set statusline+=%{CocStatus()}

function! RecolorMode(mode)
	if a:mode == 'n'
		hi ModeText guifg=#449dab       guibg=#111119       cterm=NONE
	elseif a:mode == 'i'
		hi ModeText guifg=#f7768e       guibg=#111119       cterm=NONE
	elseif a:mode == 'R'
		hi ModeText guifg=#9ece6a       guibg=#111119       cterm=NONE
	elseif a:mode == 'v' || a:mode == 'V' || a:mode == '^V'
		hi ModeText guifg=#e0af68       guibg=#111119       cterm=NONE
	elseif a:mode == 'c'
		hi ModeText guifg=#7aa2f7       guibg=#111119       cterm=NONE
	elseif a:mode == 't'
		hi ModeText guifg=#ad8ee6       guibg=#111119       cterm=NONE
	endif

	return ''
endfunction

function! SymbolMode(modified)
endfunction

function! SetFiletype(filetype)
	if a:filetype == ''
		return 'unknown'
	else
		return a:filetype
	endif
endfunction

function! HandleColumnGap()
	let l:col = col('.')

	" if l:col > 9
	" 	return '✖  '
	" else
	" 	return '✖  '
	" endif
	if l:col > 9
		return '✖  '
	else
		return '✖  '
	endif

endfunction

function! GetBranchName()
	let l:dir = expand('%:h')
	if empty(finddir('.git', l:dir . ';'))
		return 'no-git'
	endif
	return trim(system('git -C ' . shellescape(l:dir) . ' branch --show-current 2>/dev/null'))
endfunction

" function! GitDirty()
"   let l:dir = expand('%:p:h')
"   if empty(finddir('.git', l:dir . ';'))
"     return ''
"   endif
"   let l:status = system('git -C ' . shellescape(l:dir) . ' status --porcelain 2>/dev/null')
"   return empty(l:status) ? '' : '✗'
" endfunction

hi StatusLine       guifg=#1a1b26    guibg=NONE    cterm=NONE
hi StatusLineNC     guifg=NONE    guibg=NONE    cterm=NONE

hi Separator        guifg=#111119       guibg=#1a1b26    cterm=NONE
hi Separator2       guifg=#ff9e64       guibg=#111119       cterm=NONE
hi PathText         guifg=#ad8ee6       guibg=#111119       cterm=NONE
hi FileText         guifg=#acb0d0       guibg=#111119       cterm=NONE
hi FiletypeText     guifg=#ff9e64       guibg=#111119       cterm=NONE

hi LineText         guifg=#ff7a92       guibg=#111119       cterm=NONE
hi ColumnText       guifg=#7da6ff       guibg=#111119       cterm=NONE

hi PercentageText   guifg=#7aa2f7       guibg=#111119       cterm=NONE
hi TotalLineText    guifg=#ad8ee6       guibg=#111119       cterm=NONE

hi BranchNameText   guifg=#b9f27c       guibg=#111119       cterm=NONE
hi BranchIDText     guifg=#ff9e64       guibg=#111119       cterm=NONE

set statusline  =%{RecolorMode(mode())}

set statusline +=%#Separator# 
set statusline +=%#ModeText#\ 
set statusline +=%#Separator# 
set statusline +=%#PathText#\ %{expand('%:p:h:t')}\ 
set statusline +=%#Separator# 
set statusline +=%#FileText#\ %t
set statusline +=%#Separator# 

set statusline +=%=

set statusline +=%#Separator# 
set statusline +=%#FiletypeText#%{SetFiletype(&filetype)}
set statusline +=%#Separator#\ 

set statusline +=%#Separator# 
" set statusline+=%{GitDirty()}
set statusline +=%#BranchNameText#%{GetBranchName()}
set statusline +=%#Separator#\ 

set statusline +=%#Separator# 
set statusline +=%#LineText#%2l\ 
set statusline +=%#Separator2#%{HandleColumnGap()}
set statusline +=%#ColumnText#%2c\ 
set statusline +=%#Separator#
set statusline +=%#PercentageText#\ %P\ 
set statusline +=%#Separator2#\ 
set statusline +=%#TotalLineText#%L
set statusline +=%#Separator#

" set statusline +=%#Separator# 
" set statusline +=%#ModeText#󰊠\ 
" set statusline +=%#Separator# 
" set statusline +=%#PathText#\ %{expand('%:p:h:t')}\ 
" set statusline +=%#Separator#
" set statusline +=%#FileText#\ %t
" set statusline +=%#Separator# 

" set statusline +=%=

" set statusline +=%#Separator# 
" set statusline +=%#FiletypeText#%{SetFiletype(&filetype)}
" set statusline +=%#Separator#\ 

" set statusline +=%#Separator# 
" set statusline +=%#BranchNameText#%{GetBranchName()}
" set statusline +=%#Separator#\ 

" set statusline +=%#Separator# 
" set statusline +=%#LineText#%2l\ 
" set statusline +=%#Separator2#%{HandleColumnGap()}
" set statusline +=%#ColumnText#%2c\ 
" set statusline +=%#Separator#
" set statusline +=%#PercentageText#\ %P\ 
" set statusline +=%#Separator2#\ 
" set statusline +=%#TotalLineText#%L
" set statusline +=%#Separator#

sign define CocErrorSign   text=✘ texthl=CocErrorSign
sign define CocWarningSign text=▲ texthl=CocWarningSign
sign define CocInfoSign    text= texthl=CocInfoSign

" Define custom signs with different symbols
sign define CocErrorSign   text=│ texthl=CocErrorSign
sign define CocWarningSign text=│ texthl=CocWarningSign
sign define CocInfoSign    text=│ texthl=CocInfoSign
sign define CocHintSign    text=│ texthl=CocHintSign

highlight CocErrorSign   guifg=#ff5f5f ctermfg=Red
highlight CocWarningSign guifg=#ffaa00 ctermfg=Yellow
highlight CocInfoSign    guifg=#00afff ctermfg=Blue
highlight CocHintSign    guifg=#5fffff ctermfg=Cyan

augroup CocCustomSigns
	autocmd!
	autocmd User CocNvimInit call s:define_coc_signs()
augroup END

function! s:define_coc_signs()
	sign define CocErrorSign   text=│ texthl=CocErrorSign
	sign define CocWarningSign text=│ texthl=CocWarningSign
	sign define CocInfoSign    text=│ texthl=CocInfoSign
	sign define CocHintSign    text=│ texthl=CocHintSign
endfunction

let g:ale_sign_error = '│'
let g:ale_sign_warning = '│'
highlight ALEErrorSign    guibg=#1a1b26 ctermfg=Red    ctermbg=DarkGray
highlight ALEWarningSign    guibg=#1a1b26 
" highlight ALEErrorSign    guifg=#FF0000 guibg=#2E3440 ctermfg=Red    ctermbg=DarkGray

sign define CocError text=✖ texthl=CocErrorSign
sign define CocWarning text=⚠ texthl=CocWarningSign
sign define CocInfo text=ℹ texthl=CocInfoSign
sign define CocHint text=➤ texthl=CocHintSign

let g:coc_status_signs = {
	      \ 'error': '✖',
      \ 'warning': '⚠',
      \ 'info': 'ℹ',
      \ 'hint': '➤',
      \ 'ok': '✓'  
      \ }

sign define ALEGoodLine text=\│ texthl=ALEGoodLineSign
highlight ALEGoodLineSign guifg=#00FF00 ctermfg=Green guibg=NONE ctermbg=NONE

function! UpdateALELineSigns()
	if !exists('g:ale_enabled') || !g:ale_enabled || !buflisted('%')
		return
	endif

	let l:buf = bufnr('%')
	let l:all_issues = ale#buffer#GetLoclist(l:buf)

	silent! execute 'sign unplace * group=ALEGoodLineGroup buffer=' . l:buf

	let l:bad_lines = {}
	for issue in l:all_issues
		let l:bad_lines[issue.lnum] = 1
	endfor

	for lnum in range(1, line('$'))
		if !has_key(l:bad_lines, lnum)
			execute 'sign place ' . lnum . ' line=' . lnum . 
						\ ' name=ALEGoodLine group=ALEGoodLineGroup buffer=' . l:buf
		endif
	endfor
endfunction

augroup ALELineSigns
	autocmd!
	autocmd User ALELintPost,ALEFixPost call UpdateALELineSigns()
	autocmd CursorHold,CursorHoldI,BufEnter * call UpdateALELineSigns()
augroup END

set signcolumn=yes
