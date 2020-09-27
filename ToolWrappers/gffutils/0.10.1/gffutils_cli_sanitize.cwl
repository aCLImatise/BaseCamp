class: CommandLineTool
id: gffutils_cli_sanitize.cwl
inputs:
- id: in_in_memory
  doc: 'Load GFF into memory for processing. (default: True)'
  type: boolean
  inputBinding:
    prefix: --in-memory
- id: in_in_place
  doc: "Sanitize file in-place: overwrites current file with sanitized\nversion. (default:\
    \ False)\n"
  type: boolean
  inputBinding:
    prefix: --in-place
- id: in_filename
  doc: GFF or GTF file to use (or GFF database.)
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- sanitize
