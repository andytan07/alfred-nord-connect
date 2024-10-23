#!/bin/bash

# Define the input directory containing SVG files and the output directory
input_dir="./Workflow/images/flags"
output_dir="./Workflow/images/flags/png"

# Create output directory if it doesn't exist
mkdir -p "$output_dir"

# Loop through each SVG file in the input directory and convert to PNG
for svg_file in "$input_dir"/*.svg; do
    filename=$(basename "$svg_file" .svg)
    inkscape "$svg_file" --export-type="png" --export-filename="$output_dir/$filename.png"
done