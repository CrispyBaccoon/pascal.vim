" Name:       plain.vim
" Version:    0.1
" Maintainer: github.com/andreypopp
" License:    The MIT License (MIT)
"
" Based on
"
"   https://github.com/pbrisbin/vim-colors-off (MIT License)
"
" which in turn based on
"
"   https://github.com/reedes/vim-colors-pencil (MIT License)
"
"""
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='plain'

let s:black           = { "gui": "#24252A", "cterm": "0"   }
let s:medium_gray     = { "gui": "#767676", "cterm": "243" }
let s:white           = { "gui": "#F1F1F1", "cterm": "15"  }
let s:light_black     = { "gui": "#40424b", "cterm": "8"   }
let s:lighter_black   = { "gui": "#545454", "cterm": "240" }
let s:subtle_black    = { "gui": "#303030", "cterm": "236" }
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
let s:dark_purple      = { "gui": "#A09EF8", "cterm": "14"  }
" let s:light_purple    = { "gui": "#6855DE", "cterm": "13"  }
let s:light_purple      = { "gui": "#C2C1FF", "cterm": "14"  }
let s:light_yellow    = { "gui": "#FFDB9F", "cterm": "11"  }
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

" __Normal__
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

" __Operator__
call s:h("Noise",         {"fg": s:norm_subtle, "gui": "NONE"})
hi! link Operator         Statement
hi! link LineNr           Noise
hi! link CursorLineNr     LineNr
hi! link FoldColumn       TabLine
hi! link SignColumn       LineNr

" __Comment__
call s:h("Comment",       {"fg": s:comment, "gui": "italic"})

" __Constant__
call s:h("Constant",      {"fg": s:constant})
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
" hi! link Float            Constant
call s:h("Float",         {"bg": s:bg_subtle})
hi! link String           Constant
hi! link Directory        Constant
hi! link Title            Constant

" __Variable__
call s:h("Variable",      {"fg": s:orange})

" __Statement__
call s:h("Statement",     {"fg": s:purple, "gui": "bold"})
hi! link Include          Statement
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Keyword          Statement
hi! link Exception        Statement

" __ErrorMsg__
call s:h("ErrorMsg",      {"fg": s:error})
hi! link Error            ErrorMsg
hi! link Question         ErrorMsg
" __WarningMsg__
call s:h("WarningMsg",    {"fg": s:warning})
" __MoreMsg__
call s:h("MoreMsg",       {"fg": s:norm_subtle, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg          MoreMsg

" __NonText__
call s:h("NonText",       {"fg": s:norm_very_subtle})
hi! link qfLineNr         NonText

" __Search__
call s:h("Search",        {"bg": s:selection, "fg": s:selection_fg})
call s:h("IncSearch",     {"bg": s:selection, "fg": s:selection_fg, "gui": "bold"})

" __Visual__
call s:h("Visual",        {"bg": s:visual})
" __VisualNOS__
call s:h("VisualNOS",     {"bg": s:bg_subtle})

call s:h("Ignore",        {"fg": s:bg})

" __DiffAdd__
call s:h("DiffAdd",       {"fg": s:green})
" __DiffDelete__
call s:h("DiffDelete",    {"fg": s:red})
" __DiffChange__
call s:h("DiffChange",    {"fg": s:yellow})
" __DiffText__
call s:h("DiffText",      {"fg": s:constant})

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

hi! link helpHyperTextEntry Title
hi! link helpHyperTextJump  String

" __StatusLine__
call s:h("StatusLine",        {"gui": "underline", "bg": s:bg, "fg": s:norm_very_subtle})
" __StatusLineNC__
call s:h("StatusLineNC",      {"gui": "underline", "bg": s:bg, "fg": s:bg_subtle})
" __WildMenu__
call s:h("WildMenu",          {"gui": "underline,bold", "bg": s:bg, "fg": s:norm})

call s:h("StatusLineOk",      {"gui": "underline", "bg": s:bg, "fg": s:ok})
call s:h("StatusLineError",   {"gui": "underline", "bg": s:bg, "fg": s:error})
call s:h("StatusLineWarning", {"gui": "underline", "bg": s:bg, "fg": s:warning})

" __Pmenu__
call s:h("Pmenu",         {"fg": s:norm, "bg": s:cursor_line})
hi! link Pmenu            TabLine
hi! link PmenuSbar        Pmenu
hi! link PmenuThumb       Pmenu

" __PmenuSel__
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:cursor_line, "gui": "bold"})

" hi! link TabLine          Normal
call s:h("TabLine", {"fg": s:comment, "bg": s:bg})
call s:h("Folded", {"fg": s:comment, "bg": s:bg})
hi! link TabLineSel       Keyword
hi! link TabLineFill      TabLine
hi! link EndOfBuffer      TabLine

" __CursorLine__
call s:h("CursorLine",    {"bg": s:cursor_line})
" __CursorColumn__
call s:h("ColorColumn",   {"bg": s:cursor_line})

" __MatchParen__
call s:h("MatchParen",    {"bg": s:bg_subtle, "fg": s:norm})

hi! link htmlH1 Normal
hi! link htmlH2 Normal
hi! link htmlH3 Normal
hi! link htmlH4 Normal
hi! link htmlH5 Normal
hi! link htmlH6 Normal

hi link diffRemoved       DiffDelete
hi link diffAdded         DiffAdd

" Signify, git-gutter
hi link SignifySignAdd              LineNr
hi link SignifySignDelete           LineNr
hi link SignifySignChange           LineNr
hi link GitGutterAdd                LineNr
hi link GitGutterDelete             LineNr
hi link GitGutterChange             LineNr
hi link GitGutterChangeDelete       LineNr

hi link jsFlowTypeKeyword Statement
hi link jsFlowImportType Statement
hi link jsFunction Statement
hi link jsGlobalObjects Normal
hi link jsGlobalNodeObjects Normal
hi link jsArrowFunction Noise
hi link StorageClass Statement

hi link xmlTag Constant
hi link xmlTagName xmlTag
hi link xmlEndTag xmlTag
hi link xmlAttrib xmlTag

" Markdown:
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

" VimWiki:
hi link VimwikiHeader1 markdownH1
hi link VimwikiHeader2 markdownH2
hi link VimwikiHeader3 markdownH3

hi link vimHighlight Statement
hi link vimVar Variable
hi link vimLet Statement
hi link vimFuncName Variable
hi link vimUserFunc vimFuncName
hi link vimOper vimHighlight

hi link yamlBlockMappingKey Statement
hi link pythonOperator Statement

hi link ALEWarning WarningMsg
hi link ALEWarningSign WarningMsg
hi link ALEError ErrorMsg
hi link ALEErrorSign ErrorMsg
hi link ALEInfo InfoMsg
hi link ALEInfoSign InfoMsg

hi link sqlStatement Statement
hi link sqlKeyword Keyword

" statusline
call s:h("StatusLine", {"fg": s:comment, "bg": s:bg})
" hi StatusLine cterm=reverse ctermbg=234 ctermfg=245 gui=NONE guibg=#17181b guifg=#818696 term=reverse
" hi StatusLineTerm cterm=reverse ctermbg=234 ctermfg=245 gui=NONE guibg=#17181b guifg=#818696 term=reverse
" hi StatusLineNC cterm=reverse ctermbg=238 ctermfg=233 gui=NONE guibg=#545a71 guifg=#22242e
" hi StatusLineTermNC cterm=reverse ctermbg=238 ctermfg=233 gui=NONE guibg=#545a71 guifg=#22242e

" Airline
let s:save_cpo = &cpo
set cpo&vim
function! s:build_palette() abort
  if &background == 'light'
    let col_base     = ['#8b98b6', '#cad0de', 244, 251]
    let col_edge     = ['#e8e9ec', '#757ca3', 252, 243]
    let col_error    = ['#e8e9ec', '#cc517a', 254, 125]
    let col_gradient = ['#e8e9ec', '#9fa6c0', 252, 247]
    let col_nc       = ['#8b98b6', '#cad0de', 244, 251]
    let col_warning  = ['#e8e9ec', '#c57339', 254, 130]
    let col_insert   = ['#e8e9ec', '#2d539e', 254, 25]
    let col_replace  = ['#e8e9ec', '#c57339', 254, 130]
    let col_visual   = ['#e8e9ec', '#668e3d', 254, 64]
    let col_red      = ['#cc517a', '#e8e9ec', 125, 254]
  else
    let col_base     = ['#545a71', '#22242e', 238, 233]
    let col_edge     = ['#17181b', '#818696', 234, 245]
    let col_error    = ['#292c37', '#e27878', 234, 203]
    let col_gradient = ['#6b7189', '#3a3e50', 242, 236]
    let col_nc       = ['#545a71', '#22242e', 238, 233]
    let col_warning  = ['#292c37', '#e2a478', 234, 216]
    let col_insert   = ['#292c37', '#8a84c6', 234, 110]
    let col_replace  = ['#292c37', '#e2a478', 234, 216]
    let col_visual   = ['#292c37', '#b4be82', 234, 150]
    let col_red      = ['#e27878', '#292c37', 203, 234]
  endif

  let p = {}
  let p.inactive = airline#themes#generate_color_map(
        \ col_nc,
        \ col_nc,
        \ col_nc)
  let p.normal = airline#themes#generate_color_map(
        \ col_edge,
        \ col_gradient,
        \ col_base)
  let p.insert = airline#themes#generate_color_map(
        \ col_insert,
        \ col_gradient,
        \ col_base)
  let p.replace = airline#themes#generate_color_map(
        \ col_replace,
        \ col_gradient,
        \ col_base)
  let p.visual = airline#themes#generate_color_map(
        \ col_visual,
        \ col_gradient,
        \ col_base)
  let p.terminal = airline#themes#generate_color_map(
        \ col_insert,
        \ col_gradient,
        \ col_base)

  " Accents
  let p.accents = {
        \   'red': col_red,
        \ }

  " Error
  let p.inactive.airline_error = col_error
  let p.insert.airline_error = col_error
  let p.normal.airline_error = col_error
  let p.replace.airline_error = col_error
  let p.visual.airline_error = col_error

  " Warning
  let p.inactive.airline_warning = col_warning
  let p.insert.airline_warning = col_warning
  let p.normal.airline_warning = col_warning
  let p.replace.airline_warning = col_warning
  let p.visual.airline_warning = col_warning

  " Terminal
  let p.normal.airline_term = col_base
  let p.terminal.airline_term = col_base
  let p.visual.airline_term = col_base

  return p
endfunction

let g:airline#themes#plain#palette = s:build_palette()

let &cpo = s:save_cpo
unlet s:save_cpo