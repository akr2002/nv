
{
  globals.mapleader = " ";
  
  keymaps = [
    # General maps
    {
      mode = "n";
      key = "<leader>f";
      action = "+find/file";
    }
    {
      mode = "n";
      key = "<leader>s";
      action = "+search";
    }
    {
      mode = "n";
      key = "<leader>q";
      action = "+quit/session";
    }
    {
      mode = ["n" "v"];
      key = "<leader>g";
      action = "+git";
    }
    {
      mode = "n";
      key = "<leader>u";
      action = "+ui";
    }
    {
      mode = "n";
      key = "<leader>w";
      action = "+windows";
    }
    {
      mode = "n";
      key = "<leader><Tab>";
      action = "+tab";
    }
    {
      mode = ["n" "v"];
      key = "<leader>d";
      action = "+debug";
    }
    {
      mode = ["n" "v"];
      key = "<leader>c";
      action = "+code";
    }
    {
      mode = ["n" "v"];
      key = "<leader>t";
      action = "";
    }

    # Tabs
    {
      mode = "n";
      key = "<leader><tab>l";
      action = "<cmd>tablast<cr>";
      options = {
        silent = true;
        desc = "Last tab";
      };
    }
    {
      mode = "n";
      key = "<leader><tab>f";
      action = "<cmd>tabfirst<cr>";
      options = {
        silent = true;
        desc = "First Tab";
      };
    }
    {
      mode = "n";
      key = "<leader><tab><tab>";
      action = "<cmd>tabnew<cr>";
      options = {
        silent = true;
        desc = "New Tab";
      };
    }
    {
      mode = "n";
      key = "<leader><tab>]";
      action = "<cmd>tabnext<cr>";
      options = {
        silent = true;
        desc = "Next Tab";
      };
    }
    {
      mode = "n";
      key = "<leader><tab>d";
      action = "<cmd>tabclose<cr>";
      options = {
        silent = true;
        desc = "Close Tab";
      };
    }
    {
      mode = "n";
      key = "<leader><tab>[";
      action = "<cmd>tabprevious<cr>";
      options = {
        silent = true;
        desc = "Previous Tab";
      };
    }

    # Windows
    {
      mode = "n";
      key = "<leader>ww";
      action = "<C-w>p";
      options = {
        silent = true;
        desc = "Other window";
      };
    }
    {
      mode = "n";
      key = "<leader>wd";
      action = "<C-w>c";
      options = {
        silent = true;
        desc = "Delete window";
      };
    }
    {
      mode = "n";
      key = "<leader>w-";
      action = "<C-w>s";
      options = {
        silent = true;
        desc = "Split window below";
      };
    }
    {
      mode = "n";
      key = "<leader>w|";
      action = "<C-w>v";
      options = {
        silent = true;
        desc = "Split window right";
      };
    }
    {
      mode = "n";
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options = {
        silent = true;
        desc = "Save file";
      };
    }

    # Session
    {
      mode = "n";
      key = "<leader>qq";
      action = "<cmd>quitall<cr>";
      options = {
        silent = true;
        desc = "Quit all";
      };
    }
    {
      mode = "n";
      key = "<leader>qs";
      action = ":lua require('persistence').load()<cr>";
      options = {
        silent = true;
        desc = "Restore session";
      };
    }
    {
      mode = "n";
      key = "<leader>ql";
      action = "<cmd>lua require('persistence').load({ last = true })<cr>";
      options = {
        silent = true;
        desc = "Restore last session";
      };
    }
    {
      mode = "n";
      key = "<leader>qd";
      action = "<cmd>lua require('persistence').stop()<cr>";
      options = {
        silent = true;
        desc = "Don't save current session";
      };
    }
    {
      mode = "n";
      key = "<leader>ul";
      action = ":lua ToggleLineNumber()<cr>";
      options = {
        silent = true;
        desc = "Toggle line number";
      };
    }
    {
      mode = "n";
      key = "<leader>uL";
      action = ":lua ToggleRelativeLineNumber()<cr>";
      options = {
        silent = true;
        desc = "Toggle relative line number";
      };
    }
    {
      mode = "n";
      key = "<leader>uw";
      action = ":lua ToggleWrap()<cr>";
      options = {
        silent = true;
        desc = "Toggle line wrap";
      };
    }
    {
      mode = "n";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options = {
        silent = true;
        desc = "Move up when line is highlighted";
      };
    }
    {
      mode = "n";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
      options = {
        silent = true;
        desc = "Move down when line is highlighted";
      };
    }
    {
      mode = "n";
      key = "J";
      action = "mzJ`z";
      options = {
        silent = true;
        desc = "Allow cursor to stay in the same place after appending to current line";
      };
    }
    {
      mode = "n";
      key = "<";
      action = "<gv";
      options = {
        silent = true;
        desc = "Indent while remaining in visual mode";
      };
    }
    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
      options = {
        silent = true;
        desc = "Allow <C-d> and <C-u> to keep cursor in the middle";
      };
    }
    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
      options = {
        silent = true;
        desc = "Allow <C-d> and <C-u> to keep cursor in the middle";
      };
    }
    {
      mode = "n";
      key = "k";
      action.__raw = "
        [[(v:count > 1 ? 'm`' . v:count : 'g') . 'k']]
      ";
      options = {
        expr = true;
        desc = "Remap for dealing with word wrap and adding jumps to the jumplist";
      };
    }
    {
      mode = "n";
      key = "n";
      action = "nzzzv";
      options = {
        desc = "Allow search terms to stay in the middle";
      };
    }
    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
      options = {
        desc = "Allow search terms to stay in the middle";
      };
    }

    # Paste without saving the deleted word int othe buffer
    {
      mode = "x";
      key = "<leader>p";
      action = "\"_dP";
      options = {
        desc = "Deletes to void register and pastes over";
      };
    }

    # Copy to system clipboard with <leader>+y or just y to have it just in vim
    {
      mode = ["n" "v"];
      key = "<leader>y";
      action = "\"+y";
      options = {
        desc = "Copy to sysem clipboard";
      };
    }
    {
      mode = ["n" "v"];
      key = "<leader>Y";
      action = "\"+Y";
      options = {
        desc = "Copy to system clipboard";
      };
    }

    # Delete to void register
    {
      mode = ["n" "v"];
      key = "<leader>D";
      action = "\"_d";
      options = {
        desc = "Delete to void register";
      };
    }
    {
      mode = "n";
      key = "<C-f>";
      action = "!tmux new tmux-sessionizer<CR>";
      options = {
        desc = "Switch between projects";
      };
    }
  ];

  extraConfigLua = ''
    local notify = require("notify")

    local function show_notification(message, level)
      notify(message, level, { title = "conform.nvim" })
    end

    function ToggleLineNumber()
      if vim.wo.number then
        vim.wo.number = false
        show_notification("Line number disabled", "info")
      else
        vim.wo.number = true
        show_notification("Line number enabled", "info")
      end
    end

    function ToggleRelativeLineNumber()
      if vim.wo.relativenumber then
        vim.wo.relativenumber = false
        show_notification("Relative line number disabled", "info")
      else
        vim.wo.relativenumber = true
        show_notification("Relative line number enabled", "info")
      end
    end

    function ToggleWrap()
      if vim.wo.wrap then
        vim.wo.wrap = false
        show_notification("Wrap disabled", "info")
      else
        vim.wo.wrap = true
        show_notification("Wrap enabled", "info")
      end
    end

    if vim.lsp.inlay_hint then
      vim.keymap.set('n', '<leader>uh', function()
        vim.lsp.inlay_hint(0, nil)
      end, { desc = 'Toggle inlay hints' })
    end
  '';
}
