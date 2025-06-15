{ pkgs, ... }: {
  homebrew = {
    enable = true;
    brews = [
      # General
      "mas"

      # Development
      "cocoapods"
      "xcode-build-server"
      "xcbeautify"
      "ruby"
      "jq"
      "ripgrep"
      "pipx"
    ];
    casks = [
      # General
      "ghostty"
      "zen"
      "the-unarchiver"
      "tailscale"
      "logi-options+"
      "macfuse"
      "amethyst"
      "vuescan"

      # Media
      "iina"
      "ultimate-vocal-remover"
      "blackhole-2ch"
      "obs"

      # Development
      "github"
      "sf-symbols"
      "flutter"
      "android-studio"
    ];
    masApps = {
      "Xcode" = 497799835;
      "Lickable Menu Bar" = 6444217677;
    };
    onActivation.cleanup = "zap";
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  };
}
