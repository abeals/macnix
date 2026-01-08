{pkgs, ...}: {
  nix.settings.experimental-features = ["nix-command" "flakes"];

  nixpkgs.config.allowUnfree = true;

  nix.package = pkgs.nix;
  programs.nix-index.enable = true;

  # this one is unfortunately system-dependent
  ids.gids.nixbld = 30000;
}
