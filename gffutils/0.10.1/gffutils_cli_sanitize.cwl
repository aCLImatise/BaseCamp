class: CommandLineTool
id: gffutils_cli_sanitize.cwl
inputs:
- id: filename
  doc: GFF or GTF file to use (or GFF database.)
  type: File
  inputBinding:
    position: 0
- id: ensures
  doc: start > end in all entries
  type: string
  inputBinding:
    prefix: '- Ensures'
- id: adds
  doc: entry id (eid) to each entry to make files grep-able
  type: string
  inputBinding:
    prefix: '- Adds'
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
outputs: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- sanitize
