return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })
      -- lspconfig.pyright.setup({
      --   capabilities = capabilities,
      -- })
      -- lspconfig.ruff.setup({
      --   capabilities = capabilities,
      --   -- init_options = {
      --   --   settings = {
      --   --     -- Ruff language server settings go here
      --   --   },
      --   -- },
      -- })
      --
      -- vim.api.nvim_create_autocmd("LspAttach", {
      --   group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
      --   callback = function(args)
      --     local client = vim.lsp.get_client_by_id(args.data.client_id)
      --     if client == nil then
      --       return
      --     end
      --     if client.name == "ruff" then
      --       -- Disable hover in favor of Pyright
      --       client.server_capabilities.hoverProvider = false
      --     end
      --   end,
      --   desc = "LSP: Disable hover capability from Ruff",
      -- })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "lsp hover" })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "lsp definition" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "lsp references" })
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "lsp code action" })
    end,
  },
}
