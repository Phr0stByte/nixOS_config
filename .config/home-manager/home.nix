{ config, pkgs, ... }:

{
  home.username = "phr0stbyte";
  home.homeDirectory = "/home/phr0stbyte";
  home.stateVersion = "24.05";

  home.packages = with pkgs; [
    alacritty
    archiver
    brave
    btop
    clementine
    darktable
    fira-code-nerdfont
    flameshot
    font-awesome
    geany
    gimp
    git
    playerctl
    libreoffice
    lxappearance
    p7zip
    pipes
    powerline
    powerline-fonts
    protonmail-bridge-gui
    ranger
    thunderbird
    vlc
    xarchiver
    xfce.thunar-archive-plugin
    xfce.thunar-volman
  ];

  programs.git = {
    enable = true;
    userName = "Phr0stByte";
    userEmail = "rwohlschlag@protonmail.com";
    delta = {
      enable = true;
      options = {
        navigate = true;
        line-numbers = true;
      };
    };
    extraConfig = {
      gpg = {
        format = "ssh";
      };
      url = {
        "git@github.com:" = {
          insteadOf = "https://github.com/";
        };
        "git@gitlab.com:" = {
          insteadOf = "https://gitlab.com/";
        };
      };
    };
  };

  home.file = {
    ".bashrc".source = "${config.home.homeDirectory}/.dotfiles/.bashrc";
    # Add other dotfiles here
  };

  home.sessionVariables = {
    # EDITOR = "nano";
  };

  programs.home-manager.enable = true;
}
