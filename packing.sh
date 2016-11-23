#!/bin/bash

set -eu

mkdir -p mlib

echo "Creating module de.nordakademie as a jar"
jar --create --file mlib/de.nordakademie@1.0.jar \
	--module-version 1.0 -C mods/de.nordakademie .

echo "Creating module de.nordakademie.impl1 as a jar"
jar --create --file mlib/de.nordakademie.impl1@1.0.jar \
	--module-version 1.0 -C mods/de.nordakademie.impl1 .

echo "Creating module de.nordakademie.impl2 as a jar"
jar --create --file mlib/de.nordakademie.impl2@1.0.jar \
	--module-version 1.0 -C mods/de.nordakademie.impl2 .

echo
echo "Creating module com.greetings as a jar"
jar --create --file mlib/de.core.jar \
	--main-class=de.core.Main -C mods/de.core .

tree mlib

echo
echo "Printing module description for de.nordakademie"
jar --print-module-descriptor --file=mlib/de.nordakademie@1.0.jar

echo
echo "Printing module description for de.nordakademie.impl1"
jar --print-module-descriptor --file=mlib/de.nordakademie.impl1@1.0.jar

echo
echo "Printing module description for de.nordakademie.impl2"
jar --print-module-descriptor --file=mlib/de.nordakademie.impl2@1.0.jar

echo
echo "Printing module description for com.greetings"
jar --print-module-descriptor --file=mlib/de.core.jar
