vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

vim.cmd [[highlight IndentBlanklineChar guifg=#503945 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineSpaceChar guifg=#503945 gui=nocombine]]

require("indent_blankline").setup {
    show_current_context = true,
    space_char_blankline = " ",
}
