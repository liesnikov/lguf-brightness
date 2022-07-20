{ stdenv, cmake, gcc, libusb1, ncurses, static ? false }:
stdenv.mkDerivation {
  name = "lguf-brightness";
  version = "1.0";
  src = ./.;

  nativeBuildInputs = [ cmake gcc ];
  buildInputs = [ libusb1 ncurses ];

  #  cmakeFlags = ["-DBUILD_STATIC=1"];
  cmakeFlags = [];

  makeTarget = "lguf-brightness";
  enableParallelBuilding = true;

  doCheck = false;
}
