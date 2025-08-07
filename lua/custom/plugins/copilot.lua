-- GitHub Copilot plugin for AI-powered code suggestions
-- https://github.com/github/copilot.vim

return {
  'github/copilot.vim',
  event = 'InsertEnter', -- Load when entering insert mode
  config = function()
    -- Disable default <Tab> mapping to avoid conflicts with completion plugins
    vim.g.copilot_no_tab_map = true

    -- [[ Copilot keymaps ]]
    -- Accept current suggestion
    vim.keymap.set('i', '<C-CR>', 'copilot#Accept("<CR>")', {
      expr = true,
      replace_keycodes = false,
      desc = 'Copilot: Accept suggestion',
    })

    -- Show Copilot panel with multiple suggestions
    vim.keymap.set('n', '<leader>cp', ':Copilot panel<CR>', {
      desc = 'Copilot: Open suggestions panel',
    })

    -- Enable Copilot for all filetypes by default
    vim.g.copilot_filetypes = {
      ['*'] = true,
    }
  end,
}
