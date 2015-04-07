{ config, pkgs, ...}:
{
  imports = [
    ./amazon-base-config.nix
    ./nix_config_store/nginx.nix
    ./nix_config_store/noip.nix
  ];
  ec2.hvm = true;

  environment.systemPackages = [
    pkgs.openssl
    pkgs.emacs
    pkgs.haskellPackages.cabal2nix
  ];

}
