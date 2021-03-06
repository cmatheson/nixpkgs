{ cabal, mtl }:

cabal.mkDerivation (self: {
  pname = "brainfuck";
  version = "0.1";
  sha256 = "0lsw62g4ir8idjjadsdf46p8mqd88mysn0b499bk3x5l5js858z3";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [ mtl ];
  meta = {
    description = "Brainfuck interpreter";
    license = "GPL";
    platforms = self.ghc.meta.platforms;
    maintainers = [
      self.stdenv.lib.maintainers.andres
      self.stdenv.lib.maintainers.simons
    ];
  };
})
