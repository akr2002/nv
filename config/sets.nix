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
      ];
    };
  };
}
