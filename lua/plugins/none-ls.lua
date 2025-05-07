return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		if not require("utils").is_windows() then
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettier,
					-- null_ls.builtins.formatting.rubocop,
					-- null_ls.builtins.diagnostics.rubocop,
					-- null_ls.builtins.diagnostics.eslint_d,
				},
			})
		else
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
				},
			})
		end

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "format" })
	end,
}
