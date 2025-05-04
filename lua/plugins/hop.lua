return {
'smoka7/hop.nvim',
version = "*",
opts = {
keys = 'etovxqpdygfblzhckisuran'
},
lazy = false,
config = function()
  require('hop').setup({})
  vim.keymap.set({ "n", "v"}, '<leader>jk', ":HopWord<CR>", {desc = "Hop Word"})
  vim.keymap.set({ "n", "v"}, '<leader>jh', ":HopLine<CR>", {desc = "Hop Line"})
end
}
