{ pkgs, inputs, ... }:

{ 
  imports = [
    inputs.impermanence.nixosModules.home-manager.impermanence
  ];

  home.stateVersion = "24.11"; # Please read the comment before changing.

  home.persistence."/persist/home/surya" = {
    directories = [
      "Downloads"
      "Music"
      "Pictures"
      "Documents"
      "Videos"
      "VirtualBox VMs"
      ".gnupg"
      ".ssh"
      ".nixops"
      ".local/share/keyrings"
      ".local/share/direnv"
      {
        directory = ".local/share/Steam";
        method = "symlink";
      }
    ];
    files = [
      ".screenrc"
    ];
    allowOther = true;
  };
}
