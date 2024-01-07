{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.cowsay
    pkgs.python312
    pkgs.python3Packages.requests
  ];
}
