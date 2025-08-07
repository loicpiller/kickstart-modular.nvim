-- Bufferline plugin for visual buffer/tab navigation
-- https://github.com/akinsho/bufferline.nvim

return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VimEnter', -- Load on startup
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'buffers', -- Display buffers (not tabs)
        diagnostics = 'nvim_lsp', -- Show LSP diagnostics in the bufferline
        always_show_bufferline = true, -- Always show the bufferline
        show_close_icon = true, -- Display global close icon
        show_buffer_close_icons = true, -- Display buffer-specific close icons
        separator_style = 'thin', -- Buffer separators: 'slant', 'thick', 'thin', or custom
      },
    }

    -- [[ Buffer navigation keymaps ]]
    -- See `:help BufferLineCycleNext`

    -- Go to next buffer
    vim.keymap.set('n', '<leader>bn', ':BufferLineCycleNext<CR>', { desc = 'Next buffer' })

    -- Go to previous buffer
    vim.keymap.set('n', '<leader>bp', ':BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })

    -- Close current buffer
    vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { desc = '[B]uffer [D]elete' })
  end,
}
