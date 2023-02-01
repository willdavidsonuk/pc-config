{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "wd";
  home.homeDirectory = "/home/wd";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # PROGRAMS
  programs = {
    # xmobar.enable = true;
    neovim = {
      enable = true; 
      defaultEditor = true;
    };
    firefox.enable = true;
    kitty = {
      enable = true;
      theme = "Everforest Dark Hard";
    };
    rofi.enable = true;
    vscode = {
      enable = true;
      extensions = [
        pkgs.vscode-extensions.scalameta.metals
        pkgs.vscode-extensions.scala-lang.scala
      ];
    };
    sbt.enable = true;
    # mbsync.enable = true;
    # msmtp.enable = true;
    thunderbird = {
      enable = true;
      profiles.davidsondigital = {
        isDefault = true;
      };
    };
  };

  # PACKAGES
  home.packages = with pkgs; [
    jetbrains.idea-community
  ];

  # EMAIL
  # accounts.email = {
  #   accounts.davidsondigital = {
  #     flavor = "outlook.office365.com";
  #     address = "will@davidsondigital.uk";
  #     # mbsync = {
  #     #   enable = true;
  #     #   create = "maildir";
  #     # };
  #     # msmtp.enable = true;
  #     primary = true;
  #     realName = "Will Davidson";
  #     signature = {
  #       text = ''
  #         Will Davidson
  #       '';
  #       showSignature = "append";
  #     };
  #     userName = "will@davidsondigital.uk";
  #     thunderbird.enable = true;
  #   };
  # };
}

