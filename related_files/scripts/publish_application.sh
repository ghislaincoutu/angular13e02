#!/bin/bash
function apply_pause() {
  read -p "$*"
}
echo "Publication de l'applications sur le serveur Web local"
apply_pause "Appuyer sur la touche [Retour] pour continuer..."

# Source (so)
so=/home/Exercises/angular-e02/dist/angular-e02
# Destination (de)
de=/var/www/html/d002/angular-e02

rm -r $de/assets
rm $de/3rdparty*.txt
rm $de/favicon.ico
rm $de/index.html
rm $de/main.*.js
rm $de/polyfills.*.js
rm $de/runtime.*.js
rm $de/styles.*.css
cp -R $so/assets $de/assets
cp $so/*.* $de/
sed -i 's/<base href="\/">/<base href="\/d002\/angular-e02\/">/g' $de/index.html
