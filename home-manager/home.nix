{
  home.stateVersion = "23.05";

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  home = {
    username = "fulano";
    homeDirectory = "/home/fulano";
  };

  programs.neovim.enable = true;
  programs.home-manager.enable = true;
  programs.git.enable = true;
  systemd.user.startServices = "sd-switch";

  programs.alacritty.enable = true;

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      bind = [
        "SUPER,Return,exec,alacritty"

        "SUPERSHIFT,q,killactive"
        "SUPERSHIFT,e,exit"
        "SUPERSHIFT,f,fullscreen"

        "SUPER,h,movefocus,left"
        "SUPER,j,movefocus,down"
        "SUPER,k,movefocus,up"
        "SUPER,l,movefocus,right"
        "SUPERSHIFT,h,swapwindow,left"
        "SUPERSHIFT,j,swapwindow,down"
        "SUPERSHIFT,k,swapwindow,up"
        "SUPERSHIFT,l,swapwindow,right"

        "SUPER,1,workspace,1"
        "SUPER,2,workspace,2"
        "SUPER,3,workspace,3"
        "SUPER,4,workspace,4"
        "SUPER,5,workspace,5"
        "SUPER,6,workspace,6"
        "SUPER,7,workspace,7"
        "SUPER,8,workspace,8"
        "SUPER,9,workspace,9"
        "SUPER,0,workspace,0"
        "SUPERSHIFT,1,movetoworkspace,1"
        "SUPERSHIFT,2,movetoworkspace,2"
        "SUPERSHIFT,3,movetoworkspace,3"
        "SUPERSHIFT,4,movetoworkspace,4"
        "SUPERSHIFT,5,movetoworkspace,5"
        "SUPERSHIFT,6,movetoworkspace,6"
        "SUPERSHIFT,7,movetoworkspace,7"
        "SUPERSHIFT,8,movetoworkspace,8"
        "SUPERSHIFT,9,movetoworkspace,9"
        "SUPERSHIFT,0,movetoworkspace,0"
      ];
    };
  };
}
