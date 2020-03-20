{ pkgs ? import <nixpkgs> {} }:

let
  myEmacs = pkgs.emacs;
  emacsWithPackages = (pkgs.emacsPackagesGen myEmacs).emacsWithPackages;
  emacsPkgs = emacsWithPackages (epkgs: (with epkgs.melpaStablePackages; [
    zerodark-theme
  ]) ++ (with pkgs.haskellPackages; [
    Agda
  ]) ++ [
    pkgs.AgdaStdlib
  ]);
  ghcPkgs = pkgs.haskellPackages.ghcWithPackages (ps: with ps; [
    base
    ieee754
  ]);
in
  pkgs.stdenv.mkDerivation {
    name = "agda-env";
    buildInputs = [
      emacsPkgs
      ghcPkgs
    ];
  }

