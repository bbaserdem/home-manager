{ config, lib, pkgs, ... }:

with lib;

{
  config = {
    programs.starship = {
      enable = true;

      presets = [ "no-nerd-font" ];
    };

    test.stubs.starship = { };

    nmt.script = ''
      assertFileContent \
        home-files/.config/starship.toml \
        ${./settings-from-preset-expected.toml}
    '';
  };
}
