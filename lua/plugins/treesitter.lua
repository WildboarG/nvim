require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the four listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "help","go","python","json","html","css","bash","javascript"},

  hightlight = {enable = true},
  indent = {enable = true},

  rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil,
  }
}
