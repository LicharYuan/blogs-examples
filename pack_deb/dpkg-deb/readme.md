```
g++ hello-world.cc -o hello-world
vim hello-world_0.1-1_all/DEBIAN/control # update configure
mkdir -p  hello-world_0.1-1_all/usr/bin
cp hello-world/hello-world hello-world_0.1-1_all/usr/bin/
dpkg-deb --build  hello-world_0.1-1_all
sudo dpkg -i hello-world_0.1-1_all.deb
```