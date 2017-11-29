#!/bin/bash

input2="features/test.feature"
input="inputFiles/en_us_links.txt"

rm -rf tmp/*
touch tmp/tmp

while IFS= read -r url
do

  # strip path from url
  path=${url##*io/}
  path=$(echo $path | sed -e 's/\//\\\//g')
 
  newFilename=${url##*products/}

  if [ $newFilename == "https://live-igcommerce.pantheonsite.io/en-us/products" ]; then
  	tpath="products"

  else
    tpath=$(echo $newFilename | sed -e 's/\//-/g')
    #echo $tpath
  fi
  #read base feature and write new file
  
  touch tmp/"${tpath}.feature"
  #ls tmp 
  #find Given I am on "en-us/products
  #sed 's/source/target' file > output; mv file output;
  sed 's/Given I am on ".*/Given I am on '"\"$path\""'/g' features/test.feature > tmp/tmp; mv tmp/tmp tmp/${tpath}.feature
done < "$input"

  #cat tmp/products.feature

