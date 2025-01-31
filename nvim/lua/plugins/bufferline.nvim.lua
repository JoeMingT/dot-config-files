return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function ()
    require("bufferline").setup({
      options = {
        style_preset = require("bufferline").style_preset.default,
        themable = false,
        show_close_icon = false,
        show_buffer_close_icons = false,
        separator_style = "slope",
        diagnostics_indicator = function(count, level)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
        offsets = {
            {
                filetype = "NvimTree",
                text = "Welcome to NeoVim!",
                highlight = "Directory",
                text_align = "left",
                separator = true -- use a "true" to enable the default, or set your own character
            }
        },
        custom_filter = function(buf, buf_nums)
          -- dont show help buffers in the bufferline
          if vim.bo[buf].filetype == "help" then
            return false
          elseif vim.bo[buf].filetype == "terminal" then
            return false
          elseif vim.fn.bufname(buf):match('bash') then
            return false
          else
            return true
          end
        end
      }
    })
  end
}
