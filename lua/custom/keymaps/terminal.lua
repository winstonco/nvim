-- Toggle terminal with <leader>tt
vim.keymap.set({ 'n', 'v' }, '<leader>tt', function()
	local buftype = vim.bo.buftype
	if buftype == 'terminal' then
		vim.cmd.close()
	else
		vim.cmd('horizontal below split')
		vim.cmd.terminal()
	end
end, { desc = '[T]oggle [T]erminal', silent = true })

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
