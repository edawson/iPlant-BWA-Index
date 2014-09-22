#!/bin/bash
#SBATCH -p development
#SBATCH -t 00:30:00
#SBATCH -n 16
#SBATCH -A iPlant-Collabs 
#SBATCH -J test-BWA
#SBATCH -o test-BWA-index.o%j

inputFa="U00096.2.fas"
output="e_coli"
export path=$PATH:"`pwd`/bin"

##./build.sh
tar xzf bin.tgz
./bin/bwa index -p e_coli_idx -a is ./test/U00096.2.fas

rm -rf ./bin
