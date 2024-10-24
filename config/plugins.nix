{pkgs, ...}: {
  plugins = {
    web-devicons = {
      enable = true;
    };

    telescope = {
      enable = true;
    };

    treesitter = {
      enable = true;
    };

    fugitive = {
      enable = true;
    };

    # Make `nvim .` look prettier
    oil = {
      enable = true;
    };

    which-key = {
      enable = true;
    };

    lsp-format = {
        enable = true;
        lspServersToEnable = "all";
    };

    lsp.enable = true;

    lsp.servers.nixd = {
        enable = true;
    };

    lsp.servers.ruff = {
        enable = true;
    };
  };
  extraPlugins = with pkgs.vimPlugins;
    [
      vinegar
      vimelette
      bufexplorer
      nvim-solarized-lua
      vim-obsession
      vim-commentary
    ];
}
