{
  description = "Flake that copies a local file to the result";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { self, nixpkgs }: {
    default =
      let pkgs = (import nixpkgs) { system = "x86_64-linux"; };
      in derivation {
        name    = "hello";
        builder = "${pkgs.bash}/bin/bash";
        args    = [ "-c" "${pkgs.coreutils}/bin/cat ${./sources/hello.txt} > $out" ];
        system  = "x86_64-linux";
      };
  };
}