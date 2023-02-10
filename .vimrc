syntax on
set number
set tabstop=4
set shiftwidth=4
set clipboard+=unnamed
set pastetoggle=<space>m
set noswapfile
set hidden

call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
Plug 'bagrat/vim-buffet'
Plug 'tpope/vim-commentary'
call plug#end() 

function! CheckBackspace() abort
		  let col = col('.') - 1
		    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
	        \ CheckBackspace() ? "\<Tab>" :
			      \ coc#refresh()

map <S-h> <C-w>h
map <S-k> <C-w>k
map <S-j> <C-w>j
map <S-l> <C-w>l

map <silent> <space>e :NERDTreeToggle<CR>
map <space>] :bn<CR>
map <space>[ :bp<CR>
map <space>f :Files<CR>
map <space>w :Ag<CR>
map <space>c :Bw!<CR>
