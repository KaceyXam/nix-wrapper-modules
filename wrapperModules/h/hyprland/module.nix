{
  config,
  pkgs,
  wlib,
  lib,
  ...
}: {
  imports = [ wlib.modules.default ];

  options = {
    settings = lib.mkOption {
      description = ''
        Hyprland configuration settings.
      '';
    };
  };
}
