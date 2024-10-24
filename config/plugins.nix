{pkgs, ...}:
{
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

    debugprint = {
      enable = true;
      # settings = {
      #   keymaps = {
      #     insert = {
      #         plain = "<C-G>p";
      #         variable = "<C-G>v";
      #     };
      #   };
      # };
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
  extraPlugins =
    let
      apathy = ( pkgs.vimUtils.buildVimPlugin {
        name = "apathy";
        src = pkgs.fetchFromGitHub {
            owner = "tpope";
            repo = "vim-apathy";
            rev = "master";
            hash = "sha256-E5ZboCQmp7FDAILPoAaGULepyAR90vfrOtaQ3EfdzJg=";
        };
      });
    in [
      pkgs.vimPlugins.vim-vinegar
      pkgs.vimPlugins.vimelette
      pkgs.vimPlugins.bufexplorer
      pkgs.vimPlugins.nvim-solarized-lua
      pkgs.vimPlugins.vim-obsession
      pkgs.vimPlugins.vim-commentary
      pkgs.vimPlugins.vim-unimpaired
      apathy
    ];
}
