{config, pkgs, ... }:

{
  networking.firewall.allowedTCPPorts = [ 3306 ];
  #environment.systemPackages = [
  #  pkgs.mysql
  #];
  services.mysql = {
    enable = true;
    port = 3306;
    package = pkgs.mysql;
    user = "mysql";
    dataDir = "/var/db/mysql";
  };
}