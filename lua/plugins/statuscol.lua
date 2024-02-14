local builtin = require("statuscol.builtin")
require("statuscol").setup({
  segments = {
    {
      text = {
        " ",               -- whitespace padding
        function(args)     -- custom line number highlight function
          return ((args.lnum % 2 > 0) and "%#DiffDelete#%=" or "%#DiffAdd#%=").."%l"
        end,
        " ",               -- whitespace padding
      },
      condition = {
        true,              -- always shown
        function(args)     -- shown only for the current window
          return vim.api.nvim_get_current_win() == args.win
        end,
        builtin.notempty,  -- only shown when the rest of the statuscolumn is not empty
      },
    }
  }
})
