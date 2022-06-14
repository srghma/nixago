{ pkgs, lib }:
configData:
{
  inherit configData;
  format = "yaml";
  output = ".github/settings.yml";
  hook.mode = "copy";
  engine = lib.engines.cue {
    path = ./templates;
  };
}
