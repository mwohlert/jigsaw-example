#!/bin/bash

set -eu
./compile.sh
./packing.sh
./link.sh
./run.sh
