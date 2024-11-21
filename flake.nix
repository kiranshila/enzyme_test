{
  inputs = {
    nixpkgs.url = "github:kiranshila/nixpkgs/master";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem
    (
      system: let
        pkgs = import nixpkgs {inherit system;};
        buildInputs = with pkgs; [enzyme cmake llvmPackages.bintools];
      in
        with pkgs; {
          devShells.default = mkShell.override {stdenv = clangStdenv;} {
            inherit buildInputs;
          };
        }
    );
}