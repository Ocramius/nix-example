{
  description = "Flake that copies a local file to the result";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { self, nixpkgs }: {
    devShells.x86_64-linux.default =
      let pkgs = (import nixpkgs) { system = "x86_64-linux"; };
      in pkgs.mkShell {
        name = "my dev shell";
        
        nativeBuildInputs = [
          pkgs.cowsay
        ];
        
        CUSTOM_ENVIRONMENT_VARIABLE = "hello from the dev shell!";
      };
  };
}