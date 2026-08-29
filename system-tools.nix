{ pkgs, ... }:

{
  # Global system packages
  environment.systemPackages = with pkgs; [
    xwayland-satellite  # Wayland extension
    docker-compose      # Container orchestration
  ];

  # Docker daemon authorization requirement
  virtualisation.docker.enable = true;
}


