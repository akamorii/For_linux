" ========== Общие настройки ==========
syntax on
set number                  " показывать номера строк
set relativenumber          " относительная нумерация
set tabstop=4               " ширина таба = 4 пробела
set shiftwidth=4            " autoindent
set expandtab               " использовать пробелы вместо табов
set autoindent
set smartindent
set mouse=a                 " включить мышь
set clipboard=unnamedplus   " системный буфер обмена
set background=dark
set termguicolors           " поддержка 24-bit цветов
set encoding=utf-8

" ========== Плагины через vim-plug ==========
call plug#begin('~/.vim/plugged')

" Установка vim-sandwich
Plug 'machakann/vim-sandwich'

" Файловый менеджер
Plug 'preservim/nerdtree'

" Подсветка скобок
Plug 'jiangmiao/auto-pairs'

" Цветовая тема
Plug 'morhetz/gruvbox'

" Автодополнение и LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Статус бар
Plug 'vim-airline/vim-airline'

" Подсветка синтаксиса
Plug 'sheerun/vim-polyglot'

call plug#end()

" ========== Темы ==========
colorscheme gruvbox

" ========== Клавиши =========="
nnoremap <C-n> :NERDTreeToggle<CR>

" Привязать команду sa( к Ctrl+s "
vmap <C-s> sa(
" Настройка команды для работы с плагином

" Настроить другие символы для оборачивания, если хочешь.

" ========== Настройка coc.nvim ==========
" Установи языковые серверы через :CocInstall

let g:coc_global_extensions = [
  \ 'coc-pyright',         
  \ 'coc-tsserver',        
  \ 'coc-json',           
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-prettier',
  \ ]

" Использовать Tab для автодополнения
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

" Подсказка документации
nnoremap <silent> K :call CocAction('doHover')<CR>

" ========== Форматирование ==========
" :Prettier для js
" :CocCommand python.sortImports для Python
