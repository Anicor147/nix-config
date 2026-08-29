{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # --- Web & Social ---
    firefox
    discord-ptb

    # --- Productivity & Notes ---
    obsidian
    neovim
    kitty

    # --- Gaming & Creative ---
    heroic
    unityhub
    
    # --- File Manager & Assets ---
    kdePackages.dolphin
    kdePackages.qtsvg
  ];
}



