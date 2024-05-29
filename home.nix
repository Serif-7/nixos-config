
{ config, pkgs, ... }:

{
  imports = [
    ./configs/helix.nix
    ./configs/fish.nix
    ./configs/tealdeer.nix
    ./configs/alacritty.nix
    ./configs/zathura.nix
  ];

  programs.home-manager.enable = true;

  # added 5/28/2024 because one of the installed
  # packages' electron versio was declared EOL
  nixpkgs.config.permittedInsecurePackages = [
    "electron-25.9.0"
    ];

  home = {
    /* The home.stateVersion option does not have a default and must be set */
    stateVersion = "18.09";
    /* Here goes the rest of your home-manager config, e.g. home.packages = [ pkgs.foo ]; */
    packages = with pkgs; [

      # System Tools
      file
      fd
      ripgrep
      unzip
      zip
      xdg-utils
      binutils
      gparted
      efibootmgr

      # User Programs
      neovim
      discord
      helix
      fish
      eza
      obsidian
      calibre
      mullvad-vpn
      steam
      spotify
      qbittorrent
      alacritty
      anki
      mpv
      du-dust
      fzf
      ripgrep
      tealdeer
      bottom
      gping
      procs
      zoxide
      zathura
      most
      bat
      zellij
      nyxt
      pandoc
      tor-browser
      libsForQt5.konversation
      neofetch
      chromium
      foliate
      youtube-dl
      blender
      wl-clipboard
      home-manager # standalone tool for managing HM config
      focuswriter
      libreoffice
      uxn
      openmw
      portmod
      image-roll
      jrnl

      # Art Tools
      krita
      aseprite
      
      # Dev Tools
      git
      nim2
      # nim2Packages.nimble
      godot_4
      love
      rustc
      cargo
      libgcc
      gcc
      # trenchbroom
      docker
      python3
      lua
      lua-language-server
      ruby

      # Windows Stuff
      wineWowPackages.stable
      winetricks

      # Build Tools
      cmake
      gnumake

      # Network Tools
      httpie
      wireshark
      tcpdump
      socat
      wget
      curl
      dogdns

      # Hacker Tools
      nmap
      ffuf
      feroxbuster
      burpsuite
      hashcat
      john
      metasploit
      sqlmap
      aircrack-ng
      wifite2
      thc-hydra
      imhex
    
    ];

    sessionVariables = {
      EDITOR = "hx";
      TERMINAL = "alacritty";
      PAGER = "most";
    };

  };
}
