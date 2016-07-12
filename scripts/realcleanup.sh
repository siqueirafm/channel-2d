cd ..

cd src
make realclean
cd ..

cd tst
make realclean
cd ..

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
#rm -rf latex
cd ..

cd scripts
