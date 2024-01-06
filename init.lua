require("plugins.plugins-setup") --插件管理器
require("core.options") --设置
require("core.keymaps") --键位

---------Plug-in-----------
require("plugins.lualine") --状态栏
require("plugins/nvim-tree") --文件树
require("plugins/treesitter") --语法高亮
require("plugins/lsp") --语言服务器协议
require("plugins/cmp") --自动补全

require("plugins/comment") --注释
require("plugins/autopairs") --自动补全括号
require("plugins/telescope") --模糊搜索

--test
--vim.opt.runtimepath:append("/home/WildboarG/work/neovim_project/example")
--local pkg = require("example")
--pkg.setup({colors = "#324432"})
vim.opt.runtimepath:append("/home/WildboarG/work/neovim_project/whid")
local pkg = require("whid")
--pkg.setup()
