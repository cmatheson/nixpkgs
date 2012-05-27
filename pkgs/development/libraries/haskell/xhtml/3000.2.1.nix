{ cabal }:

cabal.mkDerivation (self: {
  pname = "xhtml";
  version = "3000.2.1";
  sha256 = "1n6wgzxbj8xf0wf1il827qidphnffb5vzhwzqlxhh70c2y10f0ik";
  meta = {
    homepage = "https://github.com/haskell/xhtml";
    description = "An XHTML combinator library";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})