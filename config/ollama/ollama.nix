{
  plugins.ollama = {
    enable = true;
    model = "tinyllama";
    url = "http://127.0.0.1:11434";
  };

  keymaps = [
    {
      key = "<leader>o";
      action = "<cmd>Ollama<cr>";
      options = {
        desc = "Ask Ollama";
      };
    }
    {
      mode = "v";
      key = "<leader>oe";
      action = "<cmd>Ollama Explain_Code<cr>";
      options = {
        desc = "Explain code snippet";
      };
    }
    {
      key = "<leader>oo";
      action = "<cmd>Ollama Raw<cr>";
      options = {
        desc = "Ask Ollama";
      };
    }
    {
      mode = "v";
      key = "<leader>os";
      action = "<cmd>Ollama Simplify_Code<cr>";
      options = {
        desc = "Simplify code snippet";
      };
    }
  ];
}
