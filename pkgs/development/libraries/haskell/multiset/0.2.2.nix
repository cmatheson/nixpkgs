{ cabal }:

cabal.mkDerivation (self: {
  pname = "multiset";
  version = "0.2.2";
  sha256 = "1g14c1zm4rdc8nxvb69k98h542wi24q2lpba1gpqjqspk4d0sjmn";
  meta = {
    description = "The Data.MultiSet container type";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [
      self.stdenv.lib.maintainers.andres
      self.stdenv.lib.maintainers.simons
    ];
  };
})
