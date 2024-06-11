{
  description = "Enzyme C Test Flake";
  inputs = {
    nixpkgs.url = "github:kiranshila/nixpkgs/master";
  };
  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux"];
      perSystem = {
        config,
        self',
        inputs',
        pkgs,
        system,
        ...
      }: {
        devShells = {
          default = pkgs.mkShell.override {stdenv = pkgs.clangStdenv;} {
            packages = with pkgs; [
              enzyme
              cmake
              lld
            ];
          };
        };
      };
    };
}
