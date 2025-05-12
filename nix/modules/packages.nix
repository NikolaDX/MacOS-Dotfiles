{ pkgs, ... }: {
  # List packages installed in system profile
  environment.systemPackages = [
    pkgs.neovim
    pkgs.raycast
    pkgs.rectangle
    pkgs.skhd
  ];
}
