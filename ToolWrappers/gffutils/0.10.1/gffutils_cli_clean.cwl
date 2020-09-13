class: CommandLineTool
id: ../../../gffutils_cli_clean.cwl
inputs:
- id: in_filename
  doc: GFF or GTF file to use
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
- clean
