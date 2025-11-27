{
  description = "Flake that copies a local file to the result";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { self, nixpkgs }: {
    nixosConfigurations.demo-machine =
      let pkgs = (import nixpkgs) { system = "x86_64-linux"; };
      in nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
        ];
      };
  };
}