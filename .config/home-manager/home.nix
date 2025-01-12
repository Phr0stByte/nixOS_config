{ config, pkgs, ... }:

{
  home.username = "phr0stbyte";
  home.homeDirectory = "/home/phr0stbyte";
  home.stateVersion = "24.05";

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    alacritty
    archiver
    brave
    btop
    cava
    clementine
    conda
    darktable
    evince
    feh
    fira-code-nerdfont
    flameshot
    font-awesome
    gbar
    geany
    ghostty
    gimp
    git
    gitg
    gnucash
    hyprshot
    imagemagick
    jq
    mpdris2
    playerctl
    ledger-live-desktop
    libnotify
    libreoffice
    lxappearance
    mako
    networkmanager-openvpn
    nwg-look
    olive-editor
    openvpn
    p7zip
    pipes
    powerline
    powerline-fonts
    protonmail-bridge-gui
    stacer
    steam
    superTuxKart
    thunderbird
    tradingview
    ventoy-full
    vlc
    wallust
    wpgtk
    xfce.thunar-archive-plugin
    xfce.thunar-volman
    xgalagapp
    xorg.xev
    xournalpp
    yazi
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
  #services.redshift = {
    #enable = true;
    #latitude = "38.8394476";
    #longitude = "-77.4535847";
    #tray = true;
  #};
}
