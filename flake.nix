{
  description = "Neovim config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    nixvim.url = "github:nix-community/nixvim";
    flake-utils = {
      url = "github:numtide/flake-utils";
    };
  };

  outputs = { self, nixpkgs, nixvim, flake-utils, ... } @inputs:
  let
    config = import ./config;
  in
    flake-utils.lib.eachDefaultSystem (system: let
      nixvimLib = nixvim.lib.${system};
      pkgs = import nixpkgs {inherit system;};
      nixvim1 = nixvim.legacyPackages.${system};
      nvim = nixvim1.makeNixvimWithModule {
        inherit pkgs;
        module = config;
        extraSpecialArgs = {
          inherit self;
        };
      };
    in {
      checks = {
        default = nixvimLib.check.mkTestDerivationFromNvim {
          inherit nvim;
          name = "nv";
        };
      };

      packages = {
        default = nvim;
        name = "nv";
      };
    });
}
