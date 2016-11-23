#!/bin/bash

set -eu

echo "Removing any existing executable directory"
rm -rf executable

echo
echo "Create an executable version of the de.core module"
jlink --module-path /usr/lib/jvm/java-9-jdk/jmods:mlib --add-modules de.core,de.nordakademie.impl1,de.nordakademie.impl2 --output executable

tree executable
