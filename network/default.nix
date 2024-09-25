{ lib, ... }:
# networking configuration
{
  imports = [
    ./avahi.nix
    ./spotify.nix
    ./syncthing.nix
    ./tailscale.nix
    ./moonlight.nix
  ];

  networking.networkmanager = {
    enable = true;
    dns = "systemd-resolved";
    wifi.powersave = true;
  };

  services = {
    openssh = {
      enable = true;
      settings.UseDns = true;
    };

    # DNS resolver
    resolved.enable = true;
  };

  # Don't wait for network startup
  systemd.services.NetworkManager-wait-online.enable = lib.mkForce false;
}
