return {
  "NvChad/nvterm",
  config = function()
    require("nvterm").setup()
    local terminal = require("nvterm.terminal")
    local toggle_modes = { "n", "t" }
    local mappings = {
      {
        "n",
        "<C-l>at",
        function()
          -- terminal.send(ft_cmds[vim.bo.filetype])
        end,
      },
      {
        toggle_modes,
        "<A-/>",
        function()
          terminal.toggle("horizontal")
        end,
      },
      {
        toggle_modes,
        "<A-v>",
        function()
          terminal.toggle("vertical")
        end,
      },
      {
        toggle_modes,
        "<A-i>",
        function()
          terminal.toggle("float")
        end,
      },
    }
    local opts = { noremap = true, silent = true }
    for _, mapping in ipairs(mappings) do
      vim.keymap.set(mapping[1], mapping[2], mapping[3], mapping[4], opts)
    end
  end,
}
