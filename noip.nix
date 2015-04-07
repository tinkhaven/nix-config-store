{config, pkgs, ... }:

{
  systemd.services.noip = {
    wantedBy = [ "multi-user.target" ];
    after    = [ "network.target"    ];
    serviceConfig = {
      Type = "forking";
      User = "root";
      ExecStart = ''/root/.nix-profile/bin/noip2 -d -c /root/noip'';
    };
  };
}