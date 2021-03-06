{ fetchurl, stdenv, texLive, python, makeWrapper, pkgconfig
, libX11, qt4, enchant #, mythes, boost
}:

stdenv.mkDerivation rec {
  version = "2.0.5.1";
  name = "lyx-${version}";

  src = fetchurl {
    url = "ftp://ftp.lyx.org/pub/lyx/stable/2.0.x/${name}.tar.xz";
    sha256 = "18k9qbz40v6lqmkfcg98wvcv4wi4p36ach1jz3z2b15gbmv2gr9n";
  };

  configureFlags = [
    #"--without-included-boost"
    /*  Boost is a huge dependency from which 1.4 MB of libs would be used.
        Using internal boost stuff only increases executable by around 0.2 MB. */
    #"--without-included-mythes" # such a small library isn't worth a separate package
  ];

  buildInputs = [
    texLive qt4 python makeWrapper pkgconfig
    enchant # mythes boost
  ];

  meta = {
    description = "WYSIWYM frontend for LaTeX, DocBook, etc.";
    homepage = "http://www.lyx.org";
    license = "GPL2";
    maintainers = [ stdenv.lib.maintainers.neznalek ];
    platforms = stdenv.lib.platforms.linux;
  };
}
