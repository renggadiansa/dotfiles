-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Ubah toggle sidebar menjadi Ctrl+b
vim.keymap.set("n", "<C-b>", "<cmd>Neotree toggle<CR>", { desc = "Toggle Sidebar" })

-- Ubah toggle terminal menjadi Ctrl+`
vim.keymap.set("n", "<C-`>", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
-- Find within File (Ctrl + F)
vim.keymap.set("n", "<C-f>", ":Telescope live_grep<CR>", { noremap = true, silent = true })

-- Find File (Ctrl + P)
vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>", { noremap = true, silent = true })

-- Keymap untuk copy di mode visual dan insert
vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy to system clipboard" })
vim.keymap.set("i", "<C-c>", '<Esc>"+yi', { desc = "Copy to system clipboard in insert mode" })

-- Keymap untuk paste di mode normal, visual, dan insert
vim.keymap.set("n", "<C-v>", '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set("v", "<C-v>", '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set("i", "<C-v>", "<C-r>+", { desc = "Paste from system clipboard in insert mode" })

-- Keymap untuk seleksi teks per kata dengan Ctrl+Arrow Kiri dan Kanan di mode insert
vim.keymap.set("i", "<C-Left>", "<Esc>vbgi", { desc = "Select word left in insert mode" })
vim.keymap.set("i", "<C-Right>", "<Esc>vea", { desc = "Select word right in insert mode" })

-- Keymap untuk seleksi karakter dengan Ctrl+Arrow Kiri dan Kanan di mode visual
vim.keymap.set("v", "<C-Left>", "<Left><Left>", { desc = "Select character left" })
vim.keymap.set("v", "<C-Right>", "<Right><Right>", { desc = "Select character right" })

-- Keymap untuk memilih seluruh teks dengan Ctrl+A di mode insert
vim.keymap.set("i", "<C-A>", "<Esc>ggVG", { desc = "Select all in insert mode" })

-- Keymap untuk memilih seluruh teks dengan Ctrl+A di mode visual
vim.keymap.set("v", "<C-A>", "ggVG", { desc = "Select all in visual mode" })

-- Keymap untuk menghapus teks yang sudah diseleksi di mode visual dengan Backspace
vim.keymap.set("v", "<BS>", '"_d', { desc = "Delete selected text with Backspace" })

-- Keymap untuk menampilkan/menyembunyikan terminal menggunakan Ctrl+T
vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal with Ctrl+T" })

-- Kembali ke mode normal dari terminal dengan tombol Esc
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode to normal mode" })

-- Keymap untuk membuka NeoTree (file explorer) dengan tombol Tab
vim.keymap.set("n", "<Tab>", "<cmd>Neotree toggle<CR>", { desc = "Toggle NeoTree file explorer with Tab" })

-- Keymap untuk meng-cut teks yang diseleksi di mode visual dengan Ctrl+X
vim.keymap.set("v", "<C-x>", '"*d', { desc = "Cut selected text with Ctrl+X" })

-- Keymap untuk mengaktifkan/menonaktifkan word wrap dengan Ctrl+W
vim.keymap.set("n", "<C-w>", "<cmd>setlocal wrap!<CR>", { desc = "Toggle word wrap" })

-- Keymap untuk toggle komentar dengan Shift + / di visual mode
vim.keymap.set("v", "?", "<Plug>(comment_toggle_linewise_visual)", { desc = "Toggle comment in visual mode" })

-- Keymap untuk Undo dengan Ctrl + Z
vim.keymap.set("n", "<C-z>", "u", { desc = "Undo" })

-- Keymap untuk Redo dengan Ctrl + Y
vim.keymap.set("n", "<C-y>", "<C-r>", { desc = "Redo" })

vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })

vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })

-- Mode insert (keluar ke mode normal, pindahkan baris, lalu kembali ke insert mode)
vim.keymap.set("i", "<A-Up>", "<Esc>:m .-2<CR>==i", { desc = "Move line up in insert mode" })
vim.keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>==i", { desc = "Move line down in insert mode" })
