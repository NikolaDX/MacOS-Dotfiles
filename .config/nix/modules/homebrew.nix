{ pkgs, ... }: {
  homebrew = {
    enable = true;
    brews = [
      "mas"
    ];
    casks = [
      "github"
      "ghostty"
      "zen"
      "iina"
      "the-unarchiver"
      "remnote"
      "tailscale"
      "logi-options+"
    ];
    masApps = {
      "Xcode" = 497799835;
    };
    onActivation.cleanup = "zap";
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  };
}
