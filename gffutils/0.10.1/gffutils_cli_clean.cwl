class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gffutils_cli_clean.cwl
inputs:
- id: filename
  doc: GFF or GTF file to use
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- clean
