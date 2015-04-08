{config, pkgs, ... }:

{
  services.gitolite = {
    enable = true;
    dataDir = "/var/git";
    adminPubkey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDMzox8/XkGp6v8QcPOcCardQrg1f0YAI07v6WbTHDbOK9WuUQ5o6oRCjyqt7DqT4thfxHc3wJstThPC5ImCN+GnTawsqXeHWsdPDDS3ZkiSNNeZlSbvsCqfOINs0n0bcyCVCS/8ysPrG8g4FEc0VAfYgh9XFg1jwzfTjHXJAp9FvyS6EC3fpDJGUWTZoxvZCAxaz1HCABsjSHj1aa5X66GKtkI7Bj4KzQ9TnzCd4p3jnbvPVh9yi1fW9IxuAvhXRO+4dIUjNmgSHawztrzysl1co8NGIMv64syRceTSDl+nnIrpTLDR0Buh3le30ylERDc3pmYXXBiHecQbNMg9Iaf tinkerthaler@jujuy";
    user = "git";

  };
}