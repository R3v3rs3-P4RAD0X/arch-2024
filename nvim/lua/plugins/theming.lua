return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        background = {
          dark = "mocha",
          light = "latte",
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
