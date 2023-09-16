{ inputs, outputs, ... }: {
  system.stateVersion = "23.05";

  imports = [
    ./hardware-configuration.nix
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager = {
    extraSpecialArgs = { inherit inputs outputs; };
    users.fulano = import ../home-manager/home.nix;
  };

  networking.hostName = "nixos";

  users.users = {
    fulano = {
      initialPassword = "correcthorsebatterystaple";
      isNormalUser = true;
      extraGroups = ["wheel"];
    };
  };
}
