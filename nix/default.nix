{ config ? { }, overlays ? [ ] }:

let
  defaultOverlays = [
    (import ./haskell-overlay.nix)
    (import ./python-overlay.nix)
  ];
  overlaysAll = defaultOverlays ++ overlays;
in
import ./nixpkgs.nix { config = { allowUnsupportedSystem = true; }; overlays = overlaysAll; }
