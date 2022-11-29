#{ pkgs ? import <nixpkgs> {} }:
{ pkgs ? import (fetchTarball https://github.com/NixOS/nixpkgs/archive/abe6ea8ac11de69b7708ca9c70e8cd007600cd73.tar.gz) {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    python310
    python310Packages.jupyter
    python310Packages.jupyterlab
    python310Packages.jupyterlab-lsp
    python310Packages.matplotlib
    python310Packages.numpy
    python310Packages.pandas
  ];
  nativeBuildInputs = with pkgs; [
    #TODO
  ];
}

