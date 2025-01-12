return {
  -- add neosolarized
  {
    "Tsuzat/NeoSolarized.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      NeoSolarized = require("NeoSolarized")

      NeoSolarized.setup({
        style = "light", -- "dark" or "light"
        transparent = false, -- true/false; Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
        enable_italics = true, -- Italics for different hightlight groups (eg. Statement, Condition, Comment, Include, etc.)
        styles = {
          -- Style to be applied to different syntax groups
          comments = { italic = true },
          keywords = { italic = true },
          functions = { bold = true },
          variables = {},
          string = { italic = true },
          underline = true, -- true/false; for global underline
          undercurl = true, -- true/false; for global undercurl
        },
      })
      -- Set colorscheme to NeoSolarized
      vim.cmd("colorscheme NeoSolarized")
    end,
  },
}
