{ mkDerivation, aeson, attoparsec, base, blaze, bytestring, lucid
, servant, servant-server, stdenv, time, wai, warp
}:
mkDerivation {
  pname = "web-api";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson attoparsec base blaze bytestring lucid servant servant-server
    time wai warp
  ];
  description = "Web API";
  license = stdenv.lib.licenses.bsd3;
}
