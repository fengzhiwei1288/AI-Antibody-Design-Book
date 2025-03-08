#!/bin/bash

# Specify the directory containing your PDB files
pdb_directory="Aug12_test"

# Create a new folder for the converted CIF files
output_directory="Aug12_Converted_CIF"
mkdir -p "$output_directory"

# Loop through each PDB file in the directory
for pdb_file in "$pdb_directory"/*.pdb; do
    # Extract the filename without the extension
    filename=$(basename -- "$pdb_file")
    filename_no_ext="${filename%.*}"

    # Define the output CIF file name
    cif_file="${output_directory}/${filename_no_ext}.cif"

    # Check if the CIF file already exists
    if [ -f "$cif_file" ]; then
        echo "CIF file $cif_file already exists. Skipping conversion."
    else
        # Convert the PDB file to CIF using maxit
        maxit -input "$pdb_file" -output "$cif_file" -o 1 -log logfile

        # Print a message indicating the conversion status
        echo "Converted $pdb_file to $cif_file"
    fi
done

echo "Conversion completed for all PDB files. CIF files are saved in $output_directory."
