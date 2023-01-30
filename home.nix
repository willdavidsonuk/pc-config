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

  # Xmobar
  # programs.xmobar = {
  #   enable = true;
  # };

  # Neovim
  programs.neovim = {
    enable = true; 
    defaultEditor = true;
  };

  # Firefox
  programs.firefox = {
    enable = true;
  };

  # Kitty
  programs.kitty = {
    enable = true;
    theme = "Everforest Dark Hard";
  };

  # Rofi
  programs.rofi = {
    enable = true;
  };
}

