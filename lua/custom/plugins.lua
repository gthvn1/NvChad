local plugins = {
  {
    "tpope/vim-fugitive",
    config = function ()
      vim.keymap.set(
        'n',
        '<leader>gg',
        '<Cmd>Git grep <cword><cr>', {silent = true})
    end
  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    cmd = "LazyGit",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "ocaml-lsp",
        "python-lsp-server",
        "rust-analyzer",
      }
    }
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  }
}

return plugins
