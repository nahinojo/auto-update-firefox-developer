#!/bin/bash

echo "Downloading latest version of Firefox Developer Edition..."

latest_url="https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US"
target_name="firefox-developer-latest"
file_name="${target_name}_$(date +%Y%m%d%H%M%S).tar"
fde_path="/opt/firefox-developer"

curl -o "./$file_name" -L "$latest_url"

echo "Extracting update..."

tar -xf "./$file_name"

echo "Migrating update..."

cp -fR ./firefox/* "$fde_path"

echo "Cleaning up..."

rm -r ./firefox

rm ./firefox-developer-latest*

echo 'Finished executing update'