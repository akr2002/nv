{
  imports = [
    ./bufferlines/bufferlines.nix

    ./colorschemes/base16.nix
    ./colorschemes/catppuccin.nix
    ./colorschemes/rose-pine.nix

    ./completion/cmp.nix
    ./completion/lspkind.nix

    ./dap/dap.nix

    ./filetrees/neo-tree.nix

    ./git/diffview.nix
    ./git/gitsigns.nix
    ./git/lazygit.nix
    ./git/neogit.nix

    ./keymaps.nix

    ./languages/treesitter/treesitter-context.nix
    ./languages/treesitter/treesitter-textobjects.nix
    ./languages/treesitter/treesitter.nix
    ./languages/treesitter/ts-autotag.nix
    ./languages/treesitter/treesitter-context-commentstring.nix
    ./languages/nvim-jdtls.nix
    ./languages/nvim-lint.nix

    ./lsp/conform.nix
    ./lsp/fidget.nix
    ./lsp/lsp.nix
    ./lsp/lspsaga.nix
    ./lsp/trouble.nix

    ./none-ls/none-ls.nix

    ./sets.nix

    ./snippets/luasnip.nix

    ./statusline/lualine.nix
    ./statusline/staline.nix

    ./telescope/telescope.nix

    ./ui/alpha.nix
    ./ui/nvim-notify.nix
  ];
}
