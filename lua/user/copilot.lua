vim.g.copilot_filetypes = { xml = false, markdown = false }

vim.cmd[[imap <silent><script><expr> <C-a> copilot#Accept("\<CR>")]]
vim.g.copilot_no_tab_map = true
