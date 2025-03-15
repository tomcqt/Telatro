echo "Building..."
mkdir src
cp -rv engine src
cp -rv functions src
cp -rv localization src
cp -rv resources src
rm -rv src/resources/textures_preresize
cp -rv *.lua src
cp -rv version.jkr src
echo "please wait. now compiling to js."
npx love.js src bin -t Telatro -m 1149289489 -s ASSERTIONS=1 -c -v
cp -fvr mod/* bin
rm -rv src
echo "Built!"
