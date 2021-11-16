# get current location
$DOCDIR = (Resolve-Path .\).Path
$BUILD_DIR = "${DOCDIR}\build"

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

if(!(Test-Path -Path ${BUILD_DIR})){
  New-Item -ItemType directory -Path ${BUILD_DIR}
}

cd ${BUILD_DIR}

cmake ..
cmake --build . --config Release
