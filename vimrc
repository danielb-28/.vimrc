"Mapear ESC para CAPS ===================================================
autocmd VimEnter * silent execute "!setxkbmap -option caps:swapescape &>/dev/null &"
autocmd VimLeave * silent execute "!setxkbmap -option &>/dev/null &"

"Plugins============================================================================================
call plug#begin()

Plug 'matsuuu/pinkmare' "Tema pinkmare
Plug 'ycm-core/YouCompleteMe' "Auto complete
Plug 'vim-airline/vim-airline' "Airline
Plug 'vim-airline/vim-airline-themes' "Airline themes
Plug 'dracula/vim', { 'as': 'dracula' } "Tema dracula
Plug 'octol/vim-cpp-enhanced-highlight' "Highlight 
Plug 'NLKNguyen/papercolor-theme' "Tema paper color
Plug 'tomasr/molokai' "Tema Molokai
Plug 'chriskempson/base16-vim'

call plug#end()

"Vim============================================================================================
"Tema de cores:
set background=dark
colorscheme PaperColor 
"Numero linha
set nu!
"Mouse
"set mouse=a
"Titulo
set title
"Encoding
set encoding=utf-8
"Cursorline
set cursorline
"Remove o delay do esc (capslock) - quais sao os efeitos colaterais?
set noesckeys

"YCM============================================================================================
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py' "Arquivo de config
set completeopt-=preview "Remove a janela superior
""let g:ycm_show_diagnostics_ui = 0 "Desabilita o diagnostico em tempo de escrita
let g:ycm_clangd_args=['--header-insertion=never'] "Remove a inclusao automatica de headers
let g:ycm_auto_trigger=0 "Desabilita a ativacao automatica
let g:ycm_warning_symbol = '!!' "Simbolo de aviso

"Airline============================================================================================
let g:airline_theme='murmur'
"let g:airline_theme='dracula'

"Highlight============================================================================================
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

"Molokai============================================================================================
let g:molokai_original = 0
