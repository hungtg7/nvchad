require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.o.wrap = true               -- line break
vim.o.mouse = 'a'               -- enable mouse support
vim.o.clipboard = 'unnamedplus' -- copy/paste to system clipboard
vim.o.swapfile = false          -- don't use swapfile
vim.o.undofile = true           -- enable persistent undo
vim.o.number = true             -- show line number
vim.o.relativenumber = true     -- set relative number
vim.o.showmatch = true          -- highlight matching parenthesis
vim.o.foldmethod = 'marker'     -- enable folding (default 'foldmarker')
vim.o.splitright = true         -- vertical split to the right
vim.o.splitbelow = true         -- orizontal split to the bottom
vim.o.linebreak = true          -- wrap on word boundary
vim.o.hidden = true             -- enable background buffers
vim.o.history = 100             -- remember n lines in history
vim.o.lazyredraw = true         -- faster scrolling
vim.o.updatetime = 300          -- faster completion (4000ms default)
vim.o.synmaxcol = 240           -- max column for syntax highlight
vim.o.termguicolors = true      -- enable 24-bit RGB colors
vim.o.expandtab = true          -- use spaces instead of tabs
vim.o.shiftwidth = 4            -- shift 4 spaces when tab
vim.o.tabstop = 4               -- 1 tab == 4 spaces
vim.o.ignorecase = true         -- ignore case letters when search
vim.o.smartcase = true          -- ignore lowercase for the whole pattern
vim.o.smartindent = true        -- autoindent new lines
vim.o.hlsearch = true           -- highlight all matches on previous search pattern
vim.o.ignorecase = true         -- ignore case in search patterns
vim.o.conceallevel = 0          -- so that `` is visible in markdown files
vim.o.pumheight = 10            -- pop up menu height
vim.o.numberwidth = 4           -- set number column width to 2 {default 4}
vim.o.showmode = false          -- show current mode
vim.o.showtabline = 2           -- always show tabs
vim.o.scrolloff = 8             -- scroll before reach last line
vim.o.sidescrolloff = 8
vim.o.completeopt = 'menuone,noselect'


