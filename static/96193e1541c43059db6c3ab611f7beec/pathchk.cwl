class: CommandLineTool
id: pathchk.cwl
inputs:
- id: p
  doc: check for most POSIX systems
  type: boolean
  inputBinding:
    prefix: -p
- id: p
  doc: check for empty names and leading "-"
  type: boolean
  inputBinding:
    prefix: -P
- id: portability
  doc: check for all POSIX systems (equivalent to -p -P)
  type: boolean
  inputBinding:
    prefix: --portability
outputs: []
cwlVersion: v1.1
baseCommand:
- pathchk
