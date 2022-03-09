" Name:       pascal.vim
" Version:    0.1
" Maintainer: github.com/CrispyBaccoon
"
" Based on
"
"   https://github.com/andreypopp/plain.vim (MIT License)
"
" which is based on
"
"   https://github.com/pbrisbin/vim-colors-off (MIT License)
"
" which in turn is based on
"
"   https://github.com/reedes/vim-colors-pencil (MIT License)
"
"""
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='pascal'

let s:black           = { "gui": "#24252A", "cterm": "0"   }
let s:medium_gray     = { "gui": "#373639", "cterm": "243" }
let s:white           = { "gui": "#F1F1F1", "cterm": "15"  }
let s:light_black     = { "gui": "#40424b", "cterm": "8"   }
let s:lighter_black   = { "gui": "#545454", "cterm": "240" }
let s:subtle_black    = { "gui": "#303133", "cterm": "236" }
let s:light_gray      = { "gui": "#999999", "cterm": "249" }
" let s:lighter_gray    = { "gui": "#CCCCCC", "cterm": "251" }
let s:lighter_gray    = { "gui": "#DDDDDD", "cterm": "251" }
let s:black           = { "gui": "#262626", "cterm": "0"   }
let s:lightest_gray   = { "gui": "#E5E5E5", "cterm": "251" }
let s:dark_red        = { "gui": "#C30771", "cterm": "1"   }
" let s:light_red       = { "gui": "#E32791", "cterm": "1"   }
" let s:light_red       = { "gui": "#E388A3", "cterm": "1"   }
let s:light_red       = { "gui": "#F4B2B1", "cterm": "1"   }
let s:light_orange    = { "gui": "#FFB79f", "cterm": "1"   }
let s:dark_blue       = { "gui": "#008EC4", "cterm": "4"   }
let s:light_blue      = { "gui": "#B6D6FD", "cterm": "153" }
" let s:dark_cyan       = { "gui": "#20A5BA", "cterm": "6"   }
let s:dark_cyan      = { "gui": "#A09EF8", "cterm": "14"  }
" let s:light_cyan      = { "gui": "#4FB8CC", "cterm": "14"  }
" let s:light_cyan      = { "gui": "#B5B3F8", "cterm": "14"  }
let s:light_cyan      = { "gui": "#C2C1FF", "cterm": "14"  }
let s:dark_green      = { "gui": "#10A778", "cterm": "2"   }
let s:light_green     = { "gui": "#5FD7A7", "cterm": "10"  }
" let s:dark_purple     = { "gui": "#523C79", "cterm": "5"   }
let s:dark_purple      = { "gui": "#C2C1FF", "cterm": "14"  }
" let s:light_purple    = { "gui": "#6855DE", "cterm": "13"  }
let s:light_purple      = { "gui": "#d4a1f2", "cterm": "14"  }
let s:light_yellow    = { "gui": "#f4dbb3", "cterm": "11"  }
let s:dark_yellow     = { "gui": "#A89C14", "cterm": "3"   }

if &background == "dark"
  let s:bg               = s:black
  let s:bg_subtle        = s:light_black
  let s:bg_very_subtle   = s:subtle_black
  let s:norm             = s:lighter_gray
  let s:norm_subtle      = s:light_gray
  let s:norm_very_subtle = s:medium_gray
  let s:purple           = s:light_purple
  let s:cyan             = s:light_cyan
  let s:green            = s:light_green
  let s:red              = s:light_red
  let s:orange           = s:light_orange
  let s:yellow           = s:light_yellow
  let s:visual           = s:lighter_black
  let s:cursor_line      = s:subtle_black
  let s:constant         = s:light_red
  let s:comment          = s:light_gray
  let s:selection        = s:dark_yellow
  let s:selection_fg     = s:black
  let s:ok               = s:light_green
  let s:warning          = s:yellow
  let s:error            = s:light_red
else
  let s:bg               = s:white
  let s:bg_subtle        = s:lighter_gray
  let s:bg_very_subtle   = s:light_gray
  let s:norm             = s:light_black
  let s:norm_subtle      = s:lighter_black
  let s:norm_very_subtle = s:medium_gray
  let s:purple           = s:dark_purple
  let s:cyan             = s:dark_cyan
  let s:green            = s:dark_green
  let s:red              = s:dark_red
  let s:orange           = s:light_orange
  let s:yellow           = s:dark_yellow
  let s:visual           = s:light_blue
  let s:cursor_line      = s:lightest_gray
  let s:constant         = s:dark_blue
  let s:comment          = s:light_gray
  let s:selection        = s:light_yellow
  let s:selection_fg     = s:light_black
  let s:ok               = s:light_green
  let s:warning          = s:yellow
  let s:error            = s:dark_red
endif

unlet s:black
unlet s:medium_gray
unlet s:white
unlet s:light_black
unlet s:lighter_black
unlet s:subtle_black
unlet s:light_gray
unlet s:lighter_gray
unlet s:lightest_gray
unlet s:dark_red
unlet s:light_red
unlet s:light_orange
unlet s:dark_blue
unlet s:light_blue
unlet s:dark_cyan
unlet s:light_cyan
unlet s:dark_green
unlet s:light_green
unlet s:dark_purple
unlet s:light_purple
unlet s:light_yellow
unlet s:dark_yellow

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" Normal {{{
if has("gui")
    call s:h("Normal",    {"fg": s:norm, "bg": s:bg})
    call s:h("Cursor",    {"fg": s:bg, "bg": s:norm})
    let g:hasgui = 'true'
else
    call s:h("Normal",    {"fg": s:norm, "bg": s:bg})
    hi! link Cursor       Identifier
    let g:hasgui = 'false'
endif
hi! link Identifier       Normal
hi! link Function         Identifier
hi! link Type             Normal
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type
hi! link Special          Normal
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special
hi! link VertSplit        Normal
hi! link PreProc          Normal
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc
" }}}

" Operator {{{
call s:h("Noise",         {"fg": s:norm_subtle, "gui": "NONE"})
hi! link Operator         Statement
hi! link LineNr           Noise
hi! link CursorLineNr     LineNr
hi! link FoldColumn       TabLine
hi! link SignColumn       LineNr
" }}}

" Comment {{{
call s:h("Comment",       {"fg": s:comment})
" }}}

" Constant {{{
call s:h("Constant",      {"fg": s:constant})
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
" hi! link Float            Constant
call s:h("Float",         {"bg": s:bg_subtle})
hi! link String           Constant
hi! link Directory        Constant
hi! link Title            Constant
" }}}

" Variable {{{
call s:h("Variable",      {"fg": s:orange})
" }}}

" Statement {{{
call s:h("Statement",     {"fg": s:purple, "gui": "bold"})
hi! link Include          Statement
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Keyword          Statement
hi! link Exception        Statement
" }}}

" ErrorMsg {{{
call s:h("ErrorMsg",      {"fg": s:error})
hi! link Error            ErrorMsg
hi! link Question         ErrorMsg
" }}}
" WarningMsg {{{
call s:h("WarningMsg",    {"fg": s:warning})
" }}}
" MoreMsg {{{
call s:h("MoreMsg",       {"fg": s:norm_subtle, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg          MoreMsg
" }}}

" NonText {{{
call s:h("NonText",       {"fg": s:norm_very_subtle})
hi! link qfLineNr         NonText
" }}}

" Search {{{
call s:h("Search",        {"bg": s:selection, "fg": s:selection_fg})
call s:h("IncSearch",     {"bg": s:selection, "fg": s:selection_fg, "gui": "bold"})
" }}}

" Visual {{{
call s:h("Visual",        {"bg": s:visual})
" }}}
" VisualNOS {{{
call s:h("VisualNOS",     {"bg": s:bg_subtle})
" }}}

" Ignore {{{
call s:h("Ignore",        {"fg": s:bg})
" }}}

" DiffAdd {{{
call s:h("DiffAdd",       {"fg": s:green})
" }}}
" DiffDelete {{{
call s:h("DiffDelete",    {"fg": s:red})
" }}}
" DiffChange {{{
call s:h("DiffChange",    {"fg": s:yellow})
" }}}
" DiffText {{{
call s:h("DiffText",      {"fg": s:constant})
" }}}

" Spell {{{
if has("gui_running")
  call s:h("SpellBad",    {"gui": "underline", "sp": s:red})
  call s:h("SpellCap",    {"gui": "underline", "sp": s:ok})
  call s:h("SpellRare",   {"gui": "underline", "sp": s:error})
  call s:h("SpellLocal",  {"gui": "underline", "sp": s:ok})
else
  call s:h("SpellBad",    {"cterm": "underline", "fg": s:red})
  call s:h("SpellCap",    {"cterm": "underline", "fg": s:ok})
  call s:h("SpellRare",   {"cterm": "underline", "fg": s:error})
  call s:h("SpellLocal",  {"cterm": "underline", "fg": s:ok})
endif
" }}}

" helpHyperText {{{
hi! link helpHyperTextEntry Title
hi! link helpHyperTextJump  String
" }}}

" StatusLine {{{
call s:h("StatusLine",        {"gui": "underline", "bg": s:bg, "fg": s:norm_very_subtle})
" }}}
" StatusLineNC {{{
call s:h("StatusLineNC",      {"gui": "underline", "bg": s:bg, "fg": s:bg_subtle})
" }}}
" WildMenu {{{
call s:h("WildMenu",          {"gui": "underline,bold", "bg": s:bg, "fg": s:norm})
" }}}

" StatuslineMsg {{{
call s:h("StatusLineOk",      {"gui": "underline", "bg": s:bg, "fg": s:ok})
call s:h("StatusLineError",   {"gui": "underline", "bg": s:bg, "fg": s:error})
call s:h("StatusLineWarning", {"gui": "underline", "bg": s:bg, "fg": s:warning})
" }}}

" Pmenu {{{
call s:h("Pmenu",         {"fg": s:norm, "bg": s:cursor_line})
hi! link Pmenu            TabLine
hi! link PmenuSbar        Pmenu
hi! link PmenuThumb       Pmenu
" }}}

" PmenuSel {{{
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:cursor_line, "gui": "bold"})
" }}}

" TabLine {{{
" hi! link TabLine          Normal
call s:h("TabLine", {"fg": s:comment, "bg": s:bg})
call s:h("Folded", {"fg": s:comment, "bg": s:bg})
hi! link TabLineSel       Keyword
hi! link TabLineFill      TabLine
hi! link EndOfBuffer      TabLine
" }}}

" CursorLine {{{
call s:h("CursorLine",    {"bg": s:cursor_line})
" }}}
" CursorColumn {{{
call s:h("ColorColumn",   {"bg": s:cursor_line})
" }}}

" MatchParen {{{
call s:h("MatchParen",    {"bg": s:bg_subtle, "fg": s:norm})
" }}}

hi link diffRemoved       DiffDelete
hi link diffAdded         DiffAdd
hi link yamlBlockMappingKey Statement
hi link pythonOperator Statement

" HTML Headers {{{
hi! link htmlH1 Normal
hi! link htmlH2 Normal
hi! link htmlH3 Normal
hi! link htmlH4 Normal
hi! link htmlH5 Normal
hi! link htmlH6 Normal
" }}}

" Signify, git-gutter {{{
hi link SignifySignAdd              LineNr
hi link SignifySignDelete           LineNr
hi link SignifySignChange           LineNr
hi link GitGutterAdd                LineNr
hi link GitGutterDelete             LineNr
hi link GitGutterChange             LineNr
hi link GitGutterChangeDelete       LineNr
" }}}

" Javascript {{{
hi link jsFlowTypeKeyword Statement
hi link jsFlowImportType Statement
hi link jsFunction Statement
hi link jsGlobalObjects Normal
hi link jsGlobalNodeObjects Normal
hi link jsArrowFunction Noise
hi link StorageClass Statement
" }}}

" XML {{{
hi link xmlTag Constant
hi link xmlTagName xmlTag
hi link xmlEndTag xmlTag
hi link xmlAttrib xmlTag
" }}}

" Markdown {{{
call s:h("markdownH1",    {"fg": s:red, "gui": "bold"})
call s:h("markdownH2",    {"fg": s:yellow, "gui": "bold"})
call s:h("markdownH3",    {"fg": s:purple, "gui": "bold"})
call s:h("Comment",       {"fg": s:comment, "gui": "italic"})
" hi link markdownH1 Statement
" hi link markdownH2 Statement
" hi link markdownH3 Statement
hi link markdownH4 markdownH1
hi link markdownH5 markdownH2
hi link markdownH6 markdownH3
hi link markdownListMarker Constant
hi link markdownCode Constant
hi link markdownCodeBlock Constant
hi link markdownCodeDelimiter Constant
hi link markdownHeadingDelimiter Constant
" }}}

" VimWiki {{{
hi link VimwikiHeader1 markdownH1
hi link VimwikiHeader2 markdownH2
hi link VimwikiHeader3 markdownH3
" }}}

" Vim {{{
hi link vimHighlight Statement
hi link vimVar Variable
hi link vimLet Statement
hi link vimFuncName Variable
hi link vimUserFunc vimFuncName
hi link vimOper vimHighlight
" }}}

" Dosini {{{
hi link dosiniHeader Statement
hi link dosiniLabel Constant
hi link dosiniValue Variable
" }}}

" ALE {{{
hi link ALEWarning WarningMsg
hi link ALEWarningSign WarningMsg
hi link ALEError ErrorMsg
hi link ALEErrorSign ErrorMsg
hi link ALEInfo InfoMsg
hi link ALEInfoSign InfoMsg
" }}}

" SQL {{{
hi link sqlStatement Statement
hi link sqlKeyword Keyword
" }}}

" Statusline {{{
call s:h("StatusLine", {"fg": s:comment, "bg": s:bg})
" hi StatusLine cterm=reverse ctermbg=234 ctermfg=245 gui=NONE guibg=#17181b guifg=#818696 term=reverse
" hi StatusLineTerm cterm=reverse ctermbg=234 ctermfg=245 gui=NONE guibg=#17181b guifg=#818696 term=reverse
" hi StatusLineNC cterm=reverse ctermbg=238 ctermfg=233 gui=NONE guibg=#545a71 guifg=#22242e
" hi StatusLineTermNC cterm=reverse ctermbg=238 ctermfg=233 gui=NONE guibg=#545a71 guifg=#22242e
" }}}

