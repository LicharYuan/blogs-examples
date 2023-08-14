Pack your cmake project.

```
cmake ..
make -j4
cpack -G DEB
# check deb
cd ../_packages
dpkg-deb -R ./test-cmake_0.1.1_amd64.deb ./package
tree ./package
sudo dpkg -i test-cmake_0.1.1_amd64.deb
```