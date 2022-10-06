let
  reflex-platform = import ./reflex-platform { };
  callCabal2nix = reflex-platform.ghc.callCabal2nix;
  overrideCabal = reflex-platform.overrideCabal;
  # Only build the given executable target
  buildOnlyExecutable = target: drv: overrideCabal drv {
    buildTarget = target;
    isExecutable = true;
  };
in
{
  tempConverter = callCabal2nix "tempConverter" ./. { };
}