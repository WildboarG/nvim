vim.g.mapleader = " " --设置leader键为<Space>

local keymap = vim.keymap

-------insert-------
-------Visual-------
keymap.set("v","J",":m '>+1<CR>gv=gv")
keymap.set("v","K",":m '>-2<CR>gv=gv")

-------normal-------
keymap.set("n","<leader>sv","<C-w>v")  --row add windows
keymap.set("n","<leader>sh","<C-w>s")  --col add windows

------ no hightlight-
keymap.set("n", "<leader>nh", ":nohl<CR>")

-------plug-in-------
keymap.set("n","<leader>e",":NvimTreeToggle<CR>") --file t

