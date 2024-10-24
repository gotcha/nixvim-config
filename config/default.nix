{
  # Import all your configuration modules here
  imports = [ 
    ./plugins.nix
    ./keymappings.nix
  ];

  globals.mapleader = ",";
  colorscheme = "solarized";
  opts.relativenumber = true;
  opts.expandtab = true;


}
