class: CommandLineTool
id: poretools_metadata.cwl
inputs:
- id: files
  doc: The input FAST5 files.
  type: File
  inputBinding:
    position: 0
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: read
  doc: Report read level metadata
  type: boolean
  inputBinding:
    prefix: --read
outputs: []
cwlVersion: v1.1
baseCommand:
- poretools
- metadata
