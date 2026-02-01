return {
  'stevearc/aerial.nvim',
  event = 'VimEnter',
  -- Optional dependencies
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    -- optionally use on_attach to set keymaps when aerial has attached to a buffer
    on_attach = function(bufnr)
      -- Jump forwards/backwards with '{' and '}'
      vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', { buffer = bufnr })
      vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', { buffer = bufnr })
    end,
  },
  keys = {
    -- You probably also want to set a keymap to toggle aerial
    { '<leader>al', '<cmd>AerialToggle! left<CR>', desc = '[A]erial vertical [L]eft' },
    { '<leader>ar', '<cmd>AerialToggle! right<CR>', desc = '[A]erial vertical [R]ight' },
    { '<leader>af', '<cmd>AerialToggle float<CR>', desc = '[A]erial [F]loat' },
  },
}
