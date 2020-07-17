class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pathchk.cwl
inputs:
- id: check_most_posix
  doc: check for most POSIX systems
  type: boolean
  inputBinding:
    prefix: -p
- id: check_empty_leading
  doc: check for empty names and leading "-"
  type: boolean
  inputBinding:
    prefix: -P
- id: portability
  doc: check for all POSIX systems (equivalent to -p -P)
  type: boolean
  inputBinding:
    prefix: --portability
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pathchk
