local wk = require('which-key')
local presets = require("which-key.plugins")
presets.registers = nil
local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
  local float = Terminal:new({direction = 'float'})
  return float:toggle()
end

local toggle_lazygit = function()
  local lazygit = Terminal:new({cmd = 'lazygit', direction = 'float'})
  return lazygit:toggle()
end

local mappings = {
  q = {":q!<CR>", "Quit"},
  S = {":wq<CR>", "Save & Quit"},
  s = {":w<CR>", "Save"},
  x = {":bdel<CR>", "Close"},
  f = {":Telescope find_files<CR>", "Telescope Find Files"},
  g = {":Telescope live_grep<CR>", "Telescope Live Grep"},
  b = {":Telescope file_browser<CR>", "Telescope File Browser"},
  h = {":Telescope resume<CR>", "Telescope Search History"},
  V = {":Telescope git_files<CR>", "Telescope Git Files"},
  G = {":Telescope git_status<CR>", "Telescope Git Status"},
  E = {":NvimTreeToggle<CR>", "Side Explorer"},
  T = {":Lspsaga open_floaterm<CR>", "Open Float Term"},
  C = {":ColorizerToggle<CR>", "Toggle color highlighting"},
  l = {
    name = "LSP",
    i = {":LspInfo<cr>", "Connected Language Servers"},
    A = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', "Add workspace folder"},
    R = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', "Remove workspace folder"},
    l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', "List workspace folder"},
    D = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', "Type definition"},
    r = {'<cmd>lua vim.lsp.buf.rename()<CR>', "Rename"},
    a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', "Code actions"},
    e = {'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', "Show line diagnostics"},
    d = {'<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', "Show loclist"},
  },
  t = {
    t = {":ToggleTerm<CR>", "Split Term"},
    f = {toggle_float, "Foating Terminal"},
    l = {toggle_lazygit, "Lazy Git Terminal"},
  }
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
