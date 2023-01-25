local opt = vim.opt

--line number
opt.relativenumber = true
opt.number = true

--tabstop
opt.tabstop = 2 
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

--ban package
opt.wrap = false

--cursorline
opt.cursorline = true

--mouse
opt.mouse:append("a")

--clipboard
opt.clipboard:append("unnamedplus")

--deflaut window
opt.splitright = true
opt.splitbelow = true

--search
opt.ignorecase = true
opt.smartcase = true

--termguicolor
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd[[colorscheme tokyonight-moon]]
