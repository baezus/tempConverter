let
  platform = import ./reflex-platform {};
  pkgs = platform.nixpkgs;
in 
  pkgs.mkShell {
    name = "tempConverter";
    buildInputs = [
        platform.ghc.ghc 
        pkgs.ghcid 
        pkgs.cabal-install 
        platform.ghc.markdown-unlit 
    ];
    inputsFrom = [
        (import ./.).tempConverter.env 
    ];
  }