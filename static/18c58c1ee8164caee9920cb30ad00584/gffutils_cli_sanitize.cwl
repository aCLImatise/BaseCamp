class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gffutils_cli_sanitize.cwl
inputs:
- id: in_memory
  doc: 'Load GFF into memory for processing. (default: True)'
  type: boolean
  inputBinding:
    prefix: --in-memory
- id: in_place
  doc: 'Sanitize file in-place: overwrites current file with sanitized version. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --in-place
- id: filename
  doc: GFF or GTF file to use (or GFF database.)
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- sanitize
