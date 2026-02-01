return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {},
    config = function(_, opts)
      require('toggleterm').setup(opts)

      -- Keymaps for different terminal directions
      local map = vim.keymap.set

      -- Terminal direction toggles under <leader>t
      map('n', '<leader>th', '<cmd>ToggleTerm size=15 direction=horizontal<cr>', { desc = 'Terminal Horizontal' })
      map('n', '<leader>tv', '<cmd>ToggleTerm size=80 direction=vertical<cr>', { desc = 'Terminal Vertical' })
      map('n', '<leader>tt', '<cmd>ToggleTerm direction=tab<cr>', { desc = 'Terminal Tab' })
      map('n', '<leader>tf', '<cmd>ToggleTerm direction=float<cr>', { desc = 'Terminal Float' })

      -- Terminal mode mappings for easy escape
      map('t', '<esc><esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })
      map('t', '<C-h>', [[<Cmd>wincmd h<CR>]], { desc = 'Navigate left' })
      map('t', '<C-j>', [[<Cmd>wincmd j<CR>]], { desc = 'Navigate down' })
      map('t', '<C-k>', [[<Cmd>wincmd k<CR>]], { desc = 'Navigate up' })
      map('t', '<C-l>', [[<Cmd>wincmd l<CR>]], { desc = 'Navigate right' })
      map('t', '<C-w>', [[<C-\><C-n><C-w>]], { desc = 'Window commands' })
    end,
  },
}
