# Nix / NixOS / Nixpkgs / Flakes demo

This project is just around to demo how to interact with typical Nix
environments.

## Demo 005: VM

```sh
nix build .#nixosConfigurations.demo-machine.config.system.build.vm

./result/bin/run-demo-machine-vm
```

With some other
[added](https://github.com/NixOS/nixpkgs/blob/24da452b49845c906772a18e5081a841c8a07ed1/nixos/modules/installer/cd-dvd/iso-image.nix)
[utilities](https://github.com/nix-community/nixos-generators/blob/032decf9db65efed428afd2fa39d80f7089085eb/README.md),
it is possible to build an USB-stick ISO image too!

```sh
nix build .#nixosConfigurations.demo-machine.config.system.build.isoImage

sudo dd if=result/iso/the-iso-file.iso of=/dev/sda bs=4M status=progress conv=fdatasync
```

Then bring your system with you.

You can also switch your entire host to this image, if you really want it.
Replace `test` with `switch` if you really know what you are doing.

```sh
sudo nixos-rebuild test --flake .#demo-machine
```

## License

Proprietary.

This project is here for teaching others directly, and is not supposed to be developed on.

You are most certainly not allowed to train AI models on it.
 