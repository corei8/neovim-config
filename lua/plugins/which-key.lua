return {

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    -- opts = {},
    config = function ()
      local wk = require("which-key")
      local mappings = {
        f = {
          name = "file",
          f = {"<cmd>Telescope find_files<cr>", "Find File"},
          g = {"<cmd>Telescope live_grep<cr>", "Live Grep"},
          h = {"<cmd>Telescope help_tags<cr>", "Search Help Tags"},
          b = {"<cmd>Telescope buffers<cr>", "Search Buffers"},
        },
        t = {"<cmd>TodoQuickFix<cr>", "TODO Quick Fix"},
        -- n = {"<cmd>NvimTreeToggle<cr>", "Toggle NvimTree"},
        g = {
          name = "git",
          d = {":diffget //3<cr>", "git diff"},
          s = {":G<cr>", "git command"},
          -- a = {":G add .<cr>", "git add"},
          c = {":G commit -m ''<left>", "git commit -m"},
          p = {":G push<cr>", "git push"},
          l = {":G pull<cr>", "git pull"},
          g = {":LazyGit<cr>", "LazyGit"}
        },
        x = {
          b = {'c\textbf{<cr>"}<esc>', "Bold", noremap=false},
          i = {'c\textbf{<cr>"}<esc>', "Italic", noremap=false}
      }
    }
    local opts = {prefix = "<leader>"}
    wk.register(mappings, opts)
  end,
}

}
