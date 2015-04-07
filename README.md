# nix-config-store

## Preparation

### nginx 

git clone git@github.com:tinkerthaler/nix-nginx.git /etc/nginx

### noip

mkdir /etc/noip

## Configuration

/etc/nixos/configuration.nix

  { config, pkgs, ...}:
  {
    imports = [
      ./amazon-base-config.nix
      ./nix_config_store/base-packages.nix
      ./nix_config_store/nginx.nix
      ./nix_config_store/noip.nix
    ];
    ec2.hvm = true;
  
  }
