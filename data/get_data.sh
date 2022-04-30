#!/bin/sh


load_file () {
    address="$1"
    outputFile="$2"

    if [ -f "$outputFile" ]
    then
        echo "$outputFile already exist and will be replaced"
        echo
        rm "$outputFile"
    fi

    wget "$address" --output-document="$outputFile"

    return 0
}

load_file 'https://www.data.gouv.fr/fr/datasets/r/fdf5afbf-ed3c-4c54-a4f0-3581c8a1eca4' 'tableaux-4001-ts.xlsx'
load_file 'https://www.data.gouv.fr/fr/datasets/r/65b3e15a-735c-4b68-aff3-cc25f74eb1c1' 'tableaux-4001-pn.xlsx'
load_file 'https://www.data.gouv.fr/fr/datasets/r/2cfdabbb-bfbe-4e39-8f96-ccf7a6b0b572' 'tableaux-4001-gn.xlsx'
