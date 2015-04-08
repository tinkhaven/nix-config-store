{config, pkgs, ... }:

{
  services.gitolite = {
    enable = true;
    dataDir = "/var/git";
    adminPubkey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCf4aPzEvnqJwigAP0ECC+OQZgYaP2SUqtD3Ih3kogQ3Y/w3Y4tcz/3FBEV19MmNDO496rLa774/kudMGSvjZzz+vQQRgoOm5ocIw2zNDvR18LaKakU76IQkkAZxEYSqF+cUqrsAs0y2uT2QGCEq3hcZfFnx9+903fH5ZwOL1K4pNO+NGOGVGPjzm+mhgWLK0k8BFBw2LQHQFkyKC9X/jTmlAmTg2bVcXJGAAGt/uUEyfDF/fOtpNBgkQe2r8ZDtumiwZ13GDVzpcjnPJmxiS6y6OrsYvl0dx0yIBDMMVYiopCeX16t0eklvES3tug+ePtnGMy+buXy1FPwbrz7Fmi/ git@bagua";
    user = "git";

  };
}