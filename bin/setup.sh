
# init submodules
git submodule init
git submodule update

# setup submodules
cd external/jacker && npm install
cd -

# write development version of app.js
./bin/jacker -b -o app/app.js
# bundle coffeescript
cat external/coffee-script/extras/coffee-script.js >> app/app.js
# app entry point
echo '\nrequire("./src/main.js");' >> app/app.js
