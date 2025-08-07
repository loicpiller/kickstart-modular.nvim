-- Lazygit plugin for using Lazygit inside Neovim
-- https://github.com/kdheepak/lazygit.nvim

return {
  'kdheepak/lazygit.nvim',
  cmd = 'LazyGit', -- Only load when calling the :LazyGit command
  dependencies = {
    'nvim-lua/plenary.nvim', -- Required dependency
  },
  keys = {
    -- Open Lazygit in a floating terminal
    { '<leader>gg', '<cmd>LazyGit<cr>', desc = 'Open Lazygit' },
  },
}
