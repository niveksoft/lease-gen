#!/bin/bash

# Usage: ./generate-lease.sh
# Produces: lease-agreement.md, .pdf, .html, .docx

# 1. Source variables and substitute into markdown
source lease-variables.env
envsubst < lease-template.md > lease-agreement.md
envsubst < basement-lease-template.md > basement-lease-agreement.md
envsubst < pet-addendum-template.md > pet-addendum.md
envsubst < security-deposit-template.md > security-deposit.md

# 2. Convert to PDF
pandoc lease-agreement.md -o lease-agreement.pdf
pandoc basement-lease-agreement.md -o basement-lease-agreement.pdf
pandoc pet-addendum.md -o pet-addendum.pdf
pandoc security-deposit.md -o security-deposit.pdf

# 3. Convert to HTML
pandoc lease-agreement.md -o lease-agreement.html
pandoc basement-lease-agreement.md -o basement-lease-agreement.html
pandoc pet-addendum.md -o pet-addendum.html
pandoc security-deposit.md -o security-deposit.html

# 4. Convert to DOCX
pandoc lease-agreement.md -o lease-agreement.docx
pandoc basement-lease-agreement.md -o basement-lease-agreement.docx
pandoc pet-addendum.md -o pet-addendum.docx
pandoc security-deposit.md -o security-deposit.docx

echo "Generated: lease-agreement.md, .pdf, .html, .docx"
echo "Generated: basement-lease-agreement.md, .pdf, .html, .docx"
echo "Generated: pet-addendum.md, .pdf, .html, .docx"
echo "Generated: security-deposit.md, .pdf, .html, .docx"
