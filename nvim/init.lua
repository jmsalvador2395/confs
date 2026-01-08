-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Disable netrw (must be before nvim-tree loads)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

-- Lazy setup (ONLY ONCE)
require("lazy").setup({
  "nvim-lua/plenary.nvim",

  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        sort = {
          sorter = "case_sensitive",
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      })
    end,
  },
})

local api = require("nvim-tree.api")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    api.tree.open()
  end,
})

require("nvim-tree").setup({
  tab = {
    sync = {
      open = true,
      close = true,
    },
  },
})

require("options")

