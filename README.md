# Lease Agreement Generator

This repository contains templates and scripts to generate lease agreements in multiple formats using environment variable substitution and Pandoc.

## Files

- **lease-template.md**: Markdown template with `${VARIABLE}` placeholders for all lease terms.
- **lease-variables.env**: Shell script exporting all variables (landlord, tenant, dates, amounts, etc.). Edit this file for each new lease.
- **generate-lease-all.sh**: Script that generates `lease-agreement.md`, PDF, HTML, and DOCX in one go.

## Usage

1. **Set permissions**:
   ```bash
   chmod +x generate-lease-all.sh
   ```

2. **Edit Variables**:
   Open `lease-variables.env` and update the values.

3. **Generate Documents**:
   - All formats (Markdown, PDF, HTML, DOCX):
     ```bash
     ./generate-lease-all.sh
     ```

## Requirements

- **envsubst** (part of GNU `gettext`) for variable substitution.
- **Pandoc** for format conversions (Markdown → PDF/HTML/DOCX).
- **bash** shell

## License

MIT License. Feel free to use and modify.
