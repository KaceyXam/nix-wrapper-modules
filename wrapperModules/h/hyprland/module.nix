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
      default = {};
      type = lib,types.submodule {
        freeformType = lib.types.attrs;
        options = {
          animations = lib.mkOption {
            default = {};
            description = "Animation settings";
            type = lib.types.submodule {
              freeformType = lib.types.attrs;
              options = {
                bezier = lib.mkOption {
                  default = [];
                  type = lib.types.listOf lib.types.str;
                  descripton = "List of bezier curves for animations";
                };
                animation = lib.mkOption {
                  default = [];
                  type = lib.types.listOf lib.types.str;
                  description = "Animation timings and curves";
                };
              };
            };
          };
        };
      };
    };
  };
}
