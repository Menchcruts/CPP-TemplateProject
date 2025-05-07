@echo off

pushd ..
Vendor\Premake\Windows\premake5.exe --file=premake5.lua cmake
mkdir cmake-build
pushd cmake-build
cmake ../.
popd
popd
pause