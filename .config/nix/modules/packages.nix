{ pkgs, ... }: {
  # List packages installed in system profile
  environment.systemPackages = with pkgs; [
    # General
    qbittorrent
    raycast
    rclone
    rectangle
    ripgrep
    skhd
    xld
    fastfetch
    kitty

    # Development
    neovim
    nodejs
    python310Full
    vscode
    jq

    # Media
    ffmpeg
    yt-dlp

    # Studying
    anki-bin
  ];
}
