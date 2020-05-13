class: CommandLineTool
id: checkdb.cwl
inputs:
- id: v
  doc: verbose reporting
  type: boolean
  inputBinding:
    prefix: -V
- id: n
  doc: do not write .check (SHA1 checksum) file
  type: boolean
  inputBinding:
    prefix: -N
outputs: []
cwlVersion: v1.1
baseCommand:
- checkdb
