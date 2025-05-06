
local map = vim.keymap.set
local opts ={ noremap = true} -- add silent = true if needed

-- No clipboard override with n:x, {n, v}:s, c, Del and v:p
map("n", "x", '"_x', opts)  
map("n", "X", '"_X', opts)  
map({"n", "v"}, "s", '"_s', opts)  
map({"n", "v"}, "S", '"_S', opts)  
map({"n", "v"}, "c", '"_c', opts)  
map({"n", "v"}, "C", '"_C', opts)  
map({"n", "v"}, "<Del>", '"_x', opts)  
map("v", "p" , "pgvy", opts)


vim.keymap.set("n", "<leader>i", "gg=G``", { desc = "Indent file" })
 
