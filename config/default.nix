{
  imports = [
    ./bufferlines/bufferlines.nix

    ./colorschemes/base16.nix
    ./colorschemes/catppuccin.nix
    ./colorschemes/rose-pine.nix

    ./completion/cmp.nix
    ./completion/lspkind.nix

    ./git/diffview.nix
    ./git/gitsigns.nix
    ./git/lazygit.nix
    ./git/neogit.nix

    ./languages/treesitter/treesitter-context.nix
    ./languages/treesitter/treesitter-textobjects.nix
    ./languages/treesitter/treesitter.nix
    ./languages/treesitter/ts-autotag.nix
    ./languages/treesitter/treesitter-context-commentstring.nix
    ./languages/nvim-jdtls.nix
    ./languages/nvim-lint.nix

    ./lsp/conform.nix
    ./lsp/fidget.nix

    ./dap/dap.nix

    ./filetrees/neo-tree.nix

    ./keymaps.nix

    ./sets.nix

    ./ui/nvim-notify.nix
  ];
}
