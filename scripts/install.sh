cd ..
cd src
make all
make lib
make clean
cd ..

cd tst
make
make clean
cd ..

cd doc
doxygen config.dox
cd ..

cd scripts
