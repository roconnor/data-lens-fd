{ pkgs ? import <nixpkgs> {}
, hp ? pkgs.haskellPackages
, data-lens ? hp.data-lens
}:

hp.callPackage ({mkDerivation, comonad, mtl, transformers, data-lens}:
 mkDerivation {
  pname = "data-lens-fd";
  version = "2.0.6";
  src = pkgs.lib.sourceFilesBySuffices ./. [".hs" ".cabal" "LICENSE"];
  buildDepends = [ comonad mtl transformers data-lens ];
  license = pkgs.lib.licenses.bsd3;
}) { inherit data-lens; }
