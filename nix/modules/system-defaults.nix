{ pkgs, ... }: {
  system.defaults = {
    dock.orientation = "left";
    dock.persistent-apps = [
      "/Applications/Zen.app"
      "/Applications/Ghostty.app"
      "/System/Applications/Mail.app"
    ];
    dock.show-recents = false;
    dock.tilesize = 58;
    dock.largesize = 64;
    dock.mineffect = "scale";
    dock.magnification = true;
    trackpad.Clicking = true;
    finder.ShowPathbar = true;
    finder.ShowStatusBar = true;
    finder.FXPreferredViewStyle = "clmv";
    finder.AppleShowAllExtensions = true;
    controlcenter.BatteryShowPercentage = true;
    WindowManager.EnableStandardClickToShowDesktop = false;
  };
}
