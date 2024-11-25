# Bulk URL to QR Code Generator

## Overview
A Bash script that generates QR codes for multiple URLs from an input file, perfect for batch QR code creation.

## Prerequisites
- `qrencode` package (install via `sudo apt-get install qrencode` on Ubuntu/Debian)
- Bash shell
- Input text file with URLs (one per line)

## Usage
1. Ensure the script is executable:
   ```bash
   chmod +x generate_qr_codes.sh
   ```

2. Create a text file with URLs (e.g., `urls.txt`)

3. Run the script:
   ```bash
   ./generate_qr_codes.sh urls.txt
   ```

## Features
- Generates PNG QR codes for multiple URLs
- Creates a dedicated `qr_codes` directory
- Simple, one-command batch processing

## Example Input File
```
https://www.youtube.com/channel/example1
https://www.youtube.com/channel/example2
https://www.youtube.com/channel/example3
```

## Output
- QR code images saved in `qr_codes` directory
- Filename based on the URL
