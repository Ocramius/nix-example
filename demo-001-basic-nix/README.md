# Demo 001: interact with the Nix language

```sh
cd demo-001-basic-nix

nix eval --expr '10 + 15'

nix eval --file simple-sum.nix

nix eval --file declare-a-complex-structure.nix

nix eval --expr 'a: a + 1'

nix eval --file call-a-function.nix
```

Nix has built-in support for evaluating remote expressions into local derivations

```sh
nix eval nixpkgs#hello

nix eval --raw nixpkgs#hello

nix run nixpkgs#hello
```