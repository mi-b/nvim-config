if require("utils").skip_if_windows("markdown-preview") then
	return {}
end

return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },
	config = function()
		vim.g.mkdp_auto_start = 1
		vim.g.mkdp_auto_close = 1
		vim.g.mkdp_open_to_the_world = 0
		vim.g.mkdp_theme = "dark"
		vim.g.mkdp_browser = "/usr/bin/firefox"
	end,
}
