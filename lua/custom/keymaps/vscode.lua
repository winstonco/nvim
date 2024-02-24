-- Some bindings similar to vscode

-- Move current line up with Alt+k
vim.keymap.set('n', '<A-k>', ':m -2<CR>==', { noremap = true, silent = true })
vim.keymap.set('i', '<A-k>', '<Esc>:m -2<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Move current line down with Alt+j
vim.keymap.set('n', '<A-j>', ':m +1<CR>==', { noremap = true, silent = true })
vim.keymap.set('i', '<A-j>', '<Esc>:m +1<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

-- Duplicate current line up with Alt+Shift+j
vim.keymap.set('n', '<A-S-j>', ':t.<CR>', { noremap = true, silent = true })

-- Duplicate current line down with Alt+Shift-k
vim.keymap.set('n', '<A-S-k>', ':t -1<CR>', { noremap = true })
