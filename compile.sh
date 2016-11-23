#!/bin/bash

set -eu

DE_CORE_FOLDER="mods/de.core"
DE_NORDAKADEMIE_FOLDER="mods/de.nordakademie"
DE_NORDAKADEMIE_IMPL1_FOLDER="mods/de.nordakademie.impl1"
DE_NORDAKADEMIE_IMPL2_FOLDER="mods/de.nordakademie.impl2"

echo "Creating folders $DE_CORE_FOLDER,$DE_NORDAKADEMIE_FOLDER and $DE_NORDAKADEMIE_IMPL1_FOLDER if they do not exists."
mkdir -p $DE_CORE_FOLDER $DE_NORDAKADEMIE_FOLDER $DE_NORDAKADEMIE_IMPL1_FOLDER

echo "Compiling modules in $DE_NORDAKADEMIE_FOLDER"
javac -d $DE_NORDAKADEMIE_FOLDER \
        src/de.nordakademie/module-info.java src/de.nordakademie/de/nordakademie/Message.java
tree -fl $DE_NORDAKADEMIE_FOLDER

echo "Compiling modules in $DE_NORDAKADEMIE_IMPL1_FOLDER"
javac --module-path mods -d $DE_NORDAKADEMIE_IMPL1_FOLDER \
        src/de.nordakademie.impl1/module-info.java src/de.nordakademie.impl1/de/nordakademie/impl1/MessageImpl.java

tree -fl $DE_NORDAKADEMIE_IMPL1_FOLDER

echo "Compiling modules in $DE_NORDAKADEMIE_IMPL2_FOLDER"
javac --module-path mods -d $DE_NORDAKADEMIE_IMPL2_FOLDER \
        src/de.nordakademie.impl2/module-info.java src/de.nordakademie.impl2/de/nordakademie/impl2/MessageImpl.java

tree -fl $DE_NORDAKADEMIE_IMPL2_FOLDER

echo "Compiling modules in $DE_CORE_FOLDER"
javac --module-path mods -d $DE_CORE_FOLDER \
        src/de.core/module-info.java src/de.core/de/core/Main.java

tree -fl $DE_CORE_FOLDER
