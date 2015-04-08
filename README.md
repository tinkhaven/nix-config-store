# nix-config-store

How I setup my AWS machines:

AMI: nixos-14.12.323.9164307-x86_64-hvm (ami-d126a5a6)

After launching the instance I immedialy setup my services using some simple default configuration files.

## Preparation

### nginx 

    git clone git@github.com:tinkerthaler/nix-nginx.git /etc/nginx
    mkdir /var/log/nginx

### noip

    mkdir /etc/noip
    cd /etc/noip
    noip2 -C

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
