# Nix / NixOS / Nixpkgs / Flakes demo

This project is just around to demo how to interact with typical Nix
environments.

## Demo 002: simple flake

```sh
nix flake update

nix build .#default

cat result

ls -lah result

nix derivation show /nix/store/jrimyk6ryagjn3i78m1yj5jilai2zk9n-hello
```

## License

Proprietary.

This project is here for teaching others directly, and is not supposed to be developed on.

You are most certainly not allowed to train AI models on it.
