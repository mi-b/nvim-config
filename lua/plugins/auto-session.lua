return {
  "rmagatti/auto-session",
  config = function()
    opts = {
      auto_restore = false
    }
    require("auto-session").setup(opts)
  end
}
