class: CommandLineTool
id: ../../../checkdb.cwl
inputs:
- id: verbose_reporting
  doc: verbose reporting
  type: boolean
  inputBinding:
    prefix: -V
- id: write_sha_checksum
  doc: do not write .check (SHA1 checksum) file
  type: boolean
  inputBinding:
    prefix: -N
- id: fast_a_dot_database
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- checkdb
