" Name:     Solarized vim colorscheme
" Author:   Ethan Schoonover <es@ethanschoonover.com>
" URL:      http://ethanschoonover.com/solarized
"           (see this url for latest release & screenshots)
" License:  OSI approved MIT license (see end of this file)
" Created:  In the middle of the night
" Modified: 2011 Apr 14 (forked 2013 Nov 22)
"
" Usage "{{{
"
" ---------------------------------------------------------------------
" ABOUT:
" ---------------------------------------------------------------------
" Solarized is a carefully designed selective contrast colorscheme with dual
" light and dark modes that runs in both GUI, 256 and 16 color modes.
"
" See the homepage above for screenshots and details.
"
" ---------------------------------------------------------------------
" INSTALLATION:
" ---------------------------------------------------------------------
"
" Two options for installation: manual or pathogen
"
" MANUAL INSTALLATION OPTION:
" ---------------------------------------------------------------------
"
" 1.  Put the files in the right place!
" 2.  Move `solarized.vim` to your `.vim/colors` directory.
"
" RECOMMENDED PATHOGEN INSTALLATION OPTION:
" ---------------------------------------------------------------------
"
" 1.  Download and install Tim Pope's Pathogen from:
"     https://github.com/tpope/vim-pathogen
"
" 2.  Next, move or clone the `vim-colors-solarized` directory so that it is
"     a subdirectory of the `.vim/bundle` directory.
"
"     a. **clone with git:**
"
"       $ cd ~/.vim/bundle
"       $ git clone git://github.com/altercation/vim-colors-solarized.git
"
"     b. **or move manually into the pathogen bundle directory:**
"         In the parent directory of vim-colors-solarized:
"
"         $ mv vim-colors-solarized ~/.vim/bundle/
"
" MODIFY VIMRC:
"
" After either Option 1 or Option 2 above, put the following two lines in your
" .vimrc:
"
"     syntax enable
"     set background=dark
"     colorscheme solarized
"
" or, for the light background mode of Solarized:
"
"     syntax enable
"     set background=light
"     colorscheme solarized
"
" I like to have a different background in GUI and terminal modes, so I can use
" the following if-then. However, I find vim's background autodetection to be
" pretty good and, at least with MacVim, I can leave this background value
" assignment out entirely and get the same results.
"
"     if has('gui_running')
"       set background=light
"     else
"       set background=dark
"     endif
"
" See the Solarized homepage at http://ethanschoonover.com/solarized for
" screenshots which will help you select either the light or dark background.
"
" Other options are detailed below.
"
" IMPORTANT NOTE FOR TERMINAL USERS:
" 
" If you are going to use Solarized in Terminal mode (i.e. not in a GUI version 
" like gvim or macvim), **please please please** consider setting your terminal 
" emulator's colorscheme to used the Solarized palette. I've included palettes 
" for some popular terminal emulator as well as Xdefaults in the official 
" Solarized download available from [Solarized homepage]. If you use 
" Solarized *without* these colors, Solarized will need to be told to degrade
" its colorscheme to a set compatible with the limited 256 terminal palette 
" (whereas by using the terminal's 16 ansi color values, you can set the 
" correct, specific values for the Solarized palette). To use the custom 16
" Solarized colors, add the following line *before* the `colorscheme solarized`
" line:
"
"     set t_Co=16
" 
" If you do use the custom terminal colors, solarized.vim should work out of 
" the box for you. If you are using a terminal emulator that supports 256 
" colors and don't want to use the custom Solarized terminal colors, you will 
" need to use the degraded 256 colorscheme. To do so, simply add the following 
" line *before* the `colorscheme solarized` line:
" 
"     set t_Co=256
" 
" Again, I recommend just changing your terminal colors to Solarized values 
" either manually or via one of the many terminal schemes available for import.
"
" ---------------------------------------------------------------------
" OPTIONS
" ---------------------------------------------------------------------
"
" Set these in your vimrc file prior to calling the colorscheme.
"
" option name               default     optional
" ------------------------------------------------
" g:solarized_termtrans =   0       |   1
" g:solarized_degrade   =   0       |   1
" g:solarized_bold      =   1       |   0
" g:solarized_underline =   1       |   0
" g:solarized_italic    =   1       |   0
" g:solarized_contrast  =   "normal"|   "high" or "low"
" g:solarized_visibility=   "normal"|   "high" or "low"
" ------------------------------------------------
"
" OPTION DETAILS
"
" ------------------------------------------------
" g:solarized_termtrans =   0       |   1
" ------------------------------------------------
" If you use a terminal emulator with a transparent background and Solarized
" isn't displaying the background color transparently, set this to 1 and
" Solarized will use the default (transparent) background of the terminal
" emulator. *urxvt* required this in my testing; iTerm2 did not.
"
" Note that on Mac OS X Terminal.app, solarized_termtrans is set to 1 by 
" default as this is almost always the best option. The only exception to this 
" is if the working terminfo file supports 256 colors (xterm-256color).
"
" ------------------------------------------------
" g:solarized_degrade   =   0       |   1
" ------------------------------------------------
" For test purposes only; forces Solarized to use the 256 degraded color mode
" to test the approximate color values for accuracy.
"
" ------------------------------------------------
" g:solarized_bold      =   1       |   0
" ------------------------------------------------
" ------------------------------------------------
" g:solarized_underline =   1       |   0
" ------------------------------------------------
" ------------------------------------------------
" g:solarized_italic    =   1       |   0
" ------------------------------------------------
" If you wish to stop Solarized from displaying bold, underlined or
" italicized typefaces, simply assign a zero value to the appropriate
" variable, for example: `let g:solarized_italic=0`
"
" ------------------------------------------------
" g:solarized_contrast  =   "normal"|   "high" or "low"
" ------------------------------------------------
" Stick with normal! It's been carefully tested. Setting this option to high
" or low does use the same Solarized palette but simply shifts some values up
" or down in order to expand or compress the tonal range displayed.
"
" ------------------------------------------------
" g:solarized_visibility =  "normal"|   "high" or "low"
" ------------------------------------------------
" Special characters such as trailing whitespace, tabs, newlines, when 
" displayed using ":set list" can be set to one of three levels depending on 
" your needs.
"
" ---------------------------------------------------------------------
" COLOR VALUES
" ---------------------------------------------------------------------
" Download palettes and files from: http://ethanschoonover.com/solarized
"
" L\*a\*b values are canonical (White D65, Reference D50), other values are
" matched in sRGB space.
"
" SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      sRGB        HSB
" --------- ------- ---- -------  ----------- ---------- ----------- -----------
" base03    #002b36  8/0 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
" base02    #073642  0/0 black    235 #262626 20 -12 -12   7  54  66 192  90  26
" base01    #586e75 10/2 brgreen  239 #4e4e4e 45 -07 -07  88 110 117 194  25  46
" base00    #657b83 11/3 bryellow 240 #585858 50 -07 -07 101 123 131 195  23  51
" base0     #839496 12/4 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
" base1     #93a1a1 14/6 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
" base2     #eee8d5  7/7 white    187 #d7d7af 92 -00  10 238 232 213  44  11  93
" base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
" yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
" orange    #cb4b16  9/1 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
" red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
" magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
" violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
" blue      #268bd2  4/4 blue      32 #0087d7 55 -10 -45  38 139 210 205  82  82
" cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
" green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60
"
" ---------------------------------------------------------------------
" COLORSCHEME HACKING
" ---------------------------------------------------------------------
"
" Useful commands for testing colorschemes:
" :source $VIMRUNTIME/syntax/hitest.vim
" :help highlight-groups
" :help cterm-colors
" :help group-name
"
" Useful links for developing colorschemes:
" http://www.vim.org/scripts/script.php?script_id=2937
" http://vimcasts.org/episodes/creating-colorschemes-for-vim/
" http://www.frexx.de/xterm-256-notes/"
"
"
" }}}
" Default option values"{{{
" ---------------------------------------------------------------------
if !exists("g:solarized_termtrans")
    let g:solarized_termtrans = 0
endif
if !exists("g:solarized_degrade")
    let g:solarized_degrade = 0
endif
if !exists("g:solarized_bold")
    let g:solarized_bold = 1
endif
if !exists("g:solarized_underline")
    let g:solarized_underline = 1
endif
if !exists("g:solarized_italic")
    let g:solarized_italic = 1
endif
if !exists("g:solarized_contrast")
    let g:solarized_contrast = "normal"
endif
if !exists("g:solarized_visibility")
    let g:solarized_visibility = "normal"
endif
if !exists("g:solarized_diffmode")
    let g:solarized_diffmode = "normal"
endif
"}}}
" Colorscheme initialization "{{{
" ---------------------------------------------------------------------
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "solarized"

"}}}
" GUI & CSApprox hexadecimal palettes"{{{
" ---------------------------------------------------------------------
"
" Set both gui and terminal color values in separate conditional statements
" Due to possibility that CSApprox is running (though I suppose we could just
" leave the hex values out entirely in that case and include only cterm colors)
" We also check to see if user has set solarized (force use of the
" neutral gray monotone palette component)
if (has("gui_running") && g:solarized_degrade == 0)
    let s:vmode       = "gui"
    let s:base03      = "#002b36"
    let s:base02      = "#073642"
    let s:base01      = "#586e75"
    let s:base00      = "#657b83"
    let s:base0       = "#839496"
    let s:base1       = "#93a1a1"
    let s:base2       = "#eee8d5"
    let s:base3       = "#fdf6e3"
    let s:yellow      = "#b58900"
    let s:orange      = "#cb4b16"
    let s:red         = "#dc322f"
    let s:magenta     = "#d33682"
    let s:violet      = "#6c71c4"
    let s:blue        = "#268bd2"
    let s:cyan        = "#2aa198"
    let s:green       = "#859900"
elseif (has("gui_running") && g:solarized_degrade == 1)
    " These colors are identical to the 256 color mode. They may be viewed
    " while in gui mode via "let g:solarized_degrade=1", though this is not
    " recommened and is for testing only.
    let s:vmode       = "gui"
    let s:base03      = "#1c1c1c"
    let s:base02      = "#262626"
    let s:base01      = "#4e4e4e"
    let s:base00      = "#585858"
    let s:base0       = "#808080"
    let s:base1       = "#8a8a8a"
    let s:base2       = "#d7d7af"
    let s:base3       = "#ffffd7"
    let s:yellow      = "#af8700"
    let s:orange      = "#d75f00"
    let s:red         = "#d70000"
    let s:magenta     = "#af005f"
    let s:violet      = "#5f5faf"
    let s:blue        = "#0087d7"
    let s:cyan        = "#00afaf"
    let s:green       = "#5f8700"
elseif &t_Co == 16
    let s:vmode       = "cterm"
    let s:base03      = "8"
    let s:base02      = "0"
    let s:base01      = "10"
    let s:base00      = "11"
    let s:base0       = "12"
    let s:base1       = "14"
    let s:base2       = "7"
    let s:base3       = "15"
    let s:yellow      = "3"
    let s:orange      = "9"
    let s:red         = "1"
    let s:magenta     = "5"
    let s:violet      = "13"
    let s:blue        = "4"
    let s:cyan        = "6"
    let s:green       = "2"
elseif &t_Co == 256
    let s:vmode       = "cterm"
    let s:base03      = "234"
    let s:base02      = "235"
    let s:base01      = "239"
    let s:base00      = "240"
    let s:base0       = "244"
    let s:base1       = "245"
    let s:base2       = "187"
    let s:base3       = "230"
    let s:yellow      = "136"
    let s:orange      = "166"
    let s:red         = "160"
    let s:magenta     = "125"
    let s:violet      = "61"
    let s:blue        = "32"
    let s:cyan        = "37"
    let s:green       = "64"
else
    let s:vmode       = "cterm"
    let s:bright      = "* term=bold cterm=bold"
    let s:base03      = "0".s:bright
    let s:base02      = "0"
    let s:base01      = "2".s:bright
    let s:base00      = "3".s:bright
    let s:base0       = "4".s:bright
    let s:base1       = "6".s:bright
    let s:base2       = "7"
    let s:base3       = "7".s:bright
    let s:yellow      = "3"
    let s:orange      = "1".s:bright
    let s:red         = "1"
    let s:magenta     = "5"
    let s:violet      = "5".s:bright
    let s:blue        = "4"
    let s:cyan        = "6"
    let s:green       = "2"
endif
"}}}
" Formatting options and null values for passthrough effect "{{{
" ---------------------------------------------------------------------
    let s:none            = "NONE"
    let s:c               = ",undercurl"
    let s:s               = ",standout"
    let s:ou              = ""
"}}}
" Background value based on termtrans setting "{{{
" ---------------------------------------------------------------------
if (has("gui_running") || g:solarized_termtrans == 0)
    let s:back        = s:base03
else
    let s:back        = "NONE"
endif
"}}}
" Alternate light scheme "{{{
" ---------------------------------------------------------------------
if &background == "light"
    let s:temp03      = s:base03
    let s:temp02      = s:base02
    let s:temp01      = s:base01
    let s:temp00      = s:base00
    let s:base03      = s:base3
    let s:base02      = s:base2
    let s:base01      = s:base1
    let s:base00      = s:base0
    let s:base0       = s:temp00
    let s:base1       = s:temp01
    let s:base2       = s:temp02
    let s:base3       = s:temp03
    if (s:back != "NONE")
        let s:back    = s:base03
    endif
endif
"}}}
" Optional contrast schemes "{{{
" ---------------------------------------------------------------------
if g:solarized_contrast == "high"
    let s:base01      = s:base00
    let s:base00      = s:base0
    let s:base0       = s:base1
"   let s:base1       = s:base2
    let s:base2       = s:base3
endif
if g:solarized_contrast == "low"
    let s:back        = s:base02
    let s:ou          = ",underline"
endif
"}}}
" Overrides dependent on user specified values"{{{
" ---------------------------------------------------------------------
if g:solarized_bold == 1
    let s:b           = ",bold"
else
    let s:b           = ""
endif

if g:solarized_underline == 1
    let s:u           = ",underline"
else
    let s:u           = ""
endif

if g:solarized_italic == 1
    let s:i           = ",italic"
else
    let s:i           = ""
endif
"}}}
" Highlighting primitives"{{{
" ---------------------------------------------------------------------

exe "let s:bg_none      = ' ".s:vmode."bg=".s:back   ."'"
exe "let s:bg_back      = ' ".s:vmode."bg=".s:back   ."'"
exe "let s:bg_base03    = ' ".s:vmode."bg=".s:base03 ."'"
exe "let s:bg_base02    = ' ".s:vmode."bg=".s:base02 ."'"
exe "let s:bg_base01    = ' ".s:vmode."bg=".s:base01 ."'"
exe "let s:bg_base00    = ' ".s:vmode."bg=".s:base00 ."'"
exe "let s:bg_base0     = ' ".s:vmode."bg=".s:base0  ."'"
exe "let s:bg_base1     = ' ".s:vmode."bg=".s:base1  ."'"
exe "let s:bg_base2     = ' ".s:vmode."bg=".s:base2  ."'"
exe "let s:bg_base3     = ' ".s:vmode."bg=".s:base3  ."'"
exe "let s:bg_green     = ' ".s:vmode."bg=".s:green  ."'"
exe "let s:bg_yellow    = ' ".s:vmode."bg=".s:yellow ."'"
exe "let s:bg_orange    = ' ".s:vmode."bg=".s:orange ."'"
exe "let s:bg_red       = ' ".s:vmode."bg=".s:red    ."'"
exe "let s:bg_magenta   = ' ".s:vmode."bg=".s:magenta."'"
exe "let s:bg_violet    = ' ".s:vmode."bg=".s:violet ."'"
exe "let s:bg_blue      = ' ".s:vmode."bg=".s:blue   ."'"
exe "let s:bg_cyan      = ' ".s:vmode."bg=".s:cyan   ."'"

exe "let s:fg_none      = ' ".s:vmode."fg=".s:none   ."'"
exe "let s:fg_back      = ' ".s:vmode."fg=".s:back   ."'"
exe "let s:fg_base03    = ' ".s:vmode."fg=".s:base03 ."'"
exe "let s:fg_base02    = ' ".s:vmode."fg=".s:base02 ."'"
exe "let s:fg_base01    = ' ".s:vmode."fg=".s:base01 ."'"
exe "let s:fg_base00    = ' ".s:vmode."fg=".s:base00 ."'"
exe "let s:fg_base0     = ' ".s:vmode."fg=".s:base0  ."'"
exe "let s:fg_base1     = ' ".s:vmode."fg=".s:base1  ."'"
exe "let s:fg_base2     = ' ".s:vmode."fg=".s:base2  ."'"
exe "let s:fg_base3     = ' ".s:vmode."fg=".s:base3  ."'"
exe "let s:fg_green     = ' ".s:vmode."fg=".s:green  ."'"
exe "let s:fg_yellow    = ' ".s:vmode."fg=".s:yellow ."'"
exe "let s:fg_orange    = ' ".s:vmode."fg=".s:orange ."'"
exe "let s:fg_red       = ' ".s:vmode."fg=".s:red    ."'"
exe "let s:fg_magenta   = ' ".s:vmode."fg=".s:magenta."'"
exe "let s:fg_violet    = ' ".s:vmode."fg=".s:violet ."'"
exe "let s:fg_blue      = ' ".s:vmode."fg=".s:blue   ."'"
exe "let s:fg_cyan      = ' ".s:vmode."fg=".s:cyan   ."'"

exe "let s:fmt_none     = ' ".s:vmode."=NONE".          " term=NONE".    "'"
exe "let s:fmt_bold     = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b."'"
exe "let s:fmt_undr     = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u."'"
exe "let s:fmt_uopt     = ' ".s:vmode."=NONE".s:ou.     " term=NONE".s:ou."'"
exe "let s:fmt_curl     = ' ".s:vmode."=NONE".s:c.      " term=NONE".s:c."'"
exe "let s:fmt_ital     = ' ".s:vmode."=NONE".s:i.      " term=NONE".s:i."'"
exe "let s:fmt_stnd     = ' ".s:vmode."=NONE".s:s.      " term=NONE".s:s."'"

if has("gui_running")
    exe "let s:sp_none      = ' guisp=".s:none   ."'"
    exe "let s:sp_back      = ' guisp=".s:back   ."'"
    exe "let s:sp_base03    = ' guisp=".s:base03 ."'"
    exe "let s:sp_base02    = ' guisp=".s:base02 ."'"
    exe "let s:sp_base01    = ' guisp=".s:base01 ."'"
    exe "let s:sp_base00    = ' guisp=".s:base00 ."'"
    exe "let s:sp_base0     = ' guisp=".s:base0  ."'"
    exe "let s:sp_base1     = ' guisp=".s:base1  ."'"
    exe "let s:sp_base2     = ' guisp=".s:base2  ."'"
    exe "let s:sp_base3     = ' guisp=".s:base3  ."'"
    exe "let s:sp_green     = ' guisp=".s:green  ."'"
    exe "let s:sp_yellow    = ' guisp=".s:yellow ."'"
    exe "let s:sp_orange    = ' guisp=".s:orange ."'"
    exe "let s:sp_red       = ' guisp=".s:red    ."'"
    exe "let s:sp_magenta   = ' guisp=".s:magenta."'"
    exe "let s:sp_violet    = ' guisp=".s:violet ."'"
    exe "let s:sp_blue      = ' guisp=".s:blue   ."'"
    exe "let s:sp_cyan      = ' guisp=".s:cyan   ."'"
else
    let s:sp_none      = ""
    let s:sp_back      = ""
    let s:sp_base03    = ""
    let s:sp_base02    = ""
    let s:sp_base01    = ""
    let s:sp_base00    = ""
    let s:sp_base0     = ""
    let s:sp_base1     = ""
    let s:sp_base2     = ""
    let s:sp_base3     = ""
    let s:sp_green     = ""
    let s:sp_yellow    = ""
    let s:sp_orange    = ""
    let s:sp_red       = ""
    let s:sp_magenta   = ""
    let s:sp_violet    = ""
    let s:sp_blue      = ""
    let s:sp_cyan      = ""
endif

"}}}
" Basic highlighting"{{{
" ---------------------------------------------------------------------
" note that link syntax to avoid duplicate configuration doesn't work with the
" exe compiled formats

exe "hi! Normal"         .s:fmt_none   .s:fg_base0  .s:bg_back

exe "hi! Comment"        .s:fmt_ital   .s:fg_blue   .s:bg_none
"       *Comment         any comment

exe "hi! Constant"       .s:fmt_none   .s:fg_red    .s:bg_none
exe "hi! String"         .s:fmt_none   .s:fg_cyan   .s:bg_none
"       *Constant        any constant
"        String          a string constant: "this is a string"
"        Character       a character constant: 'c', '\n'
"        Number          a number constant: 234, 0xff
"        Boolean         a boolean constant: TRUE, false
"        Float           a floating point constant: 2.3e10

exe "hi! Identifier"     .s:fmt_none   .s:fg_base00 .s:bg_none
"       *Identifier      any variable name
"        Function        function name (also: methods for classes)
"
exe "hi! Statement"      .s:fmt_bold   .s:fg_magenta.s:bg_none
"       *Statement       any statement
"        Conditional     if, then, else, endif, switch, etc.
"        Repeat          for, do, while, etc.
"        Label           case, default, etc.
"        Operator        "sizeof", "+", "*", etc.
"        Keyword         any other keyword
"        Exception       try, catch, throw

exe "hi! PreProc"        .s:fmt_none   .s:fg_violet .s:bg_none
"       *PreProc         generic Preprocessor
"        Include         preprocessor #include
"        Define          preprocessor #define
"        Macro           same as Define
"        PreCondit       preprocessor #if, #else, #endif, etc.

exe "hi! Type"           .s:fmt_bold   .s:fg_green  .s:bg_none
"       *Type            int, long, char, etc.
"        StorageClass    static, register, volatile, etc.
"        Structure       struct, union, enum, etc.
"        Typedef         A typedef

exe "hi! Special"        .s:fmt_none   .s:fg_violet  .s:bg_none
"       *Special         any special symbol
"        SpecialChar     special character in a constant
"        Tag             you can use CTRL-] on this
"        Delimiter       character that needs attention
"        SpecialComment  special things inside a comment
"        Debug           debugging statements

exe "hi! Underlined"     .s:fmt_undr   .s:fg_blue   .s:bg_none
"       *Underlined      text that stands out, HTML links

exe "hi! Ignore"         .s:fmt_none   .s:fg_none   .s:bg_none
"       *Ignore          left blank, hidden  |hl-Ignore|

exe "hi! Error"          .s:fmt_bold   .s:fg_orange .s:bg_none
"       *Error           any erroneous construct

exe "hi! Todo"           .s:fmt_bold   .s:fg_back   .s:bg_yellow
"       *Todo            anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX
"
"}}}
" Extended highlighting "{{{
" ---------------------------------------------------------------------
if      (g:solarized_visibility=="high")
    exe "hi! SpecialKey" .s:fmt_none   .s:fg_back   .s:bg_red
    exe "hi! NonText"    .s:fmt_bold   .s:fg_red    .s:bg_none
elseif  (g:solarized_visibility=="low")
    exe "hi! SpecialKey" .s:fmt_bold   .s:fg_base02 .s:bg_none
    exe "hi! NonText"    .s:fmt_bold   .s:fg_base02 .s:bg_none
else
    exe "hi! SpecialKey" .s:fmt_none   .s:fg_blue   .s:bg_none
    exe "hi! NonText"    .s:fmt_bold   .s:fg_blue   .s:bg_none
endif
exe "hi! StatusLine"     .s:fmt_bold   .s:fg_base02 .s:bg_base1
exe "hi! StatusLineNC"   .s:fmt_none   .s:fg_base02 .s:bg_base00
exe "hi! Visual"         .s:fmt_none   .s:fg_base03 .s:bg_base01
exe "hi! Directory"      .s:fmt_none   .s:fg_blue   .s:bg_none
exe "hi! ErrorMsg"       .s:fmt_none   .s:fg_back   .s:bg_red
exe "hi! IncSearch"      .s:fmt_stnd   .s:fg_orange .s:bg_none
exe "hi! Search"         .s:fmt_none   .s:fg_back   .s:bg_orange
exe "hi! MoreMsg"        .s:fmt_none   .s:fg_blue   .s:bg_none
exe "hi! ModeMsg"        .s:fmt_none   .s:fg_blue   .s:bg_none
exe "hi! LineNr"         .s:fmt_none   .s:fg_base01 .s:bg_base02
exe "hi! CursorLineNr"   .s:fmt_bold   .s:fg_base0  .s:bg_base03
exe "hi! Question"       .s:fmt_bold   .s:fg_green  .s:bg_none
exe "hi! VertSplit"      .s:fmt_none   .s:fg_base0  .s:bg_base02
exe "hi! Title"          .s:fmt_bold   .s:fg_blue   .s:bg_none
exe "hi! VisualNOS"      .s:fmt_stnd   .s:fg_none   .s:bg_base02
exe "hi! WarningMsg"     .s:fmt_bold   .s:fg_red    .s:bg_none
exe "hi! WildMenu"       .s:fmt_none   .s:fg_base2  .s:bg_base02
exe "hi! Folded"         .s:fmt_bold   .s:fg_base0  .s:bg_base02  .s:sp_base0
exe "hi! FoldColumn"     .s:fmt_none   .s:fg_base0  .s:bg_none
if      (g:solarized_diffmode=="high")
exe "hi! DiffAdd"        .s:fmt_none   .s:fg_back   .s:bg_green
exe "hi! DiffChange"     .s:fmt_none   .s:fg_back   .s:bg_blue
exe "hi! DiffDelete"     .s:fmt_none   .s:fg_back   .s:bg_red
exe "hi! DiffText"       .s:fmt_none   .s:fg_back   .s:bg_yellow
elseif  (g:solarized_diffmode=="low")
exe "hi! DiffAdd"        .s:fmt_undr   .s:fg_green  .s:bg_none   .s:sp_green
exe "hi! DiffChange"     .s:fmt_undr   .s:fg_blue   .s:bg_none   .s:sp_blue
exe "hi! DiffDelete"     .s:fmt_bold   .s:fg_red    .s:bg_none
exe "hi! DiffText"       .s:fmt_undr   .s:fg_yellow .s:bg_none   .s:sp_yellow
else " normal
    if has("gui_running")
exe "hi! DiffAdd"        .s:fmt_bold   .s:fg_green  .s:bg_base02
exe "hi! DiffChange"     .s:fmt_bold   .s:fg_blue   .s:bg_base02
exe "hi! DiffDelete"     .s:fmt_bold   .s:fg_red    .s:bg_base02
exe "hi! DiffText"       .s:fmt_bold   .s:fg_yellow .s:bg_base02
    else
exe "hi! DiffAdd"        .s:fmt_none   .s:fg_green  .s:bg_base02
exe "hi! DiffChange"     .s:fmt_none   .s:fg_blue   .s:bg_base02
exe "hi! DiffDelete"     .s:fmt_none   .s:fg_red    .s:bg_base02
exe "hi! DiffText"       .s:fmt_none   .s:fg_yellow .s:bg_base02
    endif
endif
exe "hi! SignColumn"     .s:fmt_none   .s:fg_base0  .s:bg_none
exe "hi! Conceal"        .s:fmt_none   .s:fg_blue   .s:bg_none
exe "hi! SpellBad"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_red
exe "hi! SpellCap"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_violet
exe "hi! SpellRare"      .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_cyan
exe "hi! SpellLocal"     .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_yellow
exe "hi! Pmenu"          .s:fmt_none   .s:fg_base0  .s:bg_base02
exe "hi! PmenuSel"       .s:fmt_none   .s:fg_base2  .s:bg_base01
exe "hi! PmenuSbar"      .s:fmt_none   .s:fg_base0  .s:bg_base2
exe "hi! PmenuThumb"     .s:fmt_none   .s:fg_base03 .s:bg_base0
exe "hi! TabLine"        .s:fmt_undr   .s:fg_base0  .s:bg_base02  .s:sp_base0
exe "hi! TabLineFill"    .s:fmt_undr   .s:fg_base0  .s:bg_base02  .s:sp_base0
exe "hi! TabLineSel"     .s:fmt_undr   .s:fg_base2  .s:bg_base01  .s:sp_base2
exe "hi! CursorColumn"   .s:fmt_none   .s:fg_none   .s:bg_base02
exe "hi! CursorLine"     .s:fmt_uopt   .s:fg_none   .s:bg_base02  .s:sp_base1
exe "hi! ColorColumn"    .s:fmt_none   .s:fg_none   .s:bg_base02
if  (&cursorline == 1)
exe "hi! Cursor"         .s:fmt_none   .s:fg_base02 .s:bg_base0
else
exe "hi! Cursor"         .s:fmt_none   .s:fg_base03 .s:bg_base0
endif
exe "hi! MatchParen"     .s:fmt_bold   .s:fg_red    .s:bg_base01

"}}}
" License "{{{
" ---------------------------------------------------------------------
"
" Copyright (c) 2011 Ethan Schoonover
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.
"
" vim:foldmethod=marker:foldlevel=0
"}}}
