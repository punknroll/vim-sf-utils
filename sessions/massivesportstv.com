let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
imap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
map! <S-Insert> <MiddleMouse>
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
vnoremap  :call PhpDocRange()
nnoremap  :call PhpDocSingle()
nmap d :cs find d =expand("<cword>")
nmap i :cs find i ^=expand("<cfile>")$
nmap f :cs find f =expand("<cfile>")
nmap e :cs find e =expand("<cword>")
nmap t :cs find t =expand("<cword>")
nmap c :cs find c =expand("<cword>")
nmap g :cs find g =expand("<cword>")
nmap s :cs find s =expand("<cword>")
nmap ,gq :%s/\s\+/ /ggq1G
vmap ,gq :s/\s\+/ /ggvgq
map Q gq
nmap <silent> S :let @x=@""_diw"xP
vmap [% [%m'gv``
nmap <silent> \cv <Plug>VCSVimDiff
nmap <silent> \cu <Plug>VCSUpdate
nmap <silent> \cU <Plug>VCSUnlock
nmap <silent> \cs <Plug>VCSStatus
nmap <silent> \cr <Plug>VCSReview
nmap <silent> \cq <Plug>VCSRevert
nmap <silent> \cn <Plug>VCSAnnotate
nmap <silent> \cN <Plug>VCSSplitAnnotate
nmap <silent> \cl <Plug>VCSLog
nmap <silent> \cL <Plug>VCSLock
nmap <silent> \ci <Plug>VCSInfo
nmap <silent> \cg <Plug>VCSGotoOriginal
nmap <silent> \cG <Plug>VCSClearAndGotoOriginal
nmap <silent> \cd <Plug>VCSDiff
nmap <silent> \cD <Plug>VCSDelete
nmap <silent> \cc <Plug>VCSCommit
nmap <silent> \ca <Plug>VCSAdd
map \t <Plug>TaskList
nmap <silent> \ssl <Plug>SnippetsListSnippets
nmap <silent> \ssd <Plug>SnippetsDeleteSnippet
nmap <silent> \sse <Plug>SnippetsEditSnippet
nmap <silent> \ssP <Plug>SnippetsInsertSnippet
nmap <silent> \ssp <Plug>SnippetsAppendSnippet
vmap <silent> \ssa <Plug>SnippetsAddSnippet
nmap <silent> \ssa <Plug>SnippetsAddSnippet
nnoremap \gp :GitPullRebase
nnoremap \gc :GitCommit
nnoremap \gA :GitAdd <cfile>
nnoremap \ga :GitAdd
nnoremap \gl :GitLog
nnoremap \gs :GitStatus
nnoremap \gD :GitDiff --cached
nnoremap \gd :GitDiff
nmap <silent> \bv :VSBufExplorer
nmap <silent> \bs :HSBufExplorer
nmap <silent> \be :BufExplorer
vmap ]% ]%m'gv``
nmap _j :%call Justify('tw',4)
vmap _j :call Justify('tw',4)
vmap a% [%v]%
nmap gx <Plug>NetrwBrowseX
map g :cs find 0 =expand("<cword>")
map g :cs find 3 =expand("<cword>")
nnoremap <silent> <Plug>CVSWatchRemove :CVSWatch remove
nnoremap <silent> <Plug>CVSWatchOn :CVSWatch on
nnoremap <silent> <Plug>CVSWatchOff :CVSWatch off
nnoremap <silent> <Plug>CVSWatchAdd :CVSWatch add
nnoremap <silent> <Plug>CVSWatchers :CVSWatchers
nnoremap <silent> <Plug>CVSUnedit :CVSUnedit
nnoremap <silent> <Plug>CVSEditors :CVSEditors
nnoremap <silent> <Plug>CVSEdit :CVSEdit
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <Plug>VCSVimDiff :VCSVimDiff
nnoremap <silent> <Plug>VCSUpdate :VCSUpdate
nnoremap <silent> <Plug>VCSUnlock :VCSUnlock
nnoremap <silent> <Plug>VCSStatus :VCSStatus
nnoremap <silent> <Plug>VCSSplitAnnotate :VCSAnnotate!
nnoremap <silent> <Plug>VCSReview :VCSReview
nnoremap <silent> <Plug>VCSRevert :VCSRevert
nnoremap <silent> <Plug>VCSLog :VCSLog
nnoremap <silent> <Plug>VCSLock :VCSLock
nnoremap <silent> <Plug>VCSInfo :VCSInfo
nnoremap <silent> <Plug>VCSClearAndGotoOriginal :VCSGotoOriginal!
nnoremap <silent> <Plug>VCSGotoOriginal :VCSGotoOriginal
nnoremap <silent> <Plug>VCSDiff :VCSDiff
nnoremap <silent> <Plug>VCSDelete :VCSDelete
nnoremap <silent> <Plug>VCSCommit :VCSCommit
nnoremap <silent> <Plug>VCSAnnotate :VCSAnnotate
nnoremap <silent> <Plug>VCSAdd :VCSAdd
nnoremap <SNR>46_ListSnippets :ListSnippets
nnoremap <SNR>46_DeleteSnippet :DeleteSnippet
nnoremap <SNR>46_EditSnippet :EditSnippet
nnoremap <SNR>46_InsertSnippet :InsertSnippet
nnoremap <SNR>46_AppendSnippet :AppendSnippet
vnoremap <SNR>46_AddSnippet :AddSnippet
nnoremap <SNR>46_AddSnippet :%AddSnippet
vmap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
nmap <C-Space><C-Space>d:vert scs find d =expand("<cword>")
nmap <C-Space><C-Space>i:vert scs find i ^=expand("<cfile>")$
nmap <C-Space><C-Space>e:vert scs find e =expand("<cword>")
nmap <C-Space><C-Space>t:vert scs find t =expand("<cword>")
nmap <C-Space><C-Space>c:vert scs find c =expand("<cword>")
nmap <C-Space><C-Space>g:vert scs find g =expand("<cword>")
nmap <C-Space><C-Space>s:vert scs find s =expand("<cword>")
nmap <C-Space>d :scs find d =expand("<cword>")
nmap <C-Space>i :scs find i ^=expand("<cfile>")$
nmap <C-Space>f :scs find f =expand("<cfile>")
nmap <C-Space>e :scs find e =expand("<cword>")
nmap <C-Space>t :scs find t =expand("<cword>")
nmap <C-Space>c :scs find c =expand("<cword>")
nmap <C-Space>g :scs find g =expand("<cword>")
nmap <C-Space>s :scs find s =expand("<cword>")
map <F5> :setlocal spell! spelllang=en_us
map <S-Insert> <MiddleMouse>
imap <NL> <Plug>IMAP_JumpForward
inoremap  :call PhpDocSingle()i
iabbr ezfe {foreach __ as $k => $val}{/foreach}
iabbr ezfes {foreach __ as $k => $val sequence array( __ ) as $seq}{/foreach}
iabbr ezfcn fetch( content, node, hash( 'node_id', ) )3hi
iabbr ezfcl fetch( content, list, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfcls fetch( content, list, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfcla fetch( content, list, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfclas fetch( content, list, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfclsa fetch( content, list, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfclc fetch( content, list_count, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ) ) )
iabbr ezfclca fetch( content, list_count, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'attribute_filter', array( __ ) ) )
iabbr ezfct fetch( content, tree, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfcts fetch( content, tree, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfcta fetch( content, tree, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfctas fetch( content, tree, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfctsa fetch( content, tree, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfctc fetch( content, tree_count, hash( 'parent_node_id', __,'class_filter_type', include,'class_filter_array', array( __ )  ) )
iabbr ezfctca fetch( content, tree_count, hash( 'parent_node_id', __ ,'attribute_filter', array( __ ) ) )
abbr cv Ezcv
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=start,eol,indent
set balloonexpr=eclim#util#Balloon(eclim#util#GetLineError(line('.')))
set cmdheight=3
set cscopeprg=/usr/local/bin/cscope
set cscopetag
set cscopeverbose
set dictionary=~/.vim/dict/actionscript.dict
set fileencodings=ucs-bom,utf-8,default,latin1
set foldclose=all
set grepprg=grep\ -nH\ $*
set helplang=de
set history=50
set iminsert=0
set imsearch=0
set incsearch
set iskeyword=@,48-57,_,192-255,-,$
set keywordprg=:help
set laststatus=2
set makeprg=/opt/flex/bin/mxmlc\ %
set mouse=a
set omnifunc=actionscriptcomplete#CompleteAS
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim72,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/php,/usr/share/vim/addons,~/.vim/eclim,~/.vim/eclim/after
set scrolljump=5
set scrolloff=3
set shiftwidth=4
set showcmd
set softtabstop=4
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
set termencoding=utf-8
set window=50
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /media/develop2/massivesportstv.com
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +61 extension/massivesportstv/design/ezwebin/override/templates/full/channelseite.tpl
badd +34 extension/massivesportstv/design/ezwebin/templates/parts/banners.tpl
badd +24 extension/massivesportstv/design/ezwebin/javascript/startfancybox.js
badd +82 extension/massivesportstv/design/ezwebin/templates/pagelayout.tpl
badd +11 extension/massivesportstv/design/ezwebin/override/templates/line/skyscraper_banner.tpl
silent! argdel *
edit extension/massivesportstv/design/ezwebin/javascript/startfancybox.js
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=eclim#javascript#complete#CodeComplete
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=EclimGetJavascriptIndent(v:lnum)
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0),0},),;
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
set winfixwidth
setlocal winfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 31 - ((30 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 029l
lcd /media/develop2/massivesportstv.com
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
