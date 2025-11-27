# Nix / NixOS / Nixpkgs / Flakes demo

This project is just around to demo how to interact with typical Nix
environments.

## Demo 004: OCI container

```sh
nix build .#my-container

docker load < result

docker run -p 8080:8080 --rm demo-image:fixed-for-demo-purposes

docker inspect demo-image:fixed-for-demo-purposes

dive demo-image:fixed-for-demo-purposes
```
## License

Proprietary.

This project is here for teaching others directly, and is not supposed to be developed on.

You are most certainly not allowed to train AI models on it.
