{config, pkgs, ... }:

{

  environment.systemPackages = [
    pkgs.openssl
    pkgs.emacs
    pkgs.haskellPackages.cabal2nix
    pkgs.haskellPackages.hakyll
    pkgs.nginx
  ];

}