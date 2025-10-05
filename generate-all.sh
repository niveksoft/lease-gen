#!/bin/bash

# Usage: ./generate-lease.sh
# Produces: lease-agreement.md, .pdf, .html, .docx

# 1. Source variables and substitute into markdown
source lease-variables.env
envsubst < lease-template.md > lease-agreement.md

# 2. Convert to PDF
pandoc lease-agreement.md -o lease-agreement.pdf

# 3. Convert to HTML
pandoc lease-agreement.md -o lease-agreement.html

# 4. Convert to DOCX
pandoc lease-agreement.md -o lease-agreement.docx

echo "Generated: lease-agreement.md, .pdf, .html, .docx"
