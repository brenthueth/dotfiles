set nocompatible
filetype off
" set clipboard=exclude:.*
set clipboard=

let mapleader="\<Space>"       " leader is comma
"Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
set rtp+=$GOROOT/misc/vim
call vundle#rc()
Plugin 'gmarik/vundle'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'tpope/vim-fugitive'
" Plugin 'tmhedberg/SimpylFold'
" Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
" Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
" Plugin 'svermeulen/vim-easyclip'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sjl/gundo.vim'
" Plugin 'rking/ag.vim'
Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
    nmap <Bar> :TagbarToggle<CR>
    let g:tagbar_width=40
    let g:tagbar_show_linenumbers=1

Plugin 'haya14busa/incsearch.vim'

" Plugin 'terryma/vim-expand-region'
" vmap v <Plug>(expand_region_expand)
" vmap <C-v> <Plug>(expand_region_shrink)


Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'zchee/deoplete-jedi'
let g:deoplete#enable_at_startup = 1
autocmd CompleteDone * pclose!
let g:deoplete#auto_complete_delay = 10
" closes the preview window after completion is done


" Plugin 'terryma/vim-multiple-cursors'
Plugin 'mtth/scratch.vim'
Plugin 'wellle/targets.vim'
" Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/mru.vim'
" Plugin 'wakatime/vim-wakatime'

" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'

" Plugin for latex support
" Plugin 'lervag/vimtex'
Plugin 'vim-latex/vim-latex'

" Plugin for folding in latex
" Plugin 'matze/vim-tex-fold'

" Plugin to run the terminal commands in async
Plugin 'skywind3000/asyncrun.vim'

" Plugin to auto-complete 
" Plugin 'maralla/completor.vim'

" altternate to powerline but ended up not using 
" Plugin 'bling/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" let g:airline_theme='durant'

"awesome plugin, which tablularises by given separator 
" :Tab /<symbol>
Plugin 'godlygeek/tabular'

" Pytho nmode for vim supports pylint, rope, pydoc, pyflakes,
" execute one line using ,r
" MORE HEADACHE than USE
" Plugin 'klen/python-mode'

" Plugin to automatically generate ctags & exuberant tags
" Plugin 'xolox/vim-easytags'
"     let g:easytags_autorecurse = 1
"     let g:easytags_async = 1
"     let g:easytags_suppress_report = 1
" Plugin 'xolox/vim-misc'

" Plugin clever f, extends usage of f, F , t And T
Plugin 'rhysd/clever-f.vim'
" plugin for the using tab for the name completion
Plugin 'ervandew/supertab'
" Plugin to allow easy data flow b/n vim and tmux
Plugin 'benmills/vimux'
" plugin to automatically generate the tags file
" Plugin 'ludovicchabant/vim-gutentags'

" Plugin to visually show location in the file in the status bar (see right)
" Plugin 'naddeoa/vim-visual-page-percent'

Plugin 'justinmk/vim-sneak'
Plugin 'FuzzyFinder'
Plugin 'L9'

" increases the utility of space to enchance the repeat command. Use space to
" repeat
" # remvoing as it hijacks ; and breaks sneak
" Plugin 'spiiph/vim-space'
"
"add buffers at the tabline
Plugin 'ap/vim-buftabline'
let g:buftabline_show = 1 " 0 no show, 1 show only if more than 1 buf, 2 always show
let g:buftabline_numbers = 1
let g:buftabline_indicators = 1
let g:buftabline_separators = 1
"
" Plugin 'bling/vim-bufferline'

" better solarized using erb
Plugin 'ericbn/vim-solarized'

" add things to status line
" Plugin 'maciakl/vim-neatstatus'
" hi CursorLine ctermbg=black cterm=none
" hi CursorLine cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue guifg=white
set cursorline
au InsertLeave * set cursorline
au InsertEnter * set nocursorline



" Plugin interactive scratchpad (show live results for python)
Plugin 'metakirby5/codi.vim'

" Plugin emacs like orgmode in Vim
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'

" plugin to show history of yanks
"
" Plugin 'maxbrunsfeld/vim-yankstack'
" nmap <leader>p <Plug>yankstack_substitute_older_paste
" nmap <leader>P <Plug>yankstack_substitute_newer_paste

" Plugin 'vim-scripts/YankRing.vim'
" let g:yankring_clipboard_monitor=0
" nnoremap ,zp :YRPaste<CR>

" Plugin to select calendar in vim-org mode
Plugin 'mattn/calendar-vim'

" Plugin 'shinokada/dragvisuals.vim'
" Plugin 'mhinz/vim-startify'                           " a start screen with recently modified files and vim sessions
"     let g:startify_files_number = 30
"     let g:startify_session_persistence = 0          " automatically update sessions
"     let g:startify_session_delete_buffers = 1       " delete open buffers before loading a new session
"     let g:startify_custom_footer = [
"         \ '',
"         \ '    b   ➤ open in new buffer  :SLoad   ➤ load a session     ',
"         \ '    s,v ➤ open in split       :SSave   ➤ save a session     ',
"         \ '    t   ➤ open in tab         :SDelete ➤ delete a session   ',
"         \ '',
"         \ ]
"     let g:startify_custom_header =
"         \ map(split(system('fortune'), '\n'), '"   ". v:val') + ['']

" Plugin 'vim-scripts/bufmap.vim'

if iCanHazVundle == 0
    echo "Installing Plugins, please ignore key map error messages"
    echo ""
    :BundleInstall
endif

filetype plugin on     " required!
filetype indent on
filetype plugin indent on
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
let g:Powerline_symbols = 'fancy'
" source ~/.vim/bundle/powerline/build/lib/powerline/ext/vim/source_plugin.vim
"python from powerline.ext.vim import source_plugin; source_plugin()
" let $PAGER=''

syntax on
" enables mouse scroll when using iterm
set mouse=a
set ssop-=options
set encoding=utf-8
set history=2707
set undolevels=2512
" set colorcolumn=80
set laststatus=1 "set visualbell
set noerrorbells
set wrapscan
set nowrap
" set nowrap
set noswapfile
"set nobackup
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
set autoindent
set copyindent
set showmatch
set ruler
" set rulerformat=%f
set hlsearch
set wildmenu
set incsearch
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set ignorecase
set smartcase
set smarttab
set lazyredraw
set expandtab
set modelines=0
set backspace=start,indent,eol
set t_Co=256
set showtabline=0
set noshowmode
set scrolloff=10
"set guifont=Monaco:h13
set nolist  "hide invisible characters
set autowrite
"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
"folding settings"
"set foldmethod=indent
set foldnestmax=2
set nofoldenable
set foldlevel=1
set shortmess=at

" since i find it useful at other times too
" set invcursorline
" set cursorline
" autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
" autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg
autocmd BufEnter * silent! lcd %:p:h

" for the vimdiff hide the common lines
set diffopt=filler,context:0

" Folding plugin settings
"let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0
" let localleader=","
" nmap <leader>i <plug>(vimtex-cmd-create)

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" theme configs
" let g:solarized_termcolors=256
" set background=dark
set background=light
colorscheme desert

" setting for vim-visual-page-percent
" set statusline+=%{VisualPercent()}
set statusline=%<\ %n:%F\ %m%r%y%=%-35.(L:\ %l\ /\ %L,\ C:\ %c%V\ (%P)%)

" CtrlP settings
let g:ctrlp_map = '<C-o>'
let g:ctrlp_user_command = 'ag %s -l --smart-case -g ""'

" The option below works only if ctrlp default globfiles() is used to get the
" files, not when user_command (ag above) is used 
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" easymotion configs
" let g:EasyMotion_leader_key = '<Leader>'
" session configs
let g:session_autosave = 'no'

" setting for the super tab to start the completion from top and not backwards
let g:SuperTabDefaultCompletionType = "<c-n>"

" Syntastic always show the errors
let g:syntastic_auto_loc_list=1
let g:syntastic_python_checkers=['flake8']
" let g:syntastic_python_flake8_args='--ignore=E101,E111,E112,E113,E114,E115,E116,E121,E122,E123,E124,E125,E126,E127,E128,E129,E131,E133,E201,E202,E203,E211,E221,E222,E223,E224,E225,E226,E227,E228,E231,E241,E242,E251,E261,E262,E265,E266,E271,E272,E273,E274,E301,E302,E303,E304,E401,E402,E501,E502,E701,E702,E703,E704,E711,E712,E713,E714,E721,E731,E901,E902,W191,W291,W292,W293,W391,W503,W601,W602,W603,W604,F401'

set pastetoggle=<F3>
" change key bindings
"
" nnoremap : ;
" nnoremap ; :
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
" STOP changing the default one key behaviours !
nnoremap H ^
nnoremap L $
" highlight last inserted text
nnoremap gV `[v`]
" make the Y behave similar to D

" center the next or previous find
nmap n :norm! nzzzv<CR>
nmap N :norm! Nzzzv<CR>

nnoremap Y y$
" map M m$
" 
" map ,g :call NERDComment(0,"toggle")<CR>
" map ,g gcc

" map <leader>t :NERDTreeToggle<CR>
" let NERDTreeHighlightCursorline=1
" let NERDTreeIgnore = ['\.out$', '\.bin$', '\.pyc$']
" let g:NERDTreeWinSize = 20
"vmap <C-f> :fold<CR>
set rnu
" nmap <CR> :set rnu!<CR>
map <C-c> :nohlsearch<CR>
"map <C-S-l> :set rl<CR>
"map <C-S-k> :set norl<CR>
" map <C-l> :tabn<CR>
" map <C-h> :tabp<CR>
" map <C-n> :tabnew<CR>

" binding for folding (,)
nmap , 0za

" make - as quit without saving 
nnoremap - :q<CR>
" open vimrc
nnoremap <leader>vi :e ~/.vimrc<CR>
"
" command -nargs=0 -bar Update if &modified 
"                            \|    if empty(bufname('%'))
"                            \|        browse confirm write
"                            \|    else
"                            \|        confirm write
"                            \|    endif
"                            \|endif
" nnoremap <C-k> :up<CR>
" inoremap <C-k> <Esc>:up<CR>i

" save using leader key
map <leader>w :w<CR>
" stupid to map leader (,) in insert mode, slows the typing of , and god
" forbid we type the key after the , that is mapped to some command
" imap <leader>w <Esc>:w<CR>

" Make copy of previous line and comment the previous one, like backup line
map <leader>e yypgcck<CR>

map <leader>m :MRU<CR>
" FIXME
" map <leader>j OFIXME<ESC>,gj
map <leader>j :!python %<CR>

" map <leader>j %!python -m json.tool<CR>
map <leader>d :bd<CR>
" imap <leader>d <Esc>:bd<CR>
" syntastic check
nnoremap <leader>l :SyntasticCheck<CR>



"replace the word under the cursor

nnoremap <leader>f :%s/\<<C-r><C-w>\>/

" map <F1> :exec '!make' <CR>
" imap <F1> :exec '!make' <CR>
map <F1> :silent make\|redraw!\|cc<CR>
" imap <F1> :silent make\|redraw!\|cc<CR>
"command P !python %
"map <C-j> :exec '!python' shellescape(@%, 1)<CR>
"imap <C-j> <Esc>:exec '!python' shellescape(@%, 1)<CR>

" map <C-j> :!gcc -o %.out %; ./%.out<CR>
" imap <C-j> :!gcc -o %.out %; ./%.out<CR>

" map <F2> :YcmCompleter GetDoc<CR>
" imap <F2> <Esc>:YcmCompleter GetDoc<CR>

map <F5> :exec '!python' shellescape(@%, 1)<CR>
" imap <F5> <Esc>:exec '!python' shellescape(@%, 1)<CR>
" Python 3 
"map <C-m> :exec '!python3' shellescape(@%, 1)<CR>
"imap <C-m> <Esc>:exec '!python3' shellescape(@%, 1)<CR>
"map <leader>c :Calc<CR> 

"haya14busa incremental search
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" insert one character only and return back to normal mode
nmap <leader>o i_<Esc>r
" nmap <space> :noh<CR>
"nmap <space> <C-f>
"nmap <S-space> <C-b>
"nnoremap <space> za 
"vnoremap <space> zf

" settigns for gundo
nnoremap <leader>u :GundoToggle<CR>
let g:gundo_width=50
let g:gundo_preview_height=20
" open ag.vim
" changed from ag.vim to ack.vim as ag is deprecated
" Wed 28 Sep 2016 02:38:25 PM EDT 
let g:ackprg = 'ag --vimgrep'
nnoremap <leader>a :Ack<space> 
nnoremap <leader>s O<Esc>j

" highlighted uncommnted print statements in python code
nnoremap <leader>c /^[^#]*\s*print<CR>
nnoremap <leader>b :bu 
" nnoremap <leader>b :Startify<CR>
nnoremap <leader>r :up<CR>:b#<CR>

cmap w!! %!sudo tee > /dev/null %

" insert date on Wed 28 Sep 2016 02:37:09 PM EDT5
nnoremap <F4> "=strftime("%c")<CR>P
inoremap <F4> <C-R>=strftime("%c")<CR>

nmap s <Plug>Sneak_s
nmap S <Plug>Sneak_S
" visual-mode
xmap s <Plug>Sneak_s
xmap S <Plug>Sneak_S
" operator-pending-mode
omap s <Plug>Sneak_s
omap S <Plug>Sneak_S

map gn :bn<CR>
map gp :bp<CR>
map gd :bd<CR> 
map gb :ls<CR>:buffer<Space>

"improve autocomplete menu color
highlight Pmenu ctermbg=gray ctermfg=black gui=bold


" YCM configs
let g:ycm_auto_trigger = 1
"let g:ycm_semantic_triggers = {'haskell' : ['.']}
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" This is to fix the ValueError:  still no compile flags, no completions yet
" for the  C and CPP codes
" let g:ycm_global_ycm_extra_conf = "~/dotfiles/vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.


" Code to rename the file
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        "exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
" map <leader>r :call RenameFile()<cr>
let g:Powerline_symbols = 'fancy'
let g:Powerline_dividers_override = ["\Ue0b0", "\Ue0b1", "\Ue0b2", "\Ue0b3"]
let g:Powerline_symbols_override = { 'BRANCH': "\Ue0a0", 'LINE': "\Ue0a1", 'RO': "\Ue0a2" }


" settings for dragvisuals.vim
runtime plugin/dragvisuals.vim

vmap  <expr>  <LEFT>   DVB_Drag('left')                     
vmap  <expr>  <RIGHT>  DVB_Drag('right')                    
vmap  <expr>  <DOWN>   DVB_Drag('down')                     
vmap  <expr>  <UP>     DVB_Drag('up')                       
vmap  <expr>  D        DVB_Duplicate()                      

" Remove any introduced trailing whitespace after moving... 
let g:DVB_TrimWS = 1



" program to open pdf files as text using pdftotext
" run pdftotext to read PDF files
" fun s:readpdf()
"     if (!executable("pdftotext"))
"         echo "Error: pdftotext not installed or not in path"
"         return
"     endif

"     let tmp = tempname()
"     " invoke: pdftotext sourcefile.pdf tempfile
"     call system ("pdftotext '" . escape (expand("<afile>"), "'") . "' " . tmp)
"     setlocal nobin
"     execute "silent '[-1r " . tmp
"     " clean up the temporary file
"     call delete(tmp)

"     " make the buffer unwritable: we don't want to clobber the PDF file!
"     set nowrite
" endfun

" autocmd BufReadPost,FileReadPost *.pdf call s:readpdf()

" Adding ability to read Man pages from vimrc
runtime! ftplugin/man.vim

" Setting the tmux pane name as vi file name
autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window ". expand("%:p:."))


" Code for Vimux
function! VimuxSlime()
    call VimuxSendText(@v)
    call VimuxSendKeys("Enter")
endfunction

"let g:VimuxWidth = "35" "default is 20
let g:VimuxOrientation = 'v'
let g:VimuxUseNearest = 1


function! VimuxSlimeGCC()
    call VimuxSendText()
    call VimuxSendKeys("Enter")
endfunction

" vimux vs send the paragraph
vmap <Leader>vs "vy:call VimuxSlime()<CR>
nmap <Leader>vs vip<Leader>vs<CR>

nmap <leader>vv :VimuxRunCommand("")
" map <C-j> <C-k>:VimuxRunCommand("clear; p; gcc " .bufname("%") ."; ./a.out; p")<CR>
" imap <C-j> <Esc><C-k>:VimuxRunCommand("p; gcc " .bufname("%") ."; ./a.out; p")<CR>i
" map <Leader>vc map <C-j> :!gcc -o %.out %; ./%.out<CR>

"
" make shift enter to run the current line and go to new line
" imap <S-CR> <Esc>"vyy:call VimuxSlime()<CR>ji
" imap <F5> <Esc>"vyy:call VimuxSlime()<CR>ji
nmap <F5> "vyy:call VimuxSlime()<CR>j
" vmux vs send the line
nmap <Leader>vv "vyy:call VimuxSlime()<CR>j
map <Leader>vr Bv$"vy:call VimuxSlime()<CR>
map <Leader>vv <Leader>w:VimuxRunCommand("run " .bufname("%"))<CR>
" map <Leader><Leader> ,w:VimuxRunCommand("rm ./Map; gcc Map.c -o Map -ansi ; ./Map")<CR>

" run the whole file
nmap <Leader>vr <Leader>w:VimuxRunCommand("run " .bufname("%"))<CR>
nmap <Leader>vf <Leader>w:VimuxRunCommand("run " .bufname("%"))<CR>
" vimux send the whole page (all)
nmap <Leader>va ggVG"vy:call VimuxSlime()<CR>
" vimux open 
nmap <Leader>vo :call VimuxOpenRunner()<CR>
" vimux close
nmap <Leader>vq :VimuxCloseRunner<CR>
" vimux inspect (transfer control to the vimux pane)
nmap <Leader>vg :VimuxInspectRunner<CR>
" vimux run previous command
nmap <Leader>vl :VimuxRunLastCommand<CR>
nmap <Leader>vp :VimuxPromptCommand<CR>

"settings for targets.vim
let g:targets_aiAI = 'aiAI'
let g:targets_nlNL = 'nlNL'
let g:targets_nlNL = 'nN  '
let g:targets_pairs = '()b {}B [] <>'
let g:targets_quotes = '" '' `'
let g:targets_quotes = '"d '' `'
let g:targets_separators = ', . ; : + - = ~ _ * # / | \ & $'
let g:targets_tagTrigger = 't'
let g:targets_argTrigger = 'a'
let g:targets_argOpening = '[([]'
let g:targets_argClosing = '[])]'
let g:targets_argSeparator = ','

" Persistent Undo
" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

" Automatically enter paste mode when pasting in terminal 
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()


" settings for ultisnips
"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" copy to buffer
vmap <leader>y :w! ~/.vimbuffer<CR>
nmap <leader>y :.w! ~/.vimbuffer<CR>
" paste from buffer
map <leader>p :r ~/.vimbuffer<CR>

let maplocalleader = "\\"


" make the 's' and 'S' insert a single character
" nnoremap s :exec "normal i".nr2char(getchar())."\e"<CR>
nnoremap S :exec "normal a".nr2char(getchar())."\e"<CR>

" map <Space> :noh<CR>
" hi CursorLine cterm=NONE ctermbg=black ctermfg=white guibg=darkblue guifg=white
" hi CursorLine gui=underline cterm=underline


" redirect g search output to scratch
command! -nargs=? Filter let @a='' | execute 'g/<args>/y A' | new | setlocal bt=nofile | put! a


" Truncate digits
" %s/\d\+\.\d\+/\=printf('%.2f',str2float(submatch(0)))/g
"
" Change the colors of the search higlight

" Resize the windows using keyboard shortcut
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" indent whole file
nnoremap <F7> mzgg=G`z

" mappings for org-mode
let g:org_agenda_files=['~/org/*.org']

" nnoremap m ]m
" nnoremap M [m
map <tab> }
map <s-tab> {
        
" Capitalise first letter of every word
map <F9> :s/\v<(.)(\w*)/\u\1\L\2/g

" C-n as next buffer
" current not C-p as that is for CtrlP
nnoremap <C-n> :bnext<CR>
nnoremap <leader>1 :bu 1<CR>
nnoremap <leader>2 :bu 2<CR>
nnoremap <leader>3 :bu 3<CR>
nnoremap <leader>4 :bu 4<CR>
nnoremap <leader>5 :bu 5<CR>
nnoremap <leader>6 :bu 6<CR>
nnoremap <leader>7 :bu 7<CR>
nnoremap <leader>8 :bu 8<CR>
nnoremap <leader>9 :bu 9<CR>

map <C-s> :w<CR>

map <leader><leader> <C-w><C-w>

vnoremap <leader>i c[<C-r>"]()<Esc>i
"
" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

" map q: :q
map <leader>g gcc
map <leader><Enter> za
" map <C-j> :w<CR>:VimuxRunCommand("run " .bufname("%"))<CR>
" imap <C-j> <Esc>:w<CR>:VimuxRunCommand("run " .bufname("%"))<CR>

nmap <leader>j :up<CR>:VimuxRunCommand("run " .expand('%:p'))<CR>

nmap <leader>l :up<CR>:VimuxRunCommand("!! ")<CR>:VimuxRunCommand(" ")<CR>


" imap <C-g> <Plug>IMAP_JumpForward
nmap <C-g> <Plug>IMAP_JumpForward


" fixes the colors of the matching parenthesis/braces
hi MatchParen cterm=underline ctermbg=white ctermfg=black

" let g:bufferline_echo = 0
" autocmd VimEnter *
" 	\ let &statusline='%{bufferline#refresh_status()}'
" 	  \ .bufferline#get_status_string()

Plugin 'christoomey/vim-tmux-navigator'


map <C-b> :CtrlPMRUFiles<CR>
" imap <C-b> <Esc>:CtrlPMRUFiles<CR>



map ! <leader>vp
map <F3> <leader>vl

Plugin 'kshenoy/vim-signature'


Plugin 'rakr/vim-one'
let g:airline_theme='one'
colorscheme one
set background=light
hi Search cterm=NONE ctermbg=lightblue ctermfg=black


Plugin 'rhysd/vim-grammarous'
let g:grammarous#show_first_error = 1

set clipboard+=unnamedplus

nnoremap <silent> ,s "=nr2char(getchar())<cr>P
