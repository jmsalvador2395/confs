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

-- require("nvim-tree").setup({
--   on_attach = function(bufnr)
--     local api = require("nvim-tree.api")
-- 
--     local function opts(desc)
--       return {
--         desc = "nvim-tree: " .. desc,
--         buffer = bufnr,
--         noremap = true,
--         silent = true,
--         nowait = true,
--       }
--     end

require("nvim-tree").setup({
  on_attach = function(bufnr)
    local api = require("nvim-tree.api")

    -- IMPORTANT: load default mappings
    api.config.mappings.default_on_attach(bufnr)

    local function opts(desc)
      return {
        desc = "nvim-tree: " .. desc,
        buffer = bufnr,
        noremap = true,
        silent = true,
        nowait = true,
      }
    end

    -- Your custom mapping
    vim.keymap.set("n", "t", api.node.open.tab, opts("Open in new tab"))
  end,
})

vim.api.nvim_create_autocmd("TabNewEntered", {
  callback = function()
    local view = require("nvim-tree.view")
    if not view.is_visible() then
      vim.cmd("NvimTreeOpen")
    end
  end,
})

vim.opt.termguicolors = true
vim.cmd.colorscheme("vim")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.indentexpr = ""
    vim.opt_local.smartindent = false
    vim.opt_local.cindent = false
    vim.opt_local.autoindent = true
  end,
})

vim.opt.termguicolors = true
vim.cmd.colorscheme("vim")

require("options")

