{
  config,
  pkgs,
  host,
  user,
  ...
}: {
  plugins.undotree = {
    enable = true;
    settings = {
      autoOpenDiff = true;
      FocusOnToggle = true;
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>ut";
      action = "<cmd>UndotreeToggle<cr>";
      options = {
        silent = true;
        desc = "Undotree";
      };
    }
  ];
}
