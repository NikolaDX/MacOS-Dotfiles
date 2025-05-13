{ pkgs, config, self, ... }: {
  nixpkgs.config.allowUnfree = true;
  
  # Import all the module files
  imports = [
    ./packages.nix
    ./homebrew.nix
    ./fonts.nix
    ./system-defaults.nix
  ];

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";
  
  # Set Git commit hash for darwin-version (if self is defined)
  system.configurationRevision = if builtins.hasAttr "rev" self
                                  then self.rev or self.dirtyRev or null
                                  else null;
  
  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 6;
  
  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "aarch64-darwin";
}
