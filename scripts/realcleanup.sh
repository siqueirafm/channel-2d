cd ..

cd src
make realclean
cd ..

cd tst
make realclean
cd ..

rm -rf bin
rm -rf lib

cd data
cd lineprogs
rm -rf *.pl
cd ..
cd spcurves
rm -rf *.spl
cd ..
cd ..

cd doc
rm -rf *.log
rm -rf html
cd ..

cd scripts
