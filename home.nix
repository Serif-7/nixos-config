
{ config, pkgs, ... }:

{
  imports = [
    .configs//helix.nix
    .configs/fish.nix
  ];

  #set shell to fish
  users.users.daniel.shell = pkgs.fish;

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
      

      # Dev Tools
      git
      nim2
      godot_4
      love
      rustc
      cargo
      gcc
      trenchbroom

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