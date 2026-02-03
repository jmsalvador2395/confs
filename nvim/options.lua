-- Line numbers
vim.opt.number = true

-- Tabs & indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.indentexpr = ""


-- Files & backups
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = false

-- Scrolling
vim.opt.scrolloff = 10

-- Tabs
-- vim.opt.tabpagemax = 100

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- UI
vim.opt.ruler = true
vim.opt.laststatus = 2
vim.opt.colorcolumn = "72"

-- Statusline
vim.opt.statusline = "%F%m%r%h%w [LINE:%l/%L] [COL:%c]"

-- Syntax highlighting
vim.cmd("syntax on")

-- ColorColumn highlight
vim.cmd("highlight ColorColumn ctermbg=lightcyan guibg=blue")

-- Paste toggle
-- vim.opt.pastetoggle = "<F3>"

-- Pane navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Tab navigation
vim.keymap.set("n", "<C-o>", ":tabnext<CR>", { silent = true })
vim.keymap.set("n", "<C-y>", ":tabprev<CR>", { silent = true })

-- netrw settings (mostly irrelevant if using nvim-tree)
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0

