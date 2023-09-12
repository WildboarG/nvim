local opt = vim.opt

--line number
opt.relativenumber = true
opt.number = true
    
--tabstopda
opt.tabstop = 4 --占据的空格数
opt.shiftwidth =4 --缩进的空格数
opt.expandtab = true
opt.autoindent = true

--ban package
opt.wrap = false

--cursorline
opt.cursorline = true

--mouse
opt.mouse:append("a")

--clipboard 系统剪贴板
opt.clipboard:append("unnamedplus")

--deflaut window
opt.splitright = true
opt.splitbelow = true

--search
opt.ignorecase = true
opt.smartcase = true

--termgui color
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd[[colorscheme tokyonight-moon]]
