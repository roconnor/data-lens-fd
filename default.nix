{ pkgs ? import <nixpkgs> {}
, hp ? pkgs.haskellPackages
, src ? ./.
, dataLens ? import ../data-lens {inherit pkgs hp;}
}:

hp.cabal.mkDerivation (self: {
  pname = "data-lens-fd";
  version = "2.0.5";
  inherit src;
  buildDepends = [ hp.comonad hp.mtl hp.transformers dataLens ];
})
