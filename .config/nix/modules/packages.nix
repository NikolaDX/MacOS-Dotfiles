{ pkgs, ... }: {
  # List packages installed in system profile
  environment.systemPackages = [
    pkgs.neovim
    pkgs.nodejs
    pkgs.raycast
    pkgs.rectangle
    pkgs.ripgrep
    pkgs.skhd
  ];
}
