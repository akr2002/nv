{ pkgs, lib, config, ... }:
{
  config = {
    options = {
      # Relative line numbers
      number = true;
      relativenumber = true;

      # Tab length
      tabstop = 2;
      softtabstop = 2;
      showtabline = 2;
      expandtab = true;

      # Set autoindent and use spaces
      smartindent = true;
      shiftwidth = 2;

      # Smart indenting
      breakindent = true;

      # Incremental search
      hlsearch = true;
      incsearch = true;

      # Text wrap
      wrap = true;

      # Splitting
      splitbelow = true;
      splitright = true;

      # Mouse mode
      mouse = "a";

      # Ignore case when searching
      ignorecase = true;
      smartcase = true; # Do not ignore case with capitals
      grepprg = "rg --vimgrep";
      grepformat = "%f:%l:%c:%m";

      # Decrease update time
      updatetime = 50;


      # Set completeopt
      completeopt = [ "menuone" "noselect" "noinsert" ];

      # Persistent undo history
      swapfile = false;
      backup = false;
      undofile = true;

      # Enable 24-bit color
      termguicolors = true;

      # Enable sign column to prevent the screen from jumping
      signcolumn = "yes";

      # Cursor line highlighting
      cursorline = true;

      # Fold settings
      foldcolumn = "0";
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;

      # Keep 8 lines above and below cursor except start/end of file
      scrolloff = 8;

      # Column line
      colorcolumn = "80";

      # Whcih key timeout
      timeoutlen = 10;

      # Encoding
      encoding = "utf-8";
      fileencoding =  "utf-8";

      # Cursor options
      guicursor = [
        "n-v-c:block" # Normal, visual, command-line: block cursor
        "i-ci-ve:ver25" # Insert, command-line insert, visual-exclude: vertical bar with 25% width
        "r-cr:hor20" # Replace, command-line replace: horizontal bar cursor with 20% height
        "o:hor50" # Operator-pending: horizontal bar cursor with 50% height
        "a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor" # All mdoes: blinking settings
        "sm:block-blinkwait175-blonkoff150-blinkon175" # Stopwatch: block cursor with specific blink settings
      ];

      # Chars list
      list = true; # Show invisible characters
      listchars = "eol:↲,tab:|->,lead:·,space: ,trail:•,extends:→,precedes:←,nbsp:␣";
      
      # Space in neovim command line to display messages
      cmdheight = 2;

      # Showmode
      showmode = true; # TODO change to false

      # Maximum number of items to show in popup menu (0 - use available screen space)
      pumheight = 0;

      # Format lines if supported by language server
      formatexpr = "v:lua.require'conform'.formatexpr()";

      laststatus = 3;
    };

    extraConfigLua = ''
      local opt = vim.opt
      local g = vim.g
      local o = vim.o

      -- Neovide
      if g.neovide then
        -- Neovide options
        g.neovide_fullscreen = false
        g.neovide_hide_mouse_when_typing = false
        g.neovide_refresh_rate = 60
        g.neovide_cursor_vfx_mode = "ripple"
        g.neovide_cursor_animkate_command_line = true
        g.neovide_cursor_animate_in_insert_mode = true
        g.neovide_cursor_vfx_particle_lifetime = 5.0
        g.neovide_cursor_particle_density = 14.0
        g.neovide_cursor_vfx_particle_speed = 12.0
        g.neovide_transparency = 0.8

        -- Neovide Fonts
        o.guifont = "JetBrainsMono Nerd Font"
      end
    '';
  };
}
