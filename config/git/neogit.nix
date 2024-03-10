{
  plugins.neogit = {
    enable = true;
    disableBuiltinNotifications = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>Neogit kind=floating<cr>";
      options = {
        desc = "Toggle Neogit";
      };
    }
  ];
}
