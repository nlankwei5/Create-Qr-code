#!/bin/bash

# Check if input file is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file="$1"

# Create a directory to store QR codes
mkdir -p qr_codes

# Generate QR codes for each URL in the input file
while IFS= read -r url; do
    filename="qr_codes/$(basename "$url").png"
    qrencode -o "$filename" "$url"
    echo "Generated QR code for $url"
done < "$input_file"

echo "QR codes saved in 'qr_codes' directory."
