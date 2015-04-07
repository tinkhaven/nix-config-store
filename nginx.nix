{config, pkgs, ... }:

{
  networking.firewall.allowedTCPPorts = [ 80 443 ];
  services = {
    nginx.enable = true;
    nginx.config = pkgs.lib.readFile /root/nginx.conf;
  };
}