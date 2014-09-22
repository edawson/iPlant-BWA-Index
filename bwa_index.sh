#!/bin/bash

## BWA Path
bwa=./bin/bwa

## Reference Genome (FASTA)
ref=$1

## Outfile basename (file with end with bwt extension)
basename="index"

${bwa} index -p ${basename} ${ref}
