local map = vim.api.nvim_set_keymap

-- save the work of pressing an entire key 
map('n', '<c-j>', '<c-w>j', {})
map('n', '<c-h>', '<c-w>h', {})
map('n', '<c-k>', '<c-w>k', {})
map('n', '<c-l>', '<c-w>l', {})

map('n', '<c-up>', '<c-w>+',    {})
map('n', '<c-down>', '<c-w>-',  {})
map('n', '<c-left>', '<c-w>>',  {})
map('n', '<c-right>', '<c-w><', {})

-- escape insert mode with jj
map('i', 'jj', '<esc>', {})

-- start command prompt using space
map('n', '<space>', ':', {})

-- yank from cursor to the end of line 
map('n', 'Y', 'y$', {})


